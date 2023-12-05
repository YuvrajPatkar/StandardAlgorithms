//
//  Algorithms.swift
//  StandardAlgorithms
//
//  Created by Yuvraj Rahul Patkar on 24/11/2023.
//

import Foundation



class Sorting {
    
    func insertionSort(listToSort: [Int]) -> [Int] {
        var listToSort = listToSort
        if listToSort.count > 1 {
            
            for i in 1..<listToSort.count {
                let currentVal = listToSort[i]
                var j = i-1
                
                while j >= 0 && currentVal < listToSort[j]{
                    listToSort[j+1] = listToSort[j]
                    j-=1
                }
                listToSort[j+1] = currentVal
            }
            return listToSort
        }
        
        else{
            return listToSort
        }
    }
    
    func bubbleSort (listToSort :[Int]) -> [Int] {
        var listToSort = listToSort
        
        
        if listToSort.count > 1{
            for _ in 0 ... listToSort.count - 1 {
                for j in 0 ... listToSort.count - 2 {
                    if listToSort[j] > listToSort[j+1]{
                        let temp = listToSort[j]
                        listToSort[j] = listToSort[j+1]
                        listToSort[j+1] = temp
                        
                    }
                }
            }
            return listToSort
        }
        
        else{
            return listToSort
        }
    }
    
    func mergesort(_ listToSort: [Int]) -> [Int] {
        let listToSort = listToSort
        
        func mergingFunction(_ leftArray: [Int], _ rightArray: [Int]) -> [Int] {
            var leftIndex = 0
            var rightIndex = 0
            var sortedArray = [Int]()
            
            while leftIndex < leftArray.count && rightIndex < rightArray.count {
                if leftArray[leftIndex] < rightArray[rightIndex]{
                    sortedArray.append(leftArray[leftIndex])
                    leftIndex += 1
                }
                else{
                    sortedArray.append(rightArray[rightIndex])
                    rightIndex += 1
                }
            }
            if leftIndex == leftArray.count {
                sortedArray.append(contentsOf: rightArray[rightIndex..<rightArray.count])
            }
            else if rightIndex == rightArray.count{
                sortedArray.append(contentsOf: leftArray[leftIndex..<leftArray.count])
            }
            
            return sortedArray
        }
        
        if listToSort.count > 1 {
            let mid = listToSort.count / 2
            let left = mergesort(Array(listToSort[0..<mid]))
            let right = mergesort(Array(listToSort[mid..<listToSort.count]))
            
            return mergingFunction(left, right)
        }
        
        else{
            return listToSort
        }
    }
    
    
    func quicksort(listToSort: [Int]) -> [Int] {
        if listToSort.count > 1 {
            let pivot = listToSort[0]
            
            var tempList = [Int]()
            var lowerThanPivot = [Int]()
            var higherThanPivot = [Int]()
            
            for i in 1 ... listToSort.count - 1 {
                if listToSort[i] > pivot{
                    higherThanPivot.append(listToSort[i])
                }
                else{
                    lowerThanPivot.append(listToSort[i])
                }
            }
            tempList.append(contentsOf: quicksort(listToSort: lowerThanPivot))
            tempList.append(pivot)
            tempList.append(contentsOf: quicksort(listToSort: higherThanPivot))
            
            
            return tempList
        }
        else{
            return listToSort
        }
        
    }
}
