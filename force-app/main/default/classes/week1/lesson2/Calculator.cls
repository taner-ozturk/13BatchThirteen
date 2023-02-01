public class Calculator {


        // public String firinci(){
        //   //un taşınıyor.
        //   //su koyuluyor.
        //   //fırında hamur yoğruluyor.
        //   System.debug('Ekmek çıktıııııııııı.');
        //   return  'Yakup beyin ekmeği sıcacık.';
        // }
        // public void firinci2(){
        //   //un taşınıyor.
        //   //su koyuluyor.
        //   //fırında hamur yoğruluyor.
        //   System.debug('Ekmekleri pişirdim mahalleye dağıttım.');
        
        // }


     public void welcomeMessage(){
          system.debug('welcome to apex calc');
          //method içinden method çağırdığımız nokta.
          printNewMessage('welcome welcome'); 
        
     }

     public void printNewMessage(string msg){
          system.debug(msg);
     }

     void privatePrintMessage(string msg){
       system.debug('inside private method NOOWW');
       system.debug(msg);
       system.debug('done with private');
     }

     public string printAndReturnMessage(string m){
            privatePrintMessage(m); 
            string returnStr = '';
            returnStr = m + '...Ok cool';
            return returnStr;
     }
     public integer add(integer a, integer b){
       integer sum = a + b;
       string returnStr = 'Yeni değeri';
       return sum;
     }
     public String add(String a, integer b){
      String sum = a + b;
      return sum;
    }

     public integer add(integer x, integer y, integer z){
       integer sum = x+y+z;
       return sum;
     }
  
     public boolean leapYearCheck(date dt){
       //using date we get year component
       integer year = dt.year();
       //using year, we can check leap year using isLeapYear method
       boolean lp = date.isLeapYear(year);
       return lp;
     }
  
  }