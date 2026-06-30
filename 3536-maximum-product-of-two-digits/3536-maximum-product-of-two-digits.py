class Solution:
    def maxProduct(self, n: int) -> int:
        p = []
        while n>0:
            p.append(n % 10)
            n //= 10

        
        max_pro = 0
        for i in range(len(p)):
            for j in range(i+1, len(p)):
                product = p[i] * p[j]
                if product > max_pro:
                    max_pro = product
        
        return max_pro
        