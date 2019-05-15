#include <iostream>
using namespace std;

int j_d(int j, int m, int d)
{
	int td;
	td=(j*3600)+(m*60)+d;
	return td;
}


main()
{
	int x,y,z,a,b,f,g,h;
	//jam ke1
	cin >> x;
	cin >> y;
	cin >> z;
	
	//jam ke2
	cin >> f;
	cin >> g;
	cin >> h;
	
	//td jam 1
	a=j_d(x,y,z);
	
	//td jam 2
	b=j_d(f,g,h);
	
	cout << a;
}

