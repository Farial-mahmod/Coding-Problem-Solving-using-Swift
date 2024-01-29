/*
Description: TinyURL is a URL shortening service where you enter a URL such as https://leetcode.com/problems/design-tinyurl and it returns a short URL such as http://tinyurl.com/4e9iAk. Design a class to encode a URL and decode a tiny URL.
There is no restriction on how your encode/decode algorithm should work. You just need to ensure that a URL can be encoded to a tiny URL and the tiny URL can be decoded to the original URL.
Implement the Solution class:

    -Solution() Initializes the object of the system.
    -String encode(String longUrl) Returns a tiny URL for the given longUrl.
    -String decode(String shortUrl) Returns the original long URL for the given shortUrl. It is guaranteed that the given shortUrl was encoded by the same object.

Link: https://leetcode.com/problems/encode-and-decode-tinyurl/description/

 * Your Codec object will be instantiated and called as such:
 * let obj = Codec()
 * val s = obj.encode(longUrl)
 * let ans = obj.decode(s)


*/

class Codec {
  // a custom hashmap to store the URLs
  var urlMap = [String: String]()
  // counter to modify the values that are stored
  var counter = 0
  
 func encode(_ longUrl: String) -> String {
   counter += 1
   urlMap[longUrl] = "https://twitter.com/\(counter)"
   return urlMap[longUrl] ?? ""
 }
   func decode(_ shortUrl: String) -> String {
    for (key, value) in urlMap {
      if value == shortUrl {
        return key
    }
   }
  return ""
}

}
