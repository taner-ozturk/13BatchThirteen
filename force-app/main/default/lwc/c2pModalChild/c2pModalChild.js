import { LightningElement } from 'lwc';

export default class C2pModalChild extends LightningElement {

    message = false;

    closeHandlerChild(){
        const closeEvent = new CustomEvent('closemodal', {detail:this.message});
        this.dispatchEvent(closeEvent);
    }
}