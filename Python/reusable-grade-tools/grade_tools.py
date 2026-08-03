def calculate_final_grade(quiz, activity, exam):
    return quiz * 0.30 + activity * 0.30 + exam * 0.40


def classify_performance(final_grade):
    if final_grade >= 90:
        return "Excellent"
    elif final_grade >= 85:
        return "Very Good"
    elif final_grade >= 80:
        return "Good"
    elif final_grade >= 75:
        return "Satisfactory"
    else:
        return "Needs Improvement"


def determine_result(final_grade):
    if final_grade >= 75:
        return "Passed"
    else:
        return "Failed"


def get_valid_score(score_name):
    while True:
        score = float(input(f"Enter {score_name}: "))

        if 0 <= score <= 100:
            return score

        print("Invalid score. Please enter a value from 0 to 100.")


while True:
    student_name = input("\nEnter student name: ")

    quiz_score = get_valid_score("quiz score")
    activity_score = get_valid_score("activity score")
    exam_score = get_valid_score("exam score")

    final_grade = calculate_final_grade(
        quiz_score,
        activity_score,
        exam_score
    )

    performance = classify_performance(final_grade)
    result = determine_result(final_grade)

    print("\n=== Grade Report ===")
    print(f"Student: {student_name}")
    print(f"Final Grade: {final_grade:.2f}")
    print(f"Performance: {performance}")
    print(f"Result: {result}")

    choice = input("\nCalculate another student? (yes/no): ")

    if choice.lower() != "yes" and choice.lower() != "y" and choice.lower() != "YES":
        print("Program ended.")
        break