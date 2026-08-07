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

