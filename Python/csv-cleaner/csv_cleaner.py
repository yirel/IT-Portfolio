import csv
from pathlib import Path
from datetime import datetime

# Ask the user for the CSV filename
filename = input("Enter CSV filename: ")

base_dir = Path(__file__).resolve().parent

input_file = base_dir / filename
cleaned_file = base_dir / "cleaned_data.csv"
failed_file = base_dir / "failed_data.csv"
error_log_file = base_dir / "error_log.txt"

cleaned_rows = []
failed_rows = []
error_messages = []

try:
    with open(input_file, "r", newline="") as file:
        reader = csv.DictReader(file)

        for line_number, row in enumerate(reader, start=2):

            if row is None:
                continue

            if not any((value or "").strip() for value in row.values()):
                continue

            name = (row.get("name") or "").strip()
            department = (row.get("department") or "").strip()
            score_text = (row.get("score") or "").strip()

            try:
                if name == "" or department == "":
                    raise ValueError("Missing name or department")

                if score_text == "":
                    raise ValueError("Missing score")

                score = float(score_text)

                if score < 0 or score > 100:
                    raise ValueError("Score must be between 0 and 100")

                # Pass/Fail Logic
                if score >= 75:
                    status = "Passed"
                    cleaned_rows.append({
                        "name": name,
                        "score": f"{score:.2f}",
                        "department": department,
                        "status": status
                    })
                else:
                    status = "Failed"
                    failed_rows.append({
                        "name": name,
                        "score": f"{score:.2f}",
                        "department": department,
                        "status": status
                    })

            except ValueError as error:
                timestamp = datetime.now().strftime("%Y-%m-%d %H:%M:%S")

                error_messages.append(
                    f"[{timestamp}] Line {line_number}: "
                    f"{error} | Data: {row}"
                )

except FileNotFoundError:
    print(f"Error: '{filename}' not found.")
    exit()

# Save passed records
with open(cleaned_file, "w", newline="") as file:
    fieldnames = ["name", "score", "department", "status"]

    writer = csv.DictWriter(file, fieldnames=fieldnames)
    writer.writeheader()
    writer.writerows(cleaned_rows)

# Save failed records
with open(failed_file, "w", newline="") as file:
    fieldnames = ["name", "score", "department", "status"]

    writer = csv.DictWriter(file, fieldnames=fieldnames)
    writer.writeheader()
    writer.writerows(failed_rows)

# Save error log
with open(error_log_file, "w") as file:
    for message in error_messages:
        file.write(message + "\n")

print("\n=== Cleaning Complete ===")
print(f"Passed records: {len(cleaned_rows)}")
print(f"Failed records: {len(failed_rows)}")
print(f"Errors logged: {len(error_messages)}")