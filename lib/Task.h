/*
 * Task.h
 *
 *  Created on: Feb 27, 2014
 *      Author: arliones
 */

#ifndef TASK_H_
#define TASK_H_

#include "Queue.h"
#include <ucontext.h>

namespace BOOOS {

class Task : public Queue::Element {
public:
	enum State {
		READY,
		WAITING,
		RUNNING,
		FINISHING,
		SCHEDULER
	};

	Task(void (*entry_point)(void *), int nargs, void * arg);
	Task();


	virtual ~Task();

	int tid() { return _tid; }
	
	State state() { return _state; }

	void pass_to(Task * t, State s = READY);

//	void exit(int code);

	void yield();

	static Task * self() { return (Task*)__running; }

	static void init();

	void exit (int code);
	
	static int count();

protected:

	State _state;

	static Queue  __ready;
	
	static Task * __main;
	
	static int ntask;

private:

	static volatile Task * __running;

	char * stack;
	
	ucontext_t _context;
	
	int _tid; // task ID

	static int global_tid;
	// ...
};

} /* namespace BOOOS */

#endif /* TASK_H_ */
