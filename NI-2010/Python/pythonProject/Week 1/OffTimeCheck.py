import time

# Default timer threshold (in seconds)
DEFAULT_OFF_TIME = 5 * 60  # 5 minutes in seconds

# Track the time the burner was last turned off
last_burner_off_time = None

def burner_off_handler():
    global last_burner_off_time
    # Record the current time when the burner is turned off
    last_burner_off_time = time.time()

def burner_on_handler():
    global last_burner_off_time

    if last_burner_off_time is None:
        # If no previous off time is recorded, proceed with normal operation
        return True

    # Calculate the elapsed time since the burner was last turned off
    elapsed_off_time = time.time() - last_burner_off_time

    if elapsed_off_time < DEFAULT_OFF_TIME:
        # If the off time is less than the default, skip the Error 9 check
        return False

    # If the off time exceeds the default, proceed with Error 9 check
    return True