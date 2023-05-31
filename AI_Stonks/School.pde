class School{
  Bot[] botArray;
  float[] returnsArray;
  Matrix best;
  int month;
  
  public School(){
    month =genINT();
    botArray = new Bot[100];
    float[][] x = input(month);
    float[][] half = new float[12][12];
    for(int i =0; i <12; i++){
        half[i][i] = 0.5;
    }
    Matrix halfMatrix = new Matrix(half);
    for(int i =0; i< botArray.length; i++){
      Matrix random = Matrix.random1(12,12);
      random = random.plus(halfMatrix);
      botArray[i] = new Bot(x, 100000, random);
    }
    returnsArray = new float[100];
  }
  
  public School(Matrix bestRandom){
    month =genINT();
    botArray = new Bot[100];
    float[][] x = input(month);
    float[][] half = new float[12][12];
    for(int i =0; i <12; i++){
        half[i][i] = 0.5;
    }
    Matrix halfMatrix = new Matrix(half);
    for(int i =1; i< botArray.length; i++){
      Matrix random = Matrix.random1(12,12);
      random = random.plus(halfMatrix);
      random = random.times(bestRandom);
      botArray[i] = new Bot(x, 100000, random);
    }
    botArray[0] = new Bot(x, 100000, bestRandom);
    returnsArray = new float[100];
  }
  public int genINT(){
  return (int)Math.random()*1070 +90;
  }
  
  public float[][] input(int startMonth){
    float[][]result =new float[4][12];
    for(int i =0; i< 012; i++){
      result[0][i] = AAPLPrices[startMonth+i];
      result[1][i] = GSPrices[startMonth+i];
      result[2][i] = XOMPrices[startMonth+i];
      result[3][i] = VZPrices[startMonth+i];
    }
    return result;
  }
  
  
  
}
