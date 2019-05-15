#include <iostream>
using namespace std;

void cetak_nama(char nama[20])
{
	cout << nama << endl;
}

main()
{
	
	char nama[20],a[20];
	cin >> nama ;
	a=cetak_nama(nama);
	return 0;
}
