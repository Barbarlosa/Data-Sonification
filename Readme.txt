The code in this project is Chuck from Princeton University, 
this is their project url:
https://chuck.cs.princeton.edu

The research question in this project was: 
Can incorporating a referential sound enhance the accuracy of time perception in individuals when they listen to the sound? In this project, time is represented on the X-axis, serving as the independent variable.


The files here are created in 2019. The following folder contains the final version of this project.
ChucK codes/July/Final Test

These 4 sounds (1-1,1-2,1-3,1-4), are base line sounds. the participants are always asked to listen to them first and get an idea of what type of sounds they are suppose to listen to today. 
Assuming in this imagenary chart 
the y-axis range is -1000 <= y <= 1000
and
the x-axis range are 0<=x<=100
1-1-minimal.ck (y = -1000)
1-2-0.ck (y = 0)
1-3-maximum.ck ( y = 100 )
1-4-linear.ck (y = 20x-1000) 

2-4 and 2-5 are pilot tasks, getting the participants to get used to the task.

The last 4 sounds (3-1,3-2,3-3,3-4) are actual test sounds.
3-1, 
3-2, 
3-3, 
3-4,

You should use those sound, and adding the referential sound (second.ck) in the CHUCK decoder.
There is a helper file (test.ck) that can help with it.
NOTE THAT the web chuck might not support this. I didn't use web chuck at the time.
