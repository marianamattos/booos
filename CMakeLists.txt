cmake_minimum_required(VERSION 2.8)


set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fpermissive" )

include_directories( lib test )

SET( Biblioteca_Boos
	lib/BOOOS.cc
	lib/Queue.cc
	lib/Scheduler.cc
	lib/Task.cc
)

add_executable(Queue_Test
	test/Queue_Test.cc
	${Biblioteca_Boos}
)

add_executable(Scheduler_Test
	test/Scheduler_Test.cc
	${Biblioteca_Boos}
)

add_executable(Task_Test
	test/Task_Test.cc
	${Biblioteca_Boos}
)

add_executable(Boos
	booos.cc
	${Biblioteca_Boos}
)