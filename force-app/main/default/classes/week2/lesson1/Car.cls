public class Car {
    
    //class variable
    //public means -> accessible outside of the class
    public string carColor = 'white';
    public string carName;

    //private variable --> accessible ONLY inside of the class
    private integer maxSpeed = 140;

    public void switchOn(){
        system.debug('starting the car nowww.');
        drive();
    }
    public void drive(){
        system.debug('driving ' + carName);
        driveAtMaxSpeed();
    }
    public void driveAtMaxSpeed(){
        string description = 'driving ' + carName + ' of color ' + carColor + ' at ' + maxSpeed + 'km/hr';
        system.debug(description);
        switchOn();
    }
   
}