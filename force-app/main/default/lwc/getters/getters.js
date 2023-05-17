import { LightningElement } from 'lwc';

export default class Getters extends LightningElement {

//Arrays 
students = ["ferzan","gulnar","mahri","hatice"]; 

//gettters
get firstStudent(){
    return this.students[0];
}

get lastStudent(){
    return this.students[3];
}

}