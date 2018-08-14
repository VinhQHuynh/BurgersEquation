#include <iostream>
#include <vector>
#include <unordered_set>
#include <array>
#include <string>
#include <list>
#include <fstream>
#include <cmath>
using namespace std;

const int nx = 100;
const int nt = 300;
const double dt = 0.01;
const double dx = 6.28 / (nx - 1);
const double vis = 0.1;
double x[nx];
double u[nx];
double un[nx];
int ip[nx];
int im[nx];
double phi[nx];
double dphi[nx];

int i, t;

double f(int i) {
	return exp(-0.25 * 5 * sin(double(x[i])) / vis);
}

double fprime(int i) {
	return 5 * -0.25 * cos(double(x[i])) / vis * exp(-0.25 * 5 * sin(double(x[i])) / vis);
}


int main() {

	for (i = 0; i < nx; i++) {
		x[i] = double(i) * dx;
		ip[i] = i + 1;
		im[i] = i - 1;
		phi[i] = f(i);
		dphi[i] = fprime(i);
//		u[i] = (-2 * vis * double(dphi[i]) / double(phi[i])) + 4;
		u[i] = sin(x[i]);
		if (i > nx / 2) {
//			u[i] = 0;
		}
	}
	ip[nx - 1] = 0;
	im[0] = nx - 1;
	ofstream myfile;
	myfile.open("u8.txt");
	for (t = 0; t < nt; t++) {
		for (i = 0; i < nx; i++) {
			un[i] = u[i];
			myfile << un[i] << " ";
		}
		myfile << endl;

		for (i = 0; i < nx; i++) {
			u[i] = un[i] - (un[i] * dt * (un[i] - un[im[i]]) / dx) + (vis * dt * (un[ip[i]] - 2 * un[i] + un[im[i]])) / (dx * dx);
		}
	}
	myfile.close();
//	system("PAUSE");
	return 0;
}


