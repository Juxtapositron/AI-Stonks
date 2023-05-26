class School{
  Bot[] botArray;
  
  
  public School(){
    this.botArray = new Bot[100];
    float[][] x = input((int)random(90,1160));
    for(int i =0; i< botArray.length; i++){
      botArray[i] = new Bot(x, 100000);
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
  
  
  
}
