#!/bin/bash

# Prompt the user for employee information
read -p "Enter first name: " first_name
read -p "Enter middle name: " middle_name
read -p "Enter last name: " last_name
read -p "Enter salary per hour: " salary_per_hour

# Calculate total salary for 40 hours
total_salary=$(echo "scale=2; $salary_per_hour * 40" | bc)

# Deductions
pag_ibig=$(echo "scale=2; $total_salary * 0.02" | bc) # Assuming 2% for Pag-ibig
tax=$(echo "scale=2; $total_salary * 0.12" | bc) # Assuming 12% tax

# Calculate total salary after deductions
total_salary_after_deductions=$(echo "scale=2; $total_salary - $pag_ibig - $tax" | bc)

# Display the information
echo "First name: $first_name"
echo "Middle name: $middle_name"
echo "Last name: $last_name"
echo "Total salary for 40 hours: $total_salary"
echo "Less: Pag-ibig: $pag_ibig"
echo "Less: Tax (12%): $tax"
echo "Total amount of salary: $total_salary_after_deductions"

