/// @description code that runs every frame when player exists
// You can write your code in this editor
right = keyboard_check(ord("D"));
left = keyboard_check(ord("A"));
up = keyboard_check(ord("W"));
down = keyboard_check(ord("S"));

xDirection = right - left;
xVector = xSpeed*xDirection;

if (place_meeting(x + xVector, y, oWall))
{
	while(!place_meeting(x + xVector, y, oWall))
		{
			x = x + xDirection;
		}
	xVector = 0;
}
x = x + xVector

yDirection = down - up;
yVector = ySpeed*yDirection;

if (place_meeting(x, y + yVector, oWall))
{
		while(!place_meeting(x, y + yVector, oWall))
		{
			y = y + yDirection;
		}
	yVector = 0;
}
y = y + yVector;
