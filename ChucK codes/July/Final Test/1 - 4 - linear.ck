SinOsc s => dac;
0.5 => s.gain;
//SinOsc Zero => dac;
//0.5 => Zero.gain;
float x;
float y;
//3000 => Zero.sfreq;
for( 0 => x; x <= 10; x + 0.025 => x ) {

    x * 2 - 10 => y;
//    x * x => y;
//  1000 => s.freq;
    y / 10 => y;
    if(y >= -1 && y <= 1){
        if (y > 0) {
            0.4 + y * 0.2 => s.gain;
            y *400 + 150 => y;
        }
        else if ( y < 0) {
            0.3 + y * 0.2 => s.gain;        
            - y *400 + 150 => y; 
        }else{
            150 => y;
            0.35  => s.gain;
        }
        y => s.freq;
    }else{
        0 => s.gain;
    }
    25::ms => now;
    <<< x * 0.2 - 1, x , y >>>;

//    250 / y => s.gain;
}