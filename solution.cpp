#include <iostream>
#include <sstream>
using namespace std;

unsigned long long reverseNum(unsigned long long num) {
	unsigned long long temp = num, reversedNum = 0, remainder;
	while (temp != 0)
	{
		remainder = temp % 10;
		reversedNum = reversedNum * 10;
              		reversedNum += remainder;
		temp /= 10;
	}
	return reversedNum;
}

long long strToLong(string str) {
	long long num = 0;
	for (int i = 0; i < str.length(); i++) {
		num = num * 10;
		num += str[i] - '0';
	}
	return num;
}
std::string isPalindrome(unsigned long long num, int count, std::string ans) { 
	std::stringstream answer;
	std::string finAns;
	unsigned long long reversedNum = reverseNum(num);
	if ((reversedNum == num)&&(count!=0)) {
		if (num < 5) {
			answer << count << " " << num + num<< " ";
		}
		else {
			answer << count << " " << num << " ";
		}
		finAns += answer.str();
		return finAns;
	}
	else {
		count++;
		long long newNum = reversedNum + num;
		finAns += isPalindrome(newNum,count,finAns);
	}
	return finAns;
}
char* process(const char* numbers) {
	std::string currNum = "";
	char* it = new char[500]();
	std::string yu = "";
	yu.clear();
	
	for (int i = 0; i < strlen(numbers); i++) {
		if (!isspace(numbers[i])) {
			currNum += numbers[i];
			if (i == strlen(numbers) - 1) {
				long long num = strToLong(currNum.c_str());
				if (num < 5) {
					yu += isPalindrome(num, 1, yu);
				}
				else {
					yu += isPalindrome(num, 0, yu);
				}
			}
		}
		else if (isspace(numbers[i])) {
			long long num = strToLong(currNum.c_str());
			if (num < 5) {
				yu += isPalindrome(num, 1,yu);
			}
			else {
				yu += isPalindrome(num, 0,yu);
			}
			currNum = "";
		}
		
	}
	
	for (int i = 0; i < yu.length(); i++) {
		it[i] = yu[i];
	}
	it[yu.length()-1] = '\0';
	return it;
}


