/*
 * Queue_Test.cc
 *
 *  Created on: Feb 21, 2014
 *      Author: arliones
 */

#include <iostream>
#include <BOOOS.h>
#include <Task.h>


using namespace std;
using namespace BOOOS;

namespace CooperativeTest {

	Task *ping, *pong;

	void f_ping(void * arg) {
		int i ;

		cout << (char *) arg << " Start" << endl;

		for (i=0; i<4; i++)
		{
			cout << "\t" << (char*) arg << " " << i << endl;
			ping->pass_to(pong);
		}
		cout << (char *) arg << " End" << endl;

		ping->exit(0);
	}

	void f_pong(void * arg) {
		int i ;

		cout << (char *) arg << " Start" << endl;

		for (i=0; i<4; i++)
		{
			cout << "\t" << (char*) arg << " " << i << endl;
			pong->pass_to(ping);
		}
		cout << (char *) arg << " End" << endl;

		pong->exit(0);
	}

	int test_cooperative_execution() {

		cout << "Main Start" << endl;

		ping = new Task(f_ping, 1, (char*)"\tPing");
		pong = new Task(f_pong, 1, (char*)"\tPong");

		Task::self()->pass_to(ping);
		Task::self()->pass_to(pong);

		cout << "Main End" << endl;

		return 0;
	}
}

int main() {
	cout << "Welcome to BOOOS - Basic Object Oriented Operating System!" << endl;
	cout << "This program will test the class: Task" << endl;

	BOOOS::init();

	CooperativeTest::test_cooperative_execution();

	return 0;
}
