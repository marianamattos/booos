/*
 * Queue.cc
 *
 *  Created on: Feb 21, 2014
 *      Author: arliones
 */

#include <iostream>
#include "Queue.h"
#include <string.h>


using namespace std;

namespace BOOOS {

    // Queue constructor: must initialize queue's attributes

    Queue::Queue() {

        this->_length = 0;
    }

    // Queue destructor: must finalize queue's attributes

    Queue::~Queue() {

    }

    // insert method: must insert the Element at the end of the queue
    // Error messages:
    //   01: invalid Element (if elem == 0)
    //   02: duplicated Element (if elem already is on the queue)

    void Queue::insert(Queue::Element * elem) {

    		Element * p;
    		int i = 0;
		
 		//verifica se  primeiro da lista
		
                if (elem != 0){
		  
                	if (Queue::_length == 0) {
			  
			  cout << "primeiro elemento" << endl;
			  
                		Queue::head()->next(elem);
                		Queue::head()->prev(elem);
                		
				elem->next(elem);
                		elem->prev(elem);
				
                		Queue::_length++;
			
                	} else {
                		// percorre lista - retorno se já existe
                		p = head()->next();
                		do{
                			//cout << p << "\n" << elem << endl;
                			if (p == elem){
                				i = 1;
                				cout << "02: Duplicated Element" << endl;
                				break;
                			}
                			p = p->next();
                		}while(p != head()->next()) ;

                		if(i != 1){
                		p = Queue::head()->prev();
                		elem->prev(Queue::head()->prev());
                		p->next(elem);
                		Queue::head()->prev(elem);
                		elem->next(Queue::head()->next());
                		Queue::head()->next()->prev(Queue::head()->prev());
                		//cout << Queue::head() << "\n" << Queue::head()->prev() << "\n" << Queue::head()->next() << "\n"  << endl;
                		//cout << elem << "\n" << elem->prev() << "\n" << elem->next() << "\n"  << endl;
                		//cout << "----------------------------------------------------------"  << endl;
                    	Queue::_length++;
                		}
                	}
                } else { cout << "01: Invalid Element" << endl; }
                //cout << Queue::head() << "\n" << Queue::head()->prev() << "\n" << Queue::head()->prev()->prev() << "\n" << Queue::head()->prev()->prev()->prev() << "\n" << Queue::head()->prev()->prev()->prev()->prev() << "\n" << endl;
        		//cout << Queue::head()->next()->prev() << "\n" << Queue::head()->next()->next() << endl << endl;
	}


/* FILA APÓS PRIMEIRO ELEMENTO INSERIDO
 *
    ---head---
    |  (8c)  |
    |        |
    |        |
    -->Joao<--
    -->(20)<--
    |  |  |  |
    |  |  |  |
    |  |  |  |
    ----  ----

 FILA APÓS TODOS OS ELEMENTOS INSERIDOS

    ----------------------------------------------------
    |                                                  |
    |      -----------------------------------------   |
    |      |                                       |   |
   head    -->Fábio----->Augusto---->Pedro----->Joao<---
   (8c)------>(b0)<-------(80)<------(50)<------(20)<---
                |                                      |
                ----------------------------------------
*/

    // remove: must search and remove the element from the queue
    // Error messages:
    //   01: queue is empty

    Queue::Element * Queue::remove() {
        Element * p;

        if (Queue::_length > 0){
        	if (Queue::_length == 1) {
        		p = Queue::head()->prev();
        	} else {

        		if (Queue::_length > 1) {
        			p = Queue::head()->next();
        			Queue::head()->next(p->next());
        			//cout << Queue::head()->prev()->next() << "\n" << p->next() << endl;
        			//p->next()->prev(Queue::head()->prev());
        			Queue::head()->prev()->next(p->next());
        			Queue::head()->next()->prev(head()->prev());
        		}
        	}
        	Queue::_length--;
			return p;
        } else { cout << "01: Queue is Empty" << endl; return 0; }
    }

}
