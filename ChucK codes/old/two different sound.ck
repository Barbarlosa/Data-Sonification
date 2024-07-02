SinOsc s => dac;
SinOsc r => dac;
0.5 => s.gain;
//SinOsc Zero => dac;
//0.5 => Zero.gain;
float x;
float y;
float z;
//3000 => Zero.sfreq;
for( 0 => x; x < Math.PI * 4; x+Math.PI/400=>x ) {

    25::ms => now;
    Math.sin(x) => y;
//          1000 => s.freq;
    if (y > 0) {
          y *1000 + 1000 => y;
          0.8 => s.gain;
        }
    else if ( y < 0) {
         - y *1000 + 1000 => y; 
          0.1 => s.gain;        
    }
    y => s.sfreq;
    
    x /Math.PI * 4 => z;
//          1000 => s.freq;
    if (z > 0) {
          z *1000 + 1000 => z;
          0.8 => r.gain;
        }
    else if ( z < 0) {
         - z *1000 + 1000 => z; 
          0.1 => r.gain;        
    }
    z => r.sfreq;
//    250 / y => s.gain;
    <<< Math.sin(x) , x , y , z>>>;
}