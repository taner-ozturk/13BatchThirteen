import { LightningElement,track,wire } from 'lwc';
//import apex method
import calculateImperative from '@salesforce/apex/Calculator_LWC.calculateImperative';

export default class ImperativeApex_Calculator extends LightningElement {

    a=0;
    b=0;
    @track imperativeResult=0;
    @track wireSum = 0;

    /*First Number Handler*/
    
    firstHandler(event){              
        this.a = event.target.value;
        console.log(a);
    }
    /*Second Number Handler*/
    
    secondHandler(event){
        this.b = event.target.value;
        console.log(b);
    }


    
    calcHandler(event){
        var operation = event.target.name;
        calculateImperative({a:this.a,b:this.b,operation:operation})
        .then(result =>{
            console.log('Inside then'+result);
            this.imperativeResult = result;
        })
        .catch(error => {
            this.imperativeResult = undefined;
            this.wireSum = undefined;  
        })
    }

    
    @wire(calculateImperative, {a:'$a',b:'$b',operation:'Add'}) 
    wiredSum({data, error}) {
        if(data) {
            this.wireSum = data;            
        } 
        if(error) {
            this.wireSum = undefined; 
            this.imperativeResult = undefined;            
        }
    }


}


/*
STEP 1 : Design the UI, 2 inputs and 4 buttons

STEP 2 : 

APEX : 
calculator(Integer a, Integer b,String operation){

if(operation.isEquals('Add')){
return a+b;
}
if(operation.isEquals('Sub'){
return a-b;
}
.....

}

JS :

1) import apex
2) changeHandler - Inputbox
3) clickHandler - Call APex imperatively and pass the parameters
4) .then, .catch -> result imperativeResult

HTML
Create a div and print the result

Imperative Result is {imperativeResult}
*/