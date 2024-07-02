// Here mainly the freq change from 580Hz to 720Hz, and the gain  

// source to filter to dac
SndBuf i => BiQuad f => Gain g => dac;


// set the filter's pole radius
.995 => f.prad;
// set equal gain zeros
1 => f.eqzs;
// initialize float variable
0 => float x;
0 => float y;
// set filter gain
.2 => f.gain;
// load glottal pop
"special:glot_pop" => i.read;
// play
1.0 => i.rate;

  
// infinite time-loop   
for ( 0 => x; x < (125 * 0.05); x + .05 => x )
{
    float mark1;
    float mark2;
    float mark3;
    // set the current pos
    0 => i.pos;
    -1 => y;    
    // sweep the filter resonant frequency
    if(y >= -1 && y <= 1) {
    
        660.0 + y *80.0 => mark1;
        mark1 => f.pfreq;
        0.3 + y * .2 => mark2;
        mark2 => g.gain;
    }else{
        0 => f.pfreq;
        0 => g.gain;
    }
    80::ms => now;
    <<<x, y, mark1, mark2, mark3>>>;
}
