# CSV Cleaner

This project demonstrates basic CSV data cleaning in Python.

## Purpose

The script reads a CSV file, validates each row, and separates usable records from invalid ones.

## What it does

- Reads data from an input CSV file
- Validates required fields such as name, department, and score
- Writes valid rows to a cleaned CSV file
- Writes failed or invalid rows to a separate file
- Creates an error log with timestamps and row details

## Files

- `csv_cleaner.py` — main cleaning script
- `input_data.csv` — sample data used for the exercise
- `cleaned_data.csv` — rows that passed validation
- `failed_data.csv` — rows that failed validation
- `error_log.txt` — recorded validation errors

## How to run

1. Open the folder in a Python editor or terminal.
2. Run the script with Python.
3. Enter the CSV filename when prompted.
4. Review the generated output files.

## Skills practiced

- Reading and writing CSV files
- Data validation
- Error handling
- Basic file processing in Python
