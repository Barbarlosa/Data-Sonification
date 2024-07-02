SinOsc s => dac;
0.5 => s.gain;
//SinOsc Zero => dac;
//0.5 => Zero.gain;
float x;
float y;
//3000 => Zero.sfreq;
for( 0 => x; x < Math.PI * 4; x+Math.PI/400=>x ) {

          25::ms => now;
          Math.sin(x) => y;
//          1000 => s.freq;
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
//    250 / y => s.gain;
    <<< Math.sin(x) , x , y >>>;
}