// JSON Format
{
    'Name' : 'Ozhan',
    'Age' : 30,
    'Title' : 'Developer',
    'Salary' : 120000,
    'Adress' : {
        'City' : 'New Jersey',
        'Country' : 'USA'
    }
}

// XML Format
<Contact>
    <Name>Ozhan</Name>
    <Age> 30 </Age>
    <Title> Developer </Title>
</Contact>
//<--------------------------------->

Account acc = [SELECT Name, Type, Industry, AnnualRevenue
               FROM Account
               WHERE AnnualRevenue != null AND Industry != null AND Type != null LIMIT 1];

// Serialization => To convert apex object to JSON format
// Deserialization => to convert JSON format to apex object
System.debug('(Türkçe)Apex type: ' + acc);
String jsonString = JSON.serialize(acc);
System.debug('(ingilizce) JSON type: ' + jsonString);


List<Account> accList = [SELECT Name, Type, Industry, AnnualRevenue
                         FROM Account
                         WHERE AnnualRevenue != null AND Industry != null AND Type != null];
System.debug('(Türkçe)Apex type: ' + accList);
string jsonListString = JSON.serialize(accList);
System.debug('(ingilizce) JSON type: ' + jsonListString);