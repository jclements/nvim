#include <iostream>

int printMessage(); 
	
int main() {
	std::cout << "Hello World\n";
	printMessage();
	return 0;
}

int printMessage() {
	std::cout << "I got printed!\n";
	return 0;
}
