import { LightningElement } from 'lwc';

export default class TemplateLooping extends LightningElement {

    strList = ["Madhu","Nur","Taner","Mani","Emre"];

    students = [
    {
        name : "Alihan",
        rollNumber : 12345
    },
    {
        name : "Aydin",
        rollNumber : 23456
    },
    {
        name : "Fulya",
        rollNumber : 34567
    }
    ];    

}