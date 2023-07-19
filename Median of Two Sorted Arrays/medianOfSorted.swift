/*
Problem Statement: Given two sorted arrays nums1 and nums2 of size m and n respectively, return the median of the two sorted arrays.
The overall run time complexity should be O(log (m+n)).

Leetcode link: https://leetcode.com/problems/median-of-two-sorted-arrays/description/
*/

class Solution {
    func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
        // adding the arrays
        var jointArray = nums1 + nums2
        // sorting the array elements
        jointArray.sort()
        var arraySize = jointArray.count
        /*
        If the elements are even in number, dividing the twice (once 
        with decreasing 1) to get the middle point. If the elements
        are odd in number, detecting the middle with the help of
        dividing by 2
        */
        return arraySize%2 == 0 ? Double(jointArray[arraySize/2]+jointArray[arraySize/2-1])/2.0 : Double(jointArray[arraySize/2])
    }
}

var value = Solution()
print(value.findMedianSortedArrays([1,2],[3,4]))
