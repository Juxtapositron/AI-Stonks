class Bot{
  float[][] stockPrices;
  float[][] calcRate;
  float[][] weightMatrix;
  float[][] buySellMatrix;
  
  public Bot(float[][] input){
    stockPrices = input;
    
  }
  public void updateStockPricesMonthly(float currentPrice){
    for (int i = stockPrices.length -1; i>0; i--){
      stockPrices[i] = stockPrices[i-1];
    }
    stockPrices[0] = currentPrice;
  }
  
}
