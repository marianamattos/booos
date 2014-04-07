/*
 * Queue_Test.cc
 *
 *  Created on: Feb 21, 2014
 *      Author: arliones
 */

#include <iostream>
#include <Queue.h>

using namespace std;
using namespace BOOOS;

class MyElement : public Queue::Element {
public:
	MyElement(string str) : _name(str) {}

	virtual ~MyElement() {}

	string & name() { return _name; }

private:
	string _name;
};

int main() {
	cout << "Welcome to BOOOS - Basic Object Oriented Operating System!" << endl;
	cout << "This program will test the class: Queue" << endl;

	Queue queue;

	MyElement * person1 = new MyElement("João");
	MyElement * person2 = new MyElement("Pedro");
	MyElement * person3 = new MyElement("Augusto");
	MyElement * person4 = new MyElement("Fábio");

	queue.insert(person1);
	queue.insert(person2);
	queue.insert(person3);
	queue.insert(person4);

	MyElement * removed_person = queue.remove();
	delete removed_person; // Which element was removed?

	return 0;
}
