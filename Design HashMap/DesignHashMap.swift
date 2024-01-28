/*
Description: Design a HashMap without using any built-in hash table libraries. Implement the MyHashMap class:

    MyHashMap() initializes the object with an empty map.
    void put(int key, int value) inserts a (key, value) pair into the HashMap. If the key already exists in the map, update the corresponding value.
    int get(int key) returns the value to which the specified key is mapped, or -1 if this map contains no mapping for the key.
    void remove(key) removes the key and its corresponding value if the map contains the mapping for the key.

Example 1:

Input
["MyHashMap", "put", "put", "get", "get", "put", "get", "remove", "get"]
[[], [1, 1], [2, 2], [1], [3], [2, 1], [2], [2], [2]]
Output
[null, null, null, 1, -1, null, 1, null, -1]

Link: https://leetcode.com/problems/design-hashmap/description/
*/

class MyHashMap {
    var hashMap: [Int:Int]

    init() {
        hashMap = [:]
    }

    func put(_ k: Int, _ v: Int) {
        hashMap[k] = v
    }

    func get(_ k: Int) -> Int {
        return hashMap[k] ?? -1
    }

    func remove(_ k: Int) {
        hashMap[k] = nil
    }
}

/**
 * Your MyHashMap object will be instantiated and called as such:
 * let obj = MyHashMap()
 * obj.put(key, value)
 * let ret_2: Int = obj.get(key)
 * obj.remove(key)
 */
