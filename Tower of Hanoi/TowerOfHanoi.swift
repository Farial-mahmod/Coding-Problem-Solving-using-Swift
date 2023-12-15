/* “Tower of Hanoi” puzzle is well known. There are 3 pegs with numbers: #1, #2 and #3. N disks of different diameters are set on the first peg in the following order: 
the lower disk is set, the larger diameter it has. Your aim is to move all disks onto the second peg using the third peg as an auxiliary one. 
Following the rules within a move it's allowed to replace only one uppermost disk.  Besides it's forbidden to put the disk of the bigger diameter onto the disk of the smaller one.

Problem link: https://acm.timus.ru/problem.aspx?space=1&num=1054

Tower of Hanoi solution in Swift (version 5.9)
*/

import Foundation

class Hanoi {

func towerOfHanoi(_ number: Int, _ from: String, _ to: String, _ reserve: String){
  
  if (number == 0){
    return 
  }

towerOfHanoi(number - 1, from, reserve, to)
print("Moved \(number) from \(from) to \(to)")
towerOfHanoi(number - 1, reserve, to, from)

}
}

// driver code to test the above-written solution
var tower = Hanoi()
tower.towerOfHanoi(2, "sourceRod", "destinationROD", "temporaryROD")
