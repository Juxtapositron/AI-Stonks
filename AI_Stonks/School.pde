class School{
  Bot[] botArray;
  
  public School(){
    this.botArray = new Bot[100];
    float[][] x = input((int)random(90,1160));
    float[][] half = new float[12][12];
    for(int i =0; i <12; i++){
      for(int j =0; j<12; j++){
        half[i][j] = 0.5;
      }
    }
    Matrix halfMatrix = new Matrix(half);
    for(int i =0; i< botArray.length; i++){
      Matrix random = Matrix.random1(12,12);
      random.plus(halfMatrix);
      botArray[i] = new Bot(x, 100000, random);
    }
    
  }
  
  public float[][] input(int startMonth){
    float[][]result =new float[4][12];
    for(int i =0; i< 12; i++){
      result[0][i] = AAPLPrices[i];
      result[1][i] = GSPrices[i];
      result[2][i] = XOMPrices[i];
      result[3][i] = VZPrices[i];
    }
    return result;
  }
  public void run(){
    School currentSchool = new School();
    for(int i =0; i<100; i++){
      Bot currentBot= currentSchool.botArray[i];
      Matrix stocks = new Matrix(currentBot.stockPrices);
      Matrix newStock = stocks.times(currentBot.randomMatrix);
      Matrix decision = Matrix.decision(newStock);
      currentBot.decisions[0] = decision.matrixGet(0,0);
      currentBot.decisions[1] = decision.matrixGet(1,0);
      currentBot.decisions[2] = decision.matrixGet(2,0);
      currentBot.decisions[3] = decision.matrixGet(3,0);
      
      
    }
  }
  
  
}
