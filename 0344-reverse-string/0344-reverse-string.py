class Solution:
    def reverseString(self, s: List[str]) -> None:
        """
        Do not return anything, modify s in-place instead.
        """
        # Function to increment i
        def reverse(i):
            n = len(s)

            #Condition to check for i 
            if i >= int(n/2):
                return
            
            #Swap
            s[i], s[n-i-1] = s[n-i-1], s[i]

            # Incrementing i
            reverse(i+1)
        
        # initializing i
        reverse(0)