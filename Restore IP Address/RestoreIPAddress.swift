/*
Description: A valid IP address consists of exactly four integers separated by single dots. Each integer is between 0 and 255 (inclusive) and cannot have leading zeros.

For example, "0.1.2.201" and "192.168.1.1" are valid IP addresses, but "0.011.255.245", "192.168.1.312" and "192.168@1.1" are invalid IP addresses.
Given a string s containing only digits, return all possible valid IP addresses that can be formed by inserting dots into s. You are not allowed to reorder or remove any digits in s. You may return the valid IP addresses in any order.

Link: https://leetcode.com/problems/restore-ip-addresses/description/
*/

// Solution:

class Solution {
    func restoreIpAddresses(_ s: String) -> [String] {
        let s = Array(s)
        var result = [String]()

        func dfs(_ i: Int = 0, _ prefix: String = "", _ depth: Int = 1) {
            for j in i ..< s.count {
                let val = String(s[i...j])
                // the range has to be in between 0 and 255
                guard (s[i]>"0"||i==j) && Int(val)! < 256 else { return }
                // not fourth int
                if depth < 4 { 
                    dfs(j+1, prefix + val + ".", depth + 1)
                } 
                // fourth int, all input consumed
                else if j == s.count-1 { 
                    result.append(prefix + val)
                }
            }
        }
        // calling the same function coded above
        dfs()
        return result
    }
}
