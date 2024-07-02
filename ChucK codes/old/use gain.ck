SinOsc s => dac;
 //SinOsc Zero => dac;
 //0.1 => Zero.gain;
SinOsc Zero => dac;
float x;
float y;
float t;
for( 0 => x; x < Math.PI * 4; x+Math.PI/100=>x ) {
//          2000 => s.freq;
          0.2 => Zero.gain;
          50::ms => now;
          Math.sin(x)  => y;
          if (y > 0){
             y / 10 +  0.25 => y;
              } else if (y < 0){
             y / 10 +  0.15 => y;                  
                  } else {
                      0.20 => y;
                      }
          <<<  x , y , t>>>;
          y  => s.gain;
          <<< s.gain >>> ;
          
//          1500 => Zero.sfreq;
//            1 => s.
}