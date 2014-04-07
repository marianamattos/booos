/*
 * Scheduler.cpp
 *
 *  Created on: Mar 21, 2014
 *      Author: arliones
 */

#include "Scheduler.h"

#include <ucontext.h>
#include <iostream>

using namespace std;

namespace BOOOS {

Scheduler * Scheduler::__dispatcher = 0;

volatile int Scheduler::userTasks;

/*
 *  The scheduler is an active task that schedules/manages other tasks
 */

Scheduler::Scheduler() {
    cout << "\nconstruir __dispatcher " << endl;
	Scheduler::__dispatcher = (Scheduler *) new Task(dispatcher, 0, 0);  
	Scheduler::__dispatcher->_state = SCHEDULER;
      cout << "__dispatcher construido " << endl;
}

Scheduler::~Scheduler() {
  
  //desconstruir a task e a fila do dispatcher
  delete __dispatcher;
 
}

/*ializes Scheduler's static attributes
 */

void Scheduler::init() {
	//...
	// inicialização da tarefa dispatcher
  cout << "                                               Inicializando scheduler" << endl;
	__dispatcher = new Scheduler();	
}

/*
 * This function implements the scheduler behavior.
 */

void Scheduler::dispatcher(void*) {
	//...
	
	    while((userTasks == Task::ntask) > 0)
	    {
	      
	       
	       Task * next  = __dispatcher->choose_next(); 
		
	       if(next)
	       {
	         
		 	          
	         // transfere controle para a tarefa "next"
		 
		  self()->pass_to(next, READY);
		  
		  
		  cout << "escalonando" << endl ;
		  
		  // inserir a task de volta na fila;
		  
		  __ready.insert(next);
		  
		  // ações apos retornar da tarefa "next", se houverem
	       }
	    }
	    
	    __dispatcher->exit(0) ; // encerra a tarefa dispatcher
	    
}

Task * Scheduler::choose_next() {
	//... Queu
	 
	 cout << "prox da fila" << endl;

	 return (Task*)__ready.remove();
	 
}

} /* namespace BOOOS */
