import { LightningElement } from 'lwc';

//Import Object
import CONTACT_OBJECT from '@salesforce/schema/Contact';
//Import Fields
import LASTNAME_FIELD from '@salesforce/schema/Contact.LastName';


export default class LightningRecordForm_Contact extends LightningElement {

    objectApiName = CONTACT_OBJECT;
    //copy the recordId from Contact Object record
    recordId = '0035i00000SQVmoAAH';
    fields = [LASTNAME_FIELD];
}