String name="dogs";
String verb="play";
String verb2="walk";
String time="minutes";
String quant="all";
String quant2="total";
String place="park";
String people="dog walkers";

int numberOfDogs = 6;
int numberOfParks = 2;
int numberOfPeople = 3;

float numberOfTreats = 2.5;
float playTime = 20.5;
float walkTime = 4.5;

print(name);

println(quant, numberOfDogs, name + " need to " + verb);
println(quant, name + " should " + verb , playTime , time + " each ");
println(int (numberOfDogs * playTime) , time + " of " + verb , quant2 + " for " + quant , name);
println("A " + verb2 + " is not " + verb);
println(numberOfPeople , people + " must " + verb2 , name + " to " + place);
println("Each " + people , verb2 , int (numberOfDogs / numberOfPeople) , name);
println(place + " is " + walkTime , time , verb2);
println(people + " need " + int (playTime + walkTime) , time);
println("to " + verb2 , name + " at 1 of " + numberOfParks , place); 
println("after good " + verb , name + " get " + numberOfTreats + " treats");