//
//  Sorting.swift
//  SwiftStructures
//
//  Created by Wayne Bishop on 7/2/14.
//  Copyright (c) 2014 Arbutus Software Inc. All rights reserved.
//

import Foundation

public class Sorting {
    
    var isKeyFound: Bool = false
    
    
    /*
    binary search algorthim. Find the value at the middle index.
    note the use of the tuple to organize the upper and lower search bounds.
    */
    
    func binarySearch(var numberList: Array<Int>, key: Int, range:(imin: Int, imax: Int)) {
    
    
        var midIndex: Double = round(Double((range.imin + range.imax) / 2))
        var midNumber = numberList[Int(midIndex)]
    
    
        //use recursion to reduce the possible search range
        if (midNumber > key ) {
            binarySearch(numberList, key: key, range: (range.imin, Int(midIndex) - 1))
        
    
        //use recursion to increase the possible search range
        } else if (midNumber < key ) {
            binarySearch(numberList, key: key, range: (Int(midIndex) + 1, range.imax))
            
            
        } else {
            isKeyFound = true
            println("value \(key) found..")
        }
        
        
    } //end function
    


    
    /*
    insertion sort algorithm - rank set of random numbers lowest to highest by
    inserting numbers based on a sorted and unsorted side.
    */
    
    func insertionSort(var numberList: Array<Int>) -> Array<Int> {
        
        var x, y, key : Int
        
        
        for (x = 0; x < numberList.count; x++) {

            //obtain a key to be evaluated
            key = numberList[x]
            
            
            //iterate backwards through the sorted portion
            for (y = x; y > -1; y--) {
                
                println("comparing \(key) and \(numberList[y])")
                
                if (key < numberList[y]) {
                    
                
                    //remove item from original position
                    numberList.removeAtIndex(y + 1)
                    
                    //insert the number at the key position
                    numberList.insert(key, atIndex: y)
                    
                }
                
            }
            
            
        } //end for
        
        
        return numberList
        
        
    } //end function
    
    
    
    
    
    /*
    bubble sort algorithm - rank items from the lowest to highest by swapping
    groups of two items from left to right. The highest item in the set will bubble up to the
    right side of the set after the first iteration.
    */
    
    func bubbleSort(var numberList: Array<Int>) -> Array<Int> {
        

        //establish the iteration counters
        var x, y, z, passes, key : Int

        
        for (x = 0; x < numberList.count; ++x) {
            
            //outer loop is maintained to track how many iterations to pass through the list
            passes = (numberList.count - 1) - x;
            
            
                for (y = 0; y < passes; y++) {
                    
                    //obtain the key item to sort
                    key = numberList[y]
                    
                    
                    println("comparing \(key) and \(numberList[y + 1])")
                    
                    
                        if (key > numberList[y + 1]) {
                            
                            //pull out the value to be swapped
                            z = numberList[y + 1]
                            
                            
                            //write the key where the previous value was placed
                            numberList[y + 1] = key
                            
                            
                            //place the pulled value in the previous position
                            numberList[y] = z
                            
                            
                            
                        } //end if

                    
                } //end for

            
        } //end for
        
        return numberList
 
    } //end function
    
    
    
    
}
