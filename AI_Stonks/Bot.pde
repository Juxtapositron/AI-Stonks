class Bot{
  float[][] stockPrices;
  float[][] weightMatrix;
  float money;
  float totalValue;
  float[] stocksHeld;
  
  public Bot(float[][] input, float moola){
    stockPrices = input;
    money = moola;
    stocksHeld = new float[4];
    totalValue = moola;
    
  }
  
  public void updateStockPricesMonthly(float currentPriceAAPL,float currentPriceGS, float currentPriceXOM, float currentPriceVZ){
    for (int i = 0; i<stockPrices[0].length -1; i++){
      for (int j = 0; j < stockPrices.length; j++){
        stockPrices[j][i] = stockPrices[j][i+1];
      }
    }
    stockPrices[0][11] = currentPriceAAPL;
    stockPrices[1][11] = currentPriceGS;
    stockPrices[2][11] = currentPriceXOM;
    stockPrices[3][11] = currentPriceVZ;
  }
  public void totalValue(){
    totalValue = money + stocksHeld[0]*stockPrices[0][11] + stocksHeld[1]*stockPrices[1][11] + stocksHeld[2]*stockPrices[2][11] + stocksHeld[3]*stockPrices[3][11];
  }
  
}
