public with sharing class ExchangeRestCallout {
    //.url("https://api.apilayer.com/exchangerates_data/latest?symbols=symbols&base=base")
    //.addHeader("apikey", "EiqhbU8lledxpGj5PYknG7wJZcWikej4")
    @invocableMethod (label= 'Exchange Callout'
                       description = 'Bu method kur değerlerini getirmek için kullnılmaktadır.' 
                       category = 'Exchange Callout')
    public static void getExchangeRate(List<id> exchangeIDs){

        List<Exchange__c> listExchange = [SELECT Currency_Name__c, Exchange_Rate__c FROM Exchange__c WHERE ID IN : exchangeIDs];
        List<Exchange__c> listExchangeUpdate = new List<Exchange__c>();

        for (Exchange__c ex : listExchange) {       
            string currencyName = ex.Currency_Name__c;
            HttpRequest request = new HttpRequest();
            request.setEndpoint('https://api.apilayer.com/exchangerates_data/latest?symbols='+ currencyName +'&base=USD');
            request.setMethod('GET');
            request.setHeader('apikey', 'EiqhbU8lledxpGj5PYknG7wJZcWikej4');
            request.setTimeout(20000);
            
            Http http = new Http();
            HTTPResponse response = http.send(request);
            
            if (response.getStatusCode() == 200) {
                String responseBody = response.getBody();
                System.debug('responseBody: ' +responseBody);
                // Handle response
                // JSON verilerini ExchangeRate sınıfına dönüştürme
                EchangeWrapper.Rates exchangeRate = (EchangeWrapper.Rates) JSON.deserialize(responseBody, EchangeWrapper.Rates.class);
                // TRY kuru
                Decimal rate = exchangeRate.rates.get(currencyName);
                System.debug('kur: ' + rate);
                ex.Exchange_Rate__c= rate;
                listExchangeUpdate.add(ex);
                try {
                    update listExchangeUpdate;
                } catch (Exception exp) {
                    System.debug(exp);
                }
            } else {
                // Handle error
            }
    }
        
    }
}