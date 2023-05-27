import { LightningElement, api, track } from 'lwc';
import {ShowToastEvent} from 'lightning/platformShowToastEvent';
import csvFileRead from '@salesforce/apex/CSVFileReadLWC.csvFileRead';

export default class CustomDataImportUpload extends LightningElement {

    @api recordId;
    @track error;
    
    get acceptedCSVFormats() {
        return ['.csv'];
    }

    handleUploadFinished(event) {
        // Get the list of uploaded files
        const uploadedFiles = event.detail.files;
        //alert('No. of files uploaded : ' + uploadedFiles.length);

        // calling apex class csvFileread method
        csvFileRead({contentDocumentId : uploadedFiles[0].documentId})
        .then(result => {
            window.console.log('result ===> '+result);
            //this.data = result;
            this.dispatchEvent(
                new ShowToastEvent({
                    title: 'Success!!',
                    message: 'Accounts are created according to the CSV file upload!!!',
                    variant: 'Success',
                }),
            );
        })        
        .catch(error => {
            this.error = error;
            this.dispatchEvent(
                new ShowToastEvent({
                    title: 'Error!!',
                    message: JSON.stringify(error),
                    variant: 'error',
                }),
            );     
        })
            
    }


    

}