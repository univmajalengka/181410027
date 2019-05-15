#include <iostream>
using namespace std;

void proc(int a,int b)
{
	int c;
	c=a+b;
	cout << c << endl;
}

int funct(int a, int b)
{
	int c=a+b;
	return c;
}

int main()
{
	int x,y,z;
	cin >> x;
	cin >> y;
	proc(x,y);
	
	z=funct(x,y);
	z=z+1;
	cout << z;
}
