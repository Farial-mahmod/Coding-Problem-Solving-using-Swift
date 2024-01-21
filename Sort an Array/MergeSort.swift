/*
Description: Given an array of integers nums, sort the array in ascending order and return it. You must solve the problem without using any built-in functions in O(nlog(n)) time complexity and with the smallest space complexity possible.
Link: https://leetcode.com/problems/sort-an-array/description/
*/

class Solution {
    func sortArray(_ nums: [Int]) -> [Int] {
        var givenArray = nums
        // calling the mergeSort() on the given array
        return mergeSort(dataList: givenArray)
    }

func mergeSort(dataList : [Int]) -> [Int] {

  guard dataList.count > 1 else {
  return dataList
  }
  // splitting the array into 2 parts
  let leftHalf = Array(dataList[0..<dataList.count/2])
  let rightHalf = Array(dataList[dataList.count/2..<dataList.count])
  // invoking the mergeLists() into 
  return mergeLists(left: mergeSort(dataList: leftHalf), right: mergeSort(dataList: rightHalf))
}

func mergeLists(left: [Int], right: [Int]) -> [Int] {
  // sortedList would hold the sorted values
  var sortedList = [Int]()
  var left = left
  var right = right
  // as long as the left and the right do not get empty, appending the smaller values continues
  while left.count>0 && right.count>0 {
    if(left.first! < right.first!){
      sortedList.append(left.removeFirst())
    } else {
      sortedList.append(right.removeFirst())
    }
  }
  // returning the merged sub-arrays together
  return sortedList + left + right
  }
}
