class Solution:
    def isPalindrome(self, x: int) -> bool:
        result = 0
        original = x

        if original < 0: return False

        while (x != 0):
            digit = x % 10
            result = result * 10 + digit 
            x //= 10
        
        if original == result: return True
        else: return False
        