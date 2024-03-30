class CodeModel {
  static const Map<String, List<String>> defaultCodeSnippets = {
    "html": [
      "<!DOCTYPE html>",
      "<html lang='fr'>",
      "\t<body>",
      "\t\t<a href='page2.html'>go to page 2</a>",
      "\t</body>",
      "</html>",
    ],
    "python": [
      "def hello_world():",
      "\tprint('Hello, world!')",
      "",
      "hello_world()"
    ],
    "javascript": ["console.log('Hello, world!');"],
    "java": [
      "public class Main {",
      "\tpublic static void main(String[] args) {",
      "\t\tSystem.out.println(\"Hello, world!\");",
      "\t}",
      "}"
    ],
  };

  static const Map<String, List<String>> problems = {
    "Longest Substring Without Repeating Characters": [
      '''
      Given a string s, find the length of the longest substring without repeating characters\n
Example 1:
Input: s = "abcabcbb"
Output: 3
Explanation: The answer is "abc", with the length of 3.
      
Example 2:
Input: s = "bbbbb"
Output: 1
Explanation: The answer is "b", with the length of 1.

Example 3:
Input: s = "pwwkew"
Output: 3
Explanation: The answer is "wke", with the length of 3.
Notice that the answer must be a substring, "pwke" is a subsequence and not a substring.
      '''
    ],
    "Median of Two Sorted Arrays": [
      '''
      Given two sorted arrays nums1 and nums2 of size m and n respectively, return the median of the two sorted arrays.The overall run time complexity should be O(log (m+n)).
      
Example 1:
Input: nums1 = [1,3], nums2 = [2]
Output: 2.00000
Explanation: merged array = [1,2,3] and median is 2.
      
Example 2:
Input: nums1 = [1,2], nums2 = [3,4]
Output: 2.50000
Explanation: merged array = [1,2,3,4] and median is (2 + 3) / 2 = 2.5.
      '''
    ],
    "Merge Two Sorted Lists": [
      '''
      You are given the heads of two sorted linked lists list1 and list2.
      Merge the two lists into one sorted list. The list should be made by splicing together the nodes of the first two lists.
      Return the head of the merged linked list.
      
Example 1:
Input: list1 = [], list2 = []
Output: []
      
Example 2:
Input: list1 = [], list2 = [0]
Output: [0]
      '''
    ],
    "Search Insert Position": [
      '''
      Given a sorted array of distinct integers and a target value, return the index if the target is found. If not, return the index where it would be if it were inserted in order.
      You must write an algorithm with O(log n) runtime complexity.
      
Example 1:
Input: nums = [1,3,5,6], target = 5
Output: 2
      
Example 2:
Input: nums = [1,3,5,6], target = 2
Output: 1
      
Example 3:
Input: nums = [1,3,5,6], target = 7
Output: 4
      '''
    ],
    "Find the Index of the First Occurrence in a String": [
      '''
      Given two strings needle and haystack, return the index of the first occurrence of needle in haystack, or -1 if needle is not part of haystack.
      
Example 1:
Input: haystack = "sadbutsad",needle = "sad"
Output: 0
Explanation: "sad" occurs at index 0 and 6.
The first occurrence is at index 0, so we return 0.
      
Example 2:
Input: haystack = "code-buddy", needle = "leeto"
Output: -1
Explanation: "leeto" did not occur in "code-buddy", so we return -1.
      '''
    ],
    "Valid Palindrome": [
      '''
     A phrase is a palindrome if, after converting all uppercase letters into lowercase letters and removing all non-alphanumeric characters, it reads the same forward and backward. Alphanumeric characters include letters and numbers.
     Given a string s, return true if it is a palindrome, or false otherwise.
      
Example 1:
Input: s = "A man, a plan, a canal: Panama"
Output: true
Explanation: "amanaplanacanalpanama" is a palindrome.
      
Example 2:
Input: s = "race a car"
Output: false
Explanation: "raceacar" is not a palindrome.
      
Example 3:
Input: s = " "
Output: true
Explanation: s is an empty string "" after removing non-alphanumeric characters.
Since an empty string reads the same forward and backward, it is a palindrome.
      '''
    ],
    "Valid Phone Numbers": [
      '''
      Given a text file file.txt that contains a list of phone numbers (one per line), write a one-liner bash script to print all valid phone numbers.
      You may assume that a valid phone number must appear in one of the following two formats: (xxx) xxx-xxxx or xxx-xxx-xxxx. (x means a digit)
      You may also assume each line in the text file must not contain leading or trailing white spaces.
      
Example:
Assume that file.txt has the following content:
987-123-4567
123 456 7890
123) 456-7890

Your script should output the following valid phone numbers:
987-123-4567
(123) 456-7890
      '''
    ],
    "Length of Last Word": [
      '''
      Given a string s consisting of words and spaces, return the length of the last word in the string.
      A word is a maximal substring consisting of non-space characters only.

Example 1:
Input: s = "Hello World"
Output: 5
Explanation: The last word is "World" with length 5.

Example 2:
Input: s = "   fly me   to   the moon  "
Output: 4
Explanation: The last word is "moon" with length 4.

Example 3:
Input: s = "luffy is still joyboy"
Output: 6
Explanation: The last word is "joyboy" with length 6.
      '''
    ],
    "Roman to Integer": [
      '''
      Roman numerals are represented by seven different symbols: I, V, X, L, C, D and M.

For example, 2 is written as II in Roman numeral, just two ones added together. 12 is written as XII, which is simply X + II. The number 27 is written as XXVII, which is XX + V + II.

Roman numerals are usually written largest to smallest from left to right. However, the numeral for four is not IIII. Instead, the number four is written as IV. Because the one is before the five we subtract it making four. The same principle applies to the number nine, which is written as IX. There are six instances where subtraction is used:

1. I can be placed before V (5) and X (10) to make 4 and 9. 
2. X can be placed before L (50) and C (100) to make 40 and 90. 
3. C can be placed before D (500) and M (1000) to make 400 and 900.
   Given a roman numeral, convert it to an integer.
      '''
    ],
    "Sqrt(x)": [
      '''
      Given a non-negative integer x, return the square root of x rounded down to the nearest integer. The returned integer should be non-negative as well.
      You must not use any built-in exponent function or operator.
      For example, do not use pow(x, 0.5) in c++ or x ** 0.5 in python.

Example 1:
Input: x = 4
Output: 2
Explanation: The square root of 4 is 2, so we return 2.

Example 2:
Input: x = 8
Output: 2
Explanation: The square root of 8 is 2.82842..., and since we round it down to the nearest integer, 2 is returned.
      '''
    ],
    "Add Two Numbers": [
      '''
      You are given two non-empty linked lists representing two non-negative integers. The digits are stored in reverse order, and each of their nodes contains a single digit. Add the two numbers and return the sum as a linked list.
      You may assume the two numbers do not contain any leading zero, except the number 0 itself.

Example 1:
Input: l1 = [0], l2 = [0]
Output: [0]

Example 2:
Input: l1 = [9,9,9,9,9,9,9], l2 = [9,9,9,9]
Output: [8,9,9,9,0,0,0,1]
      '''
    ],
  };
}
