SinOsc s => dac;
0.5 => s.gain;
//SinOsc Zero => dac;
//0.5 => Zero.gain;
float x;
float y;
//3000 => Zero.sfreq;
for( 0 => x; x <= 10; x+0.025=>x ) {

    -1 => y;
//    x * x => y;
//  1000 => s.freq;
    if(y >= -1 && y <= 1){
        if (y > 0) {
            y *400 + 150 => y;
            0.5 => s.gain;
        }
        else if ( y < 0) {
            - y *400 + 150 => y; 
            0.2 => s.gain;        
        }else{
            0.35  => s.gain;
        }
        y => s.freq;
    }else{
        0 => s.gain;
    }
    25::ms => now;
    <<< -1 , x , y >>>;
//    250 / y => s.gain;
}