///draw_advanced_healthbar(x,y,x2,y2,back color,min color,max color,direction,showback,showborder,lose color);

//lose HP
draw_healthbar(argument0,argument1,argument2,argument3,health2_,argument4,argument10,argument10,argument7,argument8,argument9);
//normal HP
draw_healthbar(argument0,argument1,argument2,argument3,health_,argument4,argument5,argument6,argument7,false,argument9);

//health lose animation
if health2_>=health_
{
	health2_-=1;
}else
{
	//reset
	health2_=health_;
}