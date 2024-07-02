// Here mainly the freq change from 580Hz to 720Hz, and the gain  

// source to filter to dac
SndBuf i => BiQuad f => Gain g => dac;


// set the filter's pole radius
.995 => f.prad;
// set equal gain zeros
1 => f.eqzs;
// initialize float variable
1.5 * 3.14 => float x;
//0 => float x;
// set filter gain
.2 => f.gain;
// load glottal pop
"special:glot_pop" => i.read;
// play
1.0 => i.rate;
0.0 => float timePassed;
  
// infinite time-loop   
while( timePassed <= 10000 )
{
    float mark1;
    float mark2;
    float mark3;
    
    // set the current pos
    0 => i.pos;

    // sweep the filter resonant frequency

    660 => f.pfreq;
    1 => mark2;
    if(mark2 >= -1 && mark2 <= 1){
        if(mark2>=0){
            200 - 100 * mark2 => mark3; 
            mark3::ms => now;
            0.4 => g.gain;
        }else{
            200 + 100 * mark2 => mark3;
            mark3::ms => now;
            0.1 => g.gain;
        }
    }else{
        if(mark2>=0){
            200 - 100 * 1.1 => mark3; 
            mark3::ms => now;
            0 => g.gain;
        }else{
            200 + 100 * 1.1 => mark3;
            mark3::ms => now;
            0 => g.gain;
        }
    }
    timePassed + mark3 => timePassed;
    x + mark3 * (3.115926 / 5000) => x;
    <<<x, mark1 , mark2, mark3, timePassed >>>;
}
