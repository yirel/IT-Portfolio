from grade_tools2 import calculate_final_grade, classify_performance, determine_result
student_name = input("Enter student name: ")
quiz_score = float(input("Enter quiz score: "))
activity_score = float(input("Enter activity score: "))
exam_score = float(input("Enter exam score: "))

final_grade = calculate_final_grade(quiz_score, activity_score, exam_score)
performance = classify_performance(final_grade)
result = determine_result(final_grade)

print("\n=== Grade Report ===")
print(f"Student: {student_name}")
print(f"Final Grade: {final_grade:.2f}")
print(f"Performance: {performance}")
print(f"Result: {result}")