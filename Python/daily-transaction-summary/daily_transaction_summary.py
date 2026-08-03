print("=== Daily Transactions Summary ===")

transactions = [1200, 450, 800, 600, 1500]

total = 0

for amount in transactions:
    total = total + amount
    print(f"Added: {amount}")

print(f"\nTotal transactions: {total}")


# Counting items with a loop
transactions = [1200, 450, 800, 600, 1500]

count = 0

for amount in transactions:
    count = count + 1

print(f"Number of transactions: {count}")

#highest transaction
transactions = [1200, 450, 800, 600, 1500]

highest = transactions[0]

for amount in transactions:
    if amount > highest:
        highest = amount

print(f"Highest transaction: {highest}")

#lowest transaction
transactions = [1200, 450, 800, 600, 1500]

lowest = transactions[0]

for amount in transactions:
    if amount < lowest:
        lowest = amount

print(f"Lowest transaction: {lowest}")

#Nested loop
for week in range(1, 3):
    for day in range(1, 4):
        print(f"Week {week}, Day {day}")

#transaction summary by asking the user to enter numbers
print("=== Transaction Entry Program ===")

num_transactions = int(input("How many transactions would you like to enter? "))

transactions = []

for i in range(num_transactions):
    amount = float(input(f"Enter transaction {i + 1}: "))
    transactions.append(amount)

total = 0

for amount in transactions:
    total += amount

average = total / num_transactions

print("\n=== Transaction Summary ===")
print(f"Number of transactions: {num_transactions}")
print(f"Total transactions: {total}")
print(f"Average transaction: {average:.2f}")

#independent practice
scores = []
for i in range(5):
    score = float(input(f"Enter score {i + 1}: "))
    scores.append(score)
total = 0
for score in scores:
    total += score
average = total / len(scores)
highest = max(scores)
print("\n=== Scores Summary ===")
print(f"Average score: {average:.2f}")
print(f"Highest score: {highest}")