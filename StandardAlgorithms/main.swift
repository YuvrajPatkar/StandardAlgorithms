//
//  main.swift
//  StandardAlgorithms
//
//  Created by Patkar, Yuvraj (NA) on 07/11/2023.
//

func linearSearch(Item: Int, searchingList: [Int]) -> Bool {
    var found = false
    for i in 0...searchingList.count - 1 {
        if searchingList[i] == Item {
            var found = true
        }
        else {
            var found = false
        }
    }
    return found
}


//let testlist = [4,7,9,3,1,6,36,34,632,634,236,35]
//let toFind = 36

//let foundOrNot = linearsearch(Item: toFind,searchingList: testlist)
//print(foundOrNot)

func binarySearch(Item: Int, searchingList: [Int]) -> Bool {
    var found = false
    if searchingList [searchingList.count / 2] == Item {
        var found = true
    }
    else if searchingList[searchingList.count / 2] > Item{
        
        
    }
    else if searchingList[searchingList.count / 2] < Item{
        
        
    }
    
    
    
    
    return found
}
