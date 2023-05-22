import { LightningElement,api } from 'lwc';

export default class P2cCallingCMethodFromPChild extends LightningElement {
    val=5;


    @api
    mahmutMethod(){
        this.val = 30;
    }

    degeriTakip(event){
        this.val = event.target.value;
    }
}