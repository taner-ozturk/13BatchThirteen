 //Solution 1
    List<String> coloursList = new List<String>();
    coloursList.add('Red');
    coloursList.add('White');
    coloursList.add('Green');
    coloursList.add('Black');
    coloursList.add('Yellow');
    System.debug('coloursList  : '+coloursList);

    //Solution 2
    Integer size = coloursList.size();
    System.debug('coloursList size  : '+coloursList.size());
    System.debug('coloursList size  : '+size);

    //Solution 3
    Boolean containsRed = coloursList.contains('Red');
    System.debug('containsRed  : '+coloursList.contains('Red'));
    System.debug('containsRed  : '+containsRed);

    //Solution 4
    String lastElement = coloursList.get(size-1);
    String lastElementInUpperCase = lastElement.toUpperCase();
    System.debug('lastElementInUpperCase   : '+lastElementInUpperCase);

    //Solution 5
    coloursList[4] = coloursList[4].toUpperCase();
    System.debug('coloursList  : '+coloursList);

    //Solution 7
    List<String> colourCodesList = new List<String>{'#FF0000', '#00FFFF', '#0000FF', '#ADD8E6'};
    System.debug('colourCodesList   '+colourCodesList);

    //Solution 8
    Boolean areTwoListsEqual = coloursList.equals(colourCodesList);
    System.debug('areTwoListsEqual  : '+areTwoListsEqual);

    //Solution 9
    List<String> mergedList = new List<String>();
    mergedList.addAll(coloursList);
    mergedList.addAll(colourCodesList);
    System.debug('mergedList    '+mergedList);

    
    //Solution 6
    //String listInStringForm = coloursList.toString();
    //System.debug('listInStringForm  '+listInStringForm);

    