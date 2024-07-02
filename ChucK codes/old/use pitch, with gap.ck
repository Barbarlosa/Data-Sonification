SinOsc s => dac;
0.5 => s.gain;
SinOsc Zero => dac;
0.5 => Zero.gain;
float x;
float y;
3000 => Zero.sfreq;
for( 0 => x; x < Math.PI * 4; x+Math.PI/400=>x ) {

          25::ms => now;
          Math.sin(x) => y;
//          1000 => s.freq;
    if (y > 0) {
          y *2000 + 3500 => y;
        }
    else if ( y < 0) {
          y *2000 + 2500 => y;           
    }
    y => s.sfreq;
    250 / y => s.gain;
    <<< Math.sin(x) , x , y , 250 / y >>>;
}