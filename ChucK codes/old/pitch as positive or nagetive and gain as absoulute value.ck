// Math.sin(x), 2 phases



SinOsc s => dac;
//SinOsc Zero => dac;
//0.1 => Zero.gain;

float x;
float y;
float t;
for( 0 => x; x < Math.PI * 4; x+Math.PI/100=>x ) {

          50::ms => now;
          Math.sin(x)  => y;
          if (y > 0){
             2000 => s.freq;
             0.05 + y / 10 => y;
          } else if (y < 0){
             15000 => s.freq;
             0.15 - y / 10 => y;                  
          } else {
             7000 => s.freq;
             0.20 => y;
          }
          <<<  x , Math.sin(x) , y>>>;
          y  => s.gain;
          <<< s.gain >>> ;
          
//          1500 => Zero.sfreq;
//            1 => s.
}