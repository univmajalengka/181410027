#include<iostream>
using namespace std;

void Proc_td(int h,int m,int v);
int func_td(int x,int y,int z);
void garis();

int main()
{
	/*
		v penerima nilai kembali dari function
		variabel input x jam, y menit, z detik
	*/
	int v,x,y,z;
	cin >> x; //1
	garis();
	cin >> y; //1
	garis();
	cin >> z; //1
	garis();
	Proc_td(x,y,z);
	v=func_td(x,y,z);
	v++;
	//v=+1;
	cout << v << endl;
	return 0;
}

void Proc_td(int a,int b,int c)
{
	int x;
	x=(a*3600)+(b*60)+c;
	cout << x << endl;
}

/*
	Function ubah jam, menit detik ke total detik
*/
int func_td(int a,int b,int c)
{
	int x;
	x=(a*3600)+(b*60)+c;
	return x;
	//1 or 0, true or false
}

void garis()
{
	cout << "------------------------" << endl;
}
