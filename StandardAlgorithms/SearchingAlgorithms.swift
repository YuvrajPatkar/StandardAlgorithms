//
//  SearchingAlgorithms.swift
//  StandardAlgorithms
//
//  Created by Yuvraj Rahul Patkar on 05/12/2023.
//

import Foundation

func linsearch(Item: Int, searchingList: [Int]){
    var i = -1
    var foundOrNot = false
    for thing in searchingList {
        i = i + 1
        if thing == Item {
            return i
            foundOrNot = true
        }
    }
    if foundOrNot == false {
        return -1
    }
}



func binarySearch(Item: Int, searchingList: [Int])  {
    var locationIndex = 0
    var foundYet = false
    var lowIndex = 0
    var highIndex = searchingList.count - 1
    var middleIndex = (lowIndex + highIndex) / 2

    while foundYet == false && lowIndex <= highIndex  {

        middleIndex = (lowIndex + highIndex)  / 2
            
        if searchingList[middleIndex] == Item {
            locationIndex = searchingList[middleIndex]
            foundYet = true
        }
        else if searchingList[middleIndex] > Item {
            highIndex =  middleIndex - 1
            
        }
        else if searchingList[middleIndex] < Item {
            lowIndex = middleIndex + 1
            }
        
    }
    if foundYet == true {
        return locationIndex
    }
    else if foundYet == false {
        return - 1
    }
}
