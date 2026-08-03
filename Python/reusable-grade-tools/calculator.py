from math_tools import add_numbers, subtract_numbers, multiply_numbers, divide_numbers
a = float(input("Enter first number: "))
b = float(input("Enter second number: "))

sum_result = add_numbers(a, b)
difference_result = subtract_numbers(a, b)
product_result = multiply_numbers(a, b)
quotient_result = divide_numbers(a, b)

print("\n=== Math Operations Result ===")
print(f"Sum: {sum_result}")
print(f"Difference: {difference_result}")
print(f"Product: {product_result}")
print(f"Quotient: {quotient_result}")
