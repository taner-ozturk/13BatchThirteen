Calculator calc = new Calculator();



string yakup = calc.firinci();
system.debug(yakup+' Aldı evine gidiyor musmutlu:)');

calc.firinci2();













Calculator c = new Calculator();
string m = 'print this now.';
c.printNewMessage(m); 
string msg = 'print this now again.';
c.printNewMessage(msg); 
c.printNewMessage('88');
c.welcomeMessage();

Calculator c = new Calculator();
// date ddt = date.today();
// boolean lpy = c.leapYearCheck(ddt);
// system.debug('today date is leap year?? ' + lpy);

integer sum11 = c.add(10, 15, 25);
system.debug('sum11 is ' + sum11);

String sum21 = c.add('Esra',25);
system.debug('sum11 is ' + sum21);

integer sum1 = c.add(10, 15);
system.debug('sum1 is ' + sum1);
integer x = 15;
integer y = 45;
c.add(x,y); //we are NOT storing return value in a variable.
integer sum2 = c.add(x,y); //we are storing the return value in a variable.

string parameter1 = 'printing this for batch13';
string yes = c.printAndReturnMessage(parameter1);
system.debug('return message: ' + yes);


Calculator c1 = new Calculator();
string parameter1 = 'printing this for batch13';
string yes = c1.printAndReturnMessage(parameter1);
system.debug('return message: ' + yes);