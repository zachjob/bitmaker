# The Switch

## You Assignment

Given the HTML and CSS as provided, use jQuery to hear the click of the switch and meet the following criteria:

- When someone hits the button in the switch, remove the current state class (on/off), and apply the opposite class (on/off)
- Swap the colors of the body's background and text by adding or removing the dark/light class
- Lastly, change the text in box to say "It's so bright in here!" when it's on, and "Hey, who turned off the lights?" when it's off

## Hints

Start with small steps:

1. Change the status text when the document is ready
2. Add a click listener to the switch and incorporate the changes listed above in 'Your Assignment'
3. Confirm the switch works
4. How do we switch the classes back now?
  1. First try it with a regular javascript `if` statement
  2. Then try it with the jquery`toggleClass` function
