import { LightningElement, wire } from 'lwc';

//Import the adapter
import { getPicklistValues } from 'lightning/uiObjectInfoApi';
import { getObjectInfo} from 'lightning/uiObjectInfoApi';

//Import Field
import STATUS_FIELD from '@salesforce/schema/Case.Status';
import LEVEL_FIELD from '@salesforce/schema/Airline__c.level__c';

import PRIORITY_FIELD from '@salesforce/schema/Case.Priority';

//Import Object
import CASE_OBJ from '@salesforce/schema/Case';
import ACC_OBJ from '@salesforce/schema/Account';


export default class GetPicklistValues_Case extends LightningElement {

    statusOptions;
    priorityOptions;
    defaccRTId;

    @wire(getObjectInfo,{objectApiName : ACC_OBJ})
    caseHandler({data,error}){
        if(data){
            this.defaccRTId = data.defaultRecordTypeId;
            console.log('case default record typeId:',this.defCaseRTId);
        }
    }

    @wire(getPicklistValues,{fieldApiName : LEVEL_FIELD, recordTypeId : '$defaccRTId'})
    caseStatusHandler({data,error}){
        if(data){
            console.log('getPiclistValues: ',data);
            this.statusOptions = data.values;  
            //New : Fresh
            //In Progress : Doing
            //Closed : Done          
        }
        if(error){
            console.log(error);
        }
    }

    @wire(getPicklistValues,{fieldApiName : PRIORITY_FIELD, recordTypeId : '$defaccRTId'})
    casePriorityHandler({data,error}){
        if(data){
            this.priorityOptions = data.values;
        }
    }
}