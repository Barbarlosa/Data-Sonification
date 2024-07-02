SinOsc s => dac;
 //SinOsc Zero => dac;
 //0.1 => Zero.gain;
float x;
float y;
for( 0 => x; x < Math.PI * 4; x+Math.PI/100=>x ) {
          50::ms => now;
          Math.sin(x) / 10 +  0.15 => y;

          <<<  x , y >>>;
          y  => s.gain;
          <<< s.gain >>> ;
          
//          1500 => Zero.sfreq;
//            1 => s.
}