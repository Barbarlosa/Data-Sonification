SinOsc s => dac;
SinOsc r => dac;
0.5 => s.gain;

float x;
float y;
float z;

for( 0 => x; x < 1000; x+2.5=>x ) {

    25::ms => now;
    x => y;
    if (y > 0) {
          y + 1000 => y;
          0.8 => s.gain;
        }
    else if ( y < 0) {
         - y + 1000 => y; 
          0.1 => s.gain;        
    }
    y => s.sfreq;

    <<<x , y , z>>>;
}