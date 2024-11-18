# Example of a simple event driven program

# tkinter GUI Module

import tkinter as tk

# Create the main window
root = tk.Tk()
root.title("Simple Timer")

# Event handler function
def tick():
    print("tick!")
    # Schedule the tick function to run again after 1000ms (1 second)
    root.after(1000, tick)

# Start the timer
tick()

# Run the GUI loop
root.mainloop()



