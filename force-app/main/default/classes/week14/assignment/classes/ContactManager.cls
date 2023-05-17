@RestResource(urlMapping='/Contact/*')
global with sharing class ContactManager {
    //'https://abc855-dev-ed.my.salesforce.com/services/apexrest/Contact/0038d00000KYSjzAAH'

    @HttpGet
    global static Contact getContact() {
        RestRequest request = RestContext.request;
        String uri = request.requestURI;
        System.debug(uri);
        Id contactId = uri.substringAfterLast('/'); 
        //2.yol
        // integer lastIndex=lastIndexOf('/');
        //Id contactId=uri.substring(lastIndex +1);

        //3. yol
        // list<string> uriList=uri.split('/');
        //integer size=uriList.size();
        //id contactId= uriList[size-1];

        Contact con=[SELECT FirstName, LastName, Email, Title, Department FROM Contact WHERE Id = :contactId ];
        return con;
    }
    
    @HttpPost
    global static id postContact(String FirstName, String LastName, String Email, String Title, String Department){
        Contact con = new Contact();
        con.FirstName = FirstName;
        con.LastName = LastName;
        con.Email = Email;
        con.Title = Title;
        con.Department = Department;
        insert con;
        return con.id;
    }

    // @HttpPost
    // global static string postContact(List<Contact> cont){
    //     insert cont;
    //     return 'Basarili';
    // }

    @HttpDelete
    global static string deleteContact(){
        RestRequest request = RestContext.request;
        String uri = request.requestURI;
        Id contactId = uri.substringAfterLast('/');  
        //RestContext.response.statusCode=410;
        Contact con=[SELECT Id FROM Contact WHERE Id = :contactId ];
        delete con;
        return 'Contact has been deleted successfully!'+con.id;
    }

    @HttpPut //upsert if id exists->update---insert
    global static id postContact(String Id, String FirstName, String LastName, String Email, String Title, String Department){
      
        Contact con = new Contact();
        con.Id = Id;
        con.FirstName = FirstName;
        con.LastName = LastName;
        con.Email = Email;
        con.Title = Title;
        con.Department = Department;
        upsert con;
        return con.id;
    }

    @HttpPatch  //updating one or two fields
    global static Contact patchContact() {
        RestRequest request = RestContext.request;
        String jsonString = request.requestBody.toString();
        Contact con = (Contact)JSON.deserialize(jsonString, Contact.class);
        update con;
        Contact newCon = [SELECT FirstName, LastName, Email, Title, Department FROM Contact WHERE Id = :con.Id];
        return newCon;
    }
}