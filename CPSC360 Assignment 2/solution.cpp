#include <iostream>
#include <sstream>

using namespace std;

int reverseNum(int num) {
	int temp = num, reversedNum = 0, remainder;
	while (temp != 0)
	{
		remainder = temp % 10;
		reversedNum = reversedNum * 10 + remainder;
		temp /= 10;
	}
	return reversedNum;
}
std::string isPalindrome(int num, int count, std::string ans) { 
	std::stringstream answer;
	std::string finAns;
	
	int reversedNum = reverseNum(num);
	if ((reversedNum == num)&&(count!=0)) {
		answer << count << " " << num << " ";
		finAns += answer.str();
		return finAns;
	}
	else {
		count++;
		int newNum = reversedNum + num;
		finAns += isPalindrome(newNum,count,finAns);
	}
	
	

	return finAns;
}
char* process(char* numbers) {
	std::string currNum = "";
	char* it = new char[500]();
	std::string yu = "";
	yu.clear();
	
	for (int i = 0; i < strlen(numbers); i++) {
		if (!isspace(numbers[i])) {
			currNum += numbers[i];
			if (i == strlen(numbers) - 1) {
				int num = atoi(currNum.c_str());
				yu += isPalindrome(num, 0,yu);
			}
		}
		else if (isspace(numbers[i])) {
			int num = atoi(currNum.c_str());
			if (num < 10) {
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


