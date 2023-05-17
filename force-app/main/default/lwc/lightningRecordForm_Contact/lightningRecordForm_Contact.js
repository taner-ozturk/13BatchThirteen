import { LightningElement } from 'lwc';

//Import Object
import CONTACT_OBJECT from '@salesforce/schema/Contact';
//Import Fields
import LASTNAME_FIELD from '@salesforce/schema/Contact.LastName';
import CON_FIRSTNAME_FIELD from '@salesforce/schema/Contact.FirstName';



export default class LightningRecordForm_Contact extends LightningElement {

    objectApiName = CONTACT_OBJECT;
    //copy the recordId from Contact Object record
    recordId = '003Dn00000DUIsnIAH';
    fields = [LASTNAME_FIELD,CON_FIRSTNAME_FIELD];
}