/*
 * BOOOS.h
 *
 *  Created on: Mar 24, 2014
 *      Author: arliones
 */

#ifndef BOOOS_H_
#define BOOOS_H_

#include <Scheduler.h>

namespace BOOOS {

/* Configuration Space */
static const Scheduler::SchedulerType SCHEDULER_TYPE = Scheduler::SCHED_FCFS;

void init();

} /* namespace BOOOS */

#endif /* BOOOS_H_ */
