/*
Description:

Link:
*/


class RandomizedSet {
    private var set: Set<Int>

    init() {
        set = Set<Int>()
    }
    
    func insert(_ val: Int) -> Bool {
        set.insert(val).inserted
    }
    
    func remove(_ val: Int) -> Bool {
        set.remove(val) != nil
    }
    
    func getRandom() -> Int {
        set.randomElement()!
    }
}

/**
 * The RandomizedSet object can be instantiated and called as such:
 * let obj = RandomizedSet()
 * let ret_1: Bool = obj.insert(val)
 * let ret_2: Bool = obj.remove(val)
 * let ret_3: Int = obj.getRandom()
 */
