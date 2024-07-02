SinOsc s => dac;
0.5 => s.gain;
SinOsc Zero => dac;
0.3 => Zero.gain;
float x;
float y;
for( 0 => x; x < Math.PI * 4; x+Math.PI/100=>x ) {
          100::ms => now;
          Math.sin(x) => y;
//          1000 => s.freq;
          <<<  x , y *2000 + 2500>>>;
          y * 2000 + 2500 => s.sfreq;
          
          
          2500 => Zero.sfreq;
//            1 => s.
}