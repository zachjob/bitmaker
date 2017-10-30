# Crowdfunder

## Validations [Need to Have]
* dollar_amount should be a required field for pledges
* Project start date must be in future
* Project end date must be later than start date
* A project's goal must be positive number
Reward dollar_amount must be positive number
* Add error messages to the project, pledge, sign up, and login forms so that if any validations fail the user can see what went wrong

## Accounts [Nice to Have]
* As a user I should be able to visit my profile page and see a list of all the projects I have backed, the total amount I have pledged on the site, and a list of all the projects I own
* As a user, when I go to a project’s page, I should be able to see who the project’s owner is and follow a link to their profile page to see what other projects they own and have backed

## Project Page [Need to Have]
* As a user, when I go to a project’s page, I should see how much money has been pledged so far
* As a user, when I go to a project’s page, it should tell me if I have already backed that project or not
* As a user, when I go to a project’s page, it should tell me how much time is left until the funding deadline (like it does on the project index currently)

## Project Owners [Need to Have]
* As a project owner, when I go to my project’s page, I should see a list of who has backed my project
* As a project owner, when I go to my project’s page, I should see a summary of how many rewards have been claimed [Nice to Have]
* As a project owner, when I create a new project, I should have the option of setting a limit for how many times a specific reward can be claimed
* As a project owner I should be able to post updates on the progress of my project.
* As a backer, when I go to the page of a project I have backed, I should see all the updates from the owner in reverse chronological order
* As a user, when I go to the page of a fully funded project that is past its deadline that I have not backed, I should only see updates about that project from before the funding deadline. Updates for funded projects that were made after funding ended are for backers’ (and the owner’s) eyes only.
* As a backer I should be able to leave a comment on a project I have backed

## Categories [Nice to Have]
* Add a category model (eg. technology, art) and the ability to create a project under a specific category
* Users should be able to browse projects by category

## Homepage  [Need to Have]
* Create a home page for the app that shows a summary of how many projects have been started, how many have been funded, how much money has been pledged towards successful projects in total

## Search [Happy to Have]
* As a user I want to be able to search for projects by name
