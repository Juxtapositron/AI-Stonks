class Bot{
  float[][] stockPrices;
  float[][] calcRate;
  float[][] weightMatrix;
  float[][] buySellMatrix;
  
  public Bot(float[][] input){
    stockPrices = input;
    
  }
  public void updateStockPricesMonthly(float currentPriceAAPL,float currentPriceGS, float currentPriceXOM, float currentPriceVZ){
    for (int i = stockPrices[0].length -1; i>0; i--){
      for (int j = 0; j < stockPrices.length; j++{
        stockPrices[j][i] = stockPrices[j][i-1]
      }
    }
    stockPrices[0][0] = currentPriceAAPL;
    stockPrices[1][0] = currentPriceGS;
    stockPrices[2][0] = currentPriceXOM;
    stockPrices[3][0] = currentPriceVZ;
  }
  
}
