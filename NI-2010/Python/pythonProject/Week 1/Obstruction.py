# The water heater will collect a baseline temperature for T1 and T2, when
#initially setup. These baseline values are obtained in our Lint, Dust, Oil
# algorithm which is in another portion of the code.

# The code will evaulate the difference (Delta) between the baseline temperature
# and the instantaneous temperature.

def categorize_condition(delta_T1, delta_T2, burner_status):
    # Updated thresholds
    T1_high = 15.0
    T1_low = -15.0
    T2_high = 15.0
    T2_low = -15.0

    # Categorize based on numerical conditions
    if burner_status == 0:
        if delta_T1 == 0 and delta_T2 == 0:
            return "Burner Inactive"
    elif T1_low <= delta_T1 <= T1_high and T2_low <= delta_T2 <= T2_high:
        return "Normal Operation"
    elif delta_T1 > T1_high and T2_low <= delta_T2 <= T2_high:
        return "Vent Obstruction"
    elif delta_T1 < T1_low and delta_T2 < T2_low:
        return "Air Intake Obstruction"
    elif delta_T1 < T1_low and delta_T2 > T2_high:
        return "Dilution Air Obstruction"
    elif delta_T1 > T1_high and delta_T2 > T2_high:
        return "Overheating Scenario"
    return "Unknown Condition"

# Test conditions with updated thresholds
test_conditions = [
    (0, 0, 1),          # Normal Operation
    (16, -2, 1),        # Vent Obstruction
    (-16, -20, 1),      # Air Intake Obstruction
    (-20, 18, 1),       # Dilution Air Obstruction
    (0, 0, 0),          # Burner Inactive
    (18, 16, 1)         # Overheating Scenario
]

# Verify each condition
for delta_T1, delta_T2, burner_status in test_conditions:
    category = categorize_condition(delta_T1, delta_T2, burner_status)
    print(f"ΔT1: {delta_T1}, ΔT2: {delta_T2}, Burner Status: {burner_status} => {category}")


if(Main_Burner_Flag == 0) {
    Power_Mode_Out = Power_Mode_In;
    Send_Timer_Message = 0;
}

else {
if (Power_Mode_In == 0) {
    // Full Power Mode: Stay in full power unless temperature is fully inside low power range
    if (water_Temp >= TEMP_HIGH_LIMIT - HYSTERESIS) {
        Power_Mode_Out = 0;  // Stay in Full Power Mode (Hysteresis applied)
    }
    else if (water_Temp >= TEMP_LOW_LIMIT) {
        Power_Mode_Out = 1;  // Switch to Low Power Mode
    }
    else {
        Power_Mode_Out = 0;  // Remain in Full Power Mode
    }
}
else if (Power_Mode_In == 1) {
    // Low Power Mode: Stay in low power unless temperature exceeds high limit or drops below low hysteresis
    if (water_Temp > TEMP_HIGH_LIMIT) {
        Power_Mode_Out = 0;  // Switch to Full Power Mode
    }
    else if (water_Temp < (TEMP_LOW_LIMIT - HYSTERESIS)) {
        Power_Mode_Out = 0;  // Switch to Full Power Mode
    }
    else {
        Power_Mode_Out = 1;  // Stay in Low Power Mode
    }
}

 // Check if low power mode was just activated (Power_Mode_Out == 1).
// If so, trigger a timer reset.
if (Power_Mode_In == 0 && Power_Mode_Out == 1  ) {
        Send_Timer_Message = 1; // Set reset flag
    }
else {
        Send_Timer_Message = 0; // Do not reset
    }
}