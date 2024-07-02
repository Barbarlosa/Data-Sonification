// Here mainly the freq change from 580Hz to 720Hz, and the gain  

// source to filter to dac
SndBuf i => BiQuad f => Gain g => dac;


// set the filter's pole radius
.995 => f.prad;
// set equal gain zeros
1 => f.eqzs;
// initialize float variable
1.5 * 3.14 => float v;
// set filter gain
.2 => f.gain;
// load glottal pop
"special:glot_pop" => i.read;
// play
1.0 => i.rate;

  
// infinite time-loop   
while( true )
{
    float mark1;
    float mark2;
    float mark3;
    // set the current pos
    0 => i.pos;

    // sweep the filter resonant frequency
    660.0 + 1*80.0 => mark1;
    mark1 => f.pfreq;
    //660 => f.pfreq;
//    1780.0 + Math.sin(v*.5)*50.0 => f2.pfreq;
//    2410.0 + Math.sin(v*.25)*150.0 => f3.pfreq;

    // increment v
    v + .05 => v;
    // gain
    0.3 + 1*.2 => mark2;
    mark2 => g.gain;
    //0.2 => g.gain;
    // advance time
    //(80.0 + Math.sin(v*2.0)*10.0) => mark3;
    //mark3 ::ms => now;
    80::ms => now;
    <<<mark1 , mark2, mark3>>>;
}
