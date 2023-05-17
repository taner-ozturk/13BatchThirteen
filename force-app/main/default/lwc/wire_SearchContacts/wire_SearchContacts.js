import { LightningElement,wire } from 'lwc';
//import apex method
import searchContactsWire from '@salesforce/apex/ContactController_LWC.searchContactsWire';

export default class Wire_SearchContacts extends LightningElement {

    searchWord;
    contacts;
    error;

    searchHandler(event){
        this.searchWord = event.target.value;        
    }

    @wire(searchContactsWire,{searchString : '$searchWord'})
    contactValues({data,error}){
        if(data){
            this.contacts = data;
        }
        if(error){
            this.error = error;
        }
    }


    /*Property : contacts
    contacts = {
        data : [{
            con1
        },
        {
            con2
        }],
        error : .....            
        }
    }*/

    /*Function : contactValues({data,error}){
        if(data){
            this.contacts = data;
        }
    }*/



}