ListDemo.candidatesList(10);
ListDemo.randomIntegerList();
ListDemo.allCats();
ListDemo.iterateListInteger();



List<integer> listInteger = new List<integer>();
listInteger.add(10);//0
listInteger.add(15);//1
listInteger.add(21);//2
listInteger.add(15);//3
listInteger.add(15);//4
integer sumofList = ListDemo.total(listInteger);
system.debug('sum of list is ' + sumofList);





string c2 = ListDemo.candidatesList(2);
system.debug('c2 ==> ' + c2);
string c5 = ListDemo.candidatesList(5);
system.debug('c5 ==> ' + c5);




string concateStr = '';
//left side -> defining new variable, which we can use inside for loop.
    //new variable(eachStr), will automatically get one by one value from the list.
//right side -> list variable name.
for(string eachStr  : listStr){
    system.debug(eachStr);
    concateStr += ' || ' + eachStr;
    //concateStr = concateStr + ' || ' + eachStr;
}
system.debug(concateStr);
