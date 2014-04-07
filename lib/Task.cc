/*
 * Task.cc
 *
 *  Created on: Feb 27, 2014
 *      Author: arliones
 */

#include "Task.h"
#include <stdio.h>
#include <ucontext.h>
#include <stdlib.h>
#include <Scheduler.h>
#include <iostream>

//#define STACKSIZE 32768

const int STACKSIZE = 32768;



using namespace std;

namespace BOOOS {
  
//int Task::count = 0;
volatile Task * Task::__running;

int Task::global_tid;

Queue  Task::__ready;

Task* Task::__main;

int Task::ntask;

// This method initializes Task's global attributes
void Task::init() {
  
   Task::ntask = 0;
  __main = new Task(); 

}

Task::Task(){ 
  
  cout << " construtor __main " << endl;
  
	     global_tid = 0;
	     this->_tid = global_tid;

	     getcontext(&this->_context);


	     this->stack = (char*) malloc(STACKSIZE);

	     if(this->stack) {

	    	  		 this->_context.uc_stack.ss_sp = this->stack;
	     		     this->_context.uc_stack.ss_size = STACKSIZE;
	     		     this->_context.uc_stack.ss_flags = 0;
	     		     this->_context.uc_link = 0; // contexto de retorno !!
	     		     __running = this;
	     		   }
			   else {
				   //error !!
			   }

	     Scheduler::userTasks ++;
	     Task::ntask++;

	     /* ? !! */

	    __ready.insert(this);

	    cout << " __main inserido na fila " << endl;
	    
}

// This constructor creates a task.
// - entry_point: pointer to a function that implements the behavior of the task
// - nargs: number of arguments sent to the entry_point function
// - arg: vector with the arguments for the entry_point function
Task::Task(void (*entry_point)(void *), int nargs, void * arg) {

		cout << "construtor task padr�o " << endl;

		this->_state = READY; // toda task começa como 'pronta' ;
		this->_tid = ++global_tid;

		getcontext(&this->_context);
		// salva o contexto atual ;

		/*pilha*/
		void * aux;
		aux = malloc(STACKSIZE);

		this->stack =(char*) aux;

		   if(this->stack) {

	             this->_context.uc_stack.ss_sp = this->stack;
		     this->_context.uc_stack.ss_size = STACKSIZE;
		     this->_context.uc_stack.ss_flags = 0;
		     this->_context.uc_link = 0; // contexto de retorno !!
		   }
		   else {
			   //error !!
		   }

		   Scheduler::userTasks ++;
		   Task::ntask ++;

		   makecontext(&this->_context, entry_point, nargs, arg);


		   //	this->_next = NULL ; // Referente a fila de tarefas;
		   //	this->_prev =  NULL ; // Referente a fila de tarefas;


		  // __ready->insert(this);
		   __ready.insert(this);
		   cout << "taks na fila" << endl;

}



// This destructor destroys/frees any resources allocated in the constructor
Task::~Task() {

	Scheduler::userTasks -- ;
	free(this->stack);

}

// This method transfers the execution flow from the current task to the Task 't'.
// - t: pointer to the task that will assume the CPU.
// - s: state that the current task will assume

void Task::pass_to(Task * t, State s) {

	 this->_state = s;
	 
	 __running = t;

	 swapcontext(&this->_context, &t->_context);
}


void Task::yield (){
	// transfere a execução da tarefa para o escalonador

	this->pass_to( Scheduler::self() , READY);


}

void Task::exit(int code) {

  this->_state = FINISHING;
  Task::ntask -- ;

}

int Task::count(){

  return Task::ntask;
  
}

}

 /* namespace BOOOS */
