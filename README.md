# The Switch

## You Assignment

Given the HTML and CSS as provided, use jQuery to listen for the click of the switch and meet the following criteria:

- When someone hits the `.switch`, remove the current state class (.on/.off), and apply the opposite class (.on/.off)
- Swap the body's `background-color` and text `color` by adding or removing the dark/light class.
  - *For advanced learning, ditch the classes and try to store the values as strings to variables and swap them directly*
- Lastly, change the `.status` to say "It's so bright in here!" when the `.switch` is in the `.on` position, and "Hey, who turned off the lights?" when it's `.off`

## Hints

Start with small steps:

1. Start by changing the `background-color` and text `color`
  - See if you can store the values as variables for swapping (later)
2. Change the status ``.text()`` from one message to the other
3. Change the class of the `.switch` from `.on` to `.off`
4. Check if the `button` `click()` will trigger a function (try a simple `alert()` to test this)
5. Combine the above steps to solve the problem:
  - use an `if` statement to check the state and change the text
  - try the jQuery `toggleClass` function to change the light and dark backgrounds. _Is that as safe as adding/removing classes directly?_
  - you should be able to click the `.switch` many times and it should change between light and dark modes
