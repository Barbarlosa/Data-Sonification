"C:/Users/Barbarlosa_Dev/Desktop/Data Sonification/July/Final Test/" => string fileLocation;

90  => int s;
if(s == 10){
    Machine.add( fileLocation + "1 - 1 - minimum.ck" );
} else if (s == 11){
    Machine.add( fileLocation + "second.ck" );
    Machine.add( fileLocation + "1 - 1 - minimum.ck" );
} else if (s == 20){
    Machine.add( fileLocation + "1 - 2 - 0.ck" );
} else if (s == 21){
    Machine.add( fileLocation + "second.ck" );
    Machine.add( fileLocation + "1 - 2 - 0.ck" );
} else if (s == 30){
    Machine.add( fileLocation + "1 - 3 - maximum.ck" );
} else if (s == 31){
    Machine.add( fileLocation + "second.ck" );
    Machine.add( fileLocation + "1 - 3 - maximum.ck" );
} else if (s == 40){
    Machine.add( fileLocation + "1 - 4 - linear" );
} else if (s == 41){
    Machine.add( fileLocation + "second.ck" );
    Machine.add( fileLocation + "1 - 4 - linear.ck" );
} else if (s == 60){
    Machine.add( fileLocation + "3 - 1.ck" );
} else if (s == 61){
    Machine.add( fileLocation + "second.ck" );
    Machine.add( fileLocation + "3 - 1.ck" );
} else if (s == 70){
    Machine.add( fileLocation + "3 - 2.ck" );
} else if (s == 71){
    Machine.add( fileLocation + "second.ck" );
    Machine.add( fileLocation + "3 - 2.ck" );
} else if (s == 80){
    Machine.add( fileLocation + "3 - 3.ck" );
} else if (s == 81){
    Machine.add( fileLocation + "second.ck" );
    Machine.add( fileLocation + "3 - 3.ck" );
} else if (s == 90){
    Machine.add( fileLocation + "3 - 4.ck" );
} else if (s == 91){
    Machine.add( fileLocation + "second.ck" );
    Machine.add( fileLocation + "3 - 4.ck" );
}
