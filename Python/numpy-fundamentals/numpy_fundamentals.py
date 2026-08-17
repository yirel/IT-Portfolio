
import numpy as np
#numpy array
scores = np.array([85, 90, 78, 92, 88])
print(scores)
#basic array operations
scores = np.array([92, 88, 75, 81, 95])

print(scores + 5)
print(scores - 3)
print(scores * 2)
print(scores / 2)
#calculate totals and averages
scores = np.array([92, 88, 75, 81, 95])
total = np.sum(scores)
average = np.mean(scores)
print("Total:", total)
print("Average:", average)
'''
np.sum()	Adds all values
np.mean()	Finds the average
np.min()	Finds the smallest value
np.max()	Finds the largest value
'''
#find minimum and maximum values
scores = np.array([92, 88, 75, 81, 95])
score_min = np.min(scores)
score_max = np.max(scores)
print("Minimum score:", score_min)
print("Maximum score:", score_max)

#student score example
quiz_scores = np.array([90, 85, 78, 92, 88])
activity_scores = np.array([87, 80, 75, 90, 84])
exam_scores = np.array([93, 89, 76, 95, 90])

quiz_avg = np.mean(quiz_scores)
activity_avg = np.mean(activity_scores)
exam_avg = np.mean(exam_scores)

print(f"Quiz Average: {quiz_avg:.2f}")
print(f"Activity Average: {activity_avg:.2f}")
print(f"Exam Average: {exam_avg:.2f}")

#percentage calculation
quiz_percentage = (quiz_avg / 100) * 100
activity_percentage = (activity_avg / 100) * 100
exam_percentage = (exam_avg / 100) * 100

print(f"Quiz Percentage: {quiz_percentage:.2f}%")
print(f"Activity Percentage: {activity_percentage:.2f}%")
print(f"Exam Percentage: {exam_percentage:.2f}%")

#Calculate change
quiz_change = quiz_avg - np.mean(quiz_scores)
activity_change = activity_avg - np.mean(activity_scores)
exam_change = exam_avg - np.mean(exam_scores)

print(f"Quiz Change: {quiz_change:.2f}")
print(f"Activity Change: {activity_change:.2f}")
print(f"Exam Change: {exam_change:.2f}")

#percentage change
quiz_percentage_change = (quiz_change / np.mean(quiz_scores)) * 100
activity_percentage_change = (activity_change / np.mean(activity_scores)) * 100
exam_percentage_change = (exam_change / np.mean(exam_scores)) * 100

print(f"Quiz Percentage Change: {quiz_percentage_change:.2f}%")
print(f"Activity Percentage Change: {activity_percentage_change:.2f}%")
print(f"Exam Percentage Change: {exam_percentage_change:.2f}%")

#array indexing and slicing
scores = np.array([92, 88, 75, 81, 95])

print(scores[0])
print(scores[1:4])
#filtering and boolean indexing
scores = np.array([92, 88, 75, 81, 95])
high_scores = scores[scores > 85]
print("High Scores:", high_scores)

#ten transaction amounts
transactions = np.array([100, 250, 75, 300, 150, 200, 400, 50, 175, 225])
total_transactions = np.sum(transactions)
average_transaction = np.mean(transactions)
highest_transaction = np.max(transactions)
lowest_transaction = np.min(transactions)
change_in_previous_transaction = np.diff(transactions)
print("==== Transaction Summary ====")
print(f"Total Transactions: {total_transactions}")
print(f"Average Transaction: {average_transaction}")
print(f"Highest Transaction: {highest_transaction}")
print(f"Lowest Transaction: {lowest_transaction}")
print(f"Change in Previous Transaction: {change_in_previous_transaction}")