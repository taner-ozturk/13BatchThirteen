String[] parks = SoapCallouts.parksCallout('United States');
System.debug(parks);

String[] parks2 = SoapCallouts.parksCallout('Germany');
System.debug(parks2);

Double result = SoapCallouts.doAddCallout(204, 308);

SoapCallouts.doDivideCallout(345.78D, 34.34D);