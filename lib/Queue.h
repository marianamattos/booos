/*
 * Queue.h
 *
 *  Created on: Feb 21, 2014
 *      Author: arliones
 */

#ifndef QUEUE_H_
#define QUEUE_H_

namespace BOOOS {

	class Queue {
	public:
		Queue();
		virtual ~Queue();

		class Element {
		public:
			Element() { _prev = 0; _next = 0; }
			virtual ~Element() {}

			Element * prev() { return _prev; }
			Element * next() { return _next; }
			void prev(Element * p) { _prev = p; }
			void next(Element * p) { _next = p; }

		private:
			Element * _prev;
			Element * _next;
		};

		Element * head() { return &_head; }

		int length() { return _length; }

		void insert(Element * elem);



		Element * remove();

	private:
		Element _head;
		int _length;
	};

}

#endif /* QUEUE_H_ */
