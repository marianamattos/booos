/*
 * BOOOS.cc
 *
 *  Created on: Mar 24, 2014
 *      Author: arliones
 */

#include <BOOOS.h>
#include <Task.h>
#include <Scheduler.h>
#include <iostream>

using namespace std;

namespace BOOOS {

void init() {
  cout << "                                            BOOOS.cc" << endl;
  
	Task::init();
	
	cout <<                                        "\nTask inicializada" << endl;
	
	switch(SCHEDULER_TYPE) {
	
	  case Scheduler::SCHED_FCFS:
	    cout <<"                  switch scheduler case 1" << endl;
		Scheduler::init();
		break;
	
	  case Scheduler::SCHED_PRIORITY:
	    cout <<"                 switch scheduler case 2" << endl;
//		Priority_Scheduler::init();
		break;
	}

	cout << "                                            fim BOOOS.cc" << endl;
}

} /* namespace BOOOS */
