def multiples_of_3_and_5(limit):
    sum = 0
    for num in range(3, limit):
        if (num % 3 == 0 or num % 5 == 0):
            sum += num
    return sum

limit = 1000
answer = multiples_of_3_and_5(limit)
print(answer)

# O(1) space
# O(n) time
