# Truth table data
conditions = [
    "Normal Operation",
    "Vent Obstruction",
    "Air Intake Obstruction",
    "Dilution Air Flow Obstruction",
    "Burner Inactive"
]

delta_T1 = [0, 12, 12, -12, 0]  # Combustion chamber temperature change
delta_T2 = [0, -2, -6, 8, 0]    # Mixed flow temperature change
burner_status = [1, 1, 1, 1, 0]  # Burner status (1 = active, 0 = inactive)

# Function to display truth table as text
def display_truth_table():
    print("=" * 60)
    print(f"{'Condition':<30} | {'ΔT1':<6} | {'ΔT2':<6} | {'Burner Status':<13}")
    print("=" * 60)
    for i in range(len(conditions)):
        print(f"{conditions[i]:<30} | {delta_T1[i]:<6} | {delta_T2[i]:<6} | {burner_status[i]:<13}")
    print("=" * 60)

# Display the truth table
display_truth_table()

