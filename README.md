<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
# ERB Templates: North Pole Writing Machine

[See assignment in Alexa.](https://alexa.bitmaker.co/assignments/2620/latest)
=======
# Now Playing

For full assignment instructions, visit the following link:
https://alexa.bitmaker.co/cohorts/67/assignments/2049/latest
>>>>>>> now-playing/master
=======
# DOM Manipulation with Panda the Bear
[See assignment in Alexa.](https://alexa.bitmaker.co/cohorts/67/assignments/2051/latest)
>>>>>>> panda/master
=======
# JavaScript Fundamentals: From Ruby to JavaScript

[See assignment in Alexa.](https://alexa.bitmaker.co/cohorts/67/assignments/2048/latest)
>>>>>>> js-fundamentals/master
=======
[See assignment in Alexa.](https://alexa.bitmaker.co/wdi/june-2017/assignments/2526/latest)
>>>>>>> switch/master
=======
# Pac-Man JS

[See assignment in Alexa.](https://alexa.bitmaker.co/cohorts/67/assignments/2050/latest)
>>>>>>> pacman/master
=======
# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
>>>>>>> rainforest/master
=======
[See assignment in Alexa](https://alexa.bitmaker.co/wdi/may-2017/assignments/2591/latest)
>>>>>>> robot-test/master
=======
# Rocket

Let's write some tests. See the instructions in Alexa.
>>>>>>> rocket/master
=======
# Ruby Iterators: Roll of the Die

Please see [instructions in Alexa.](https://alexa.bitmaker.co/assignments/2458/latest)
>>>>>>> dice-roll/master
=======
# Rubocop

## Introduction

In computer programming, a *linter* is a tool that analyzes code and flags parts of the code that could cause bugs.

*Rubocop* is a popular and easy to use Ruby linter.

## Getting Started

Fork this assignment and then clone it onto your computer.

Rubocop comes packages as a *gem*.

To install it:

```bash
$ gem install rubocop
```

## Try Rubocop Out

Now let's try to use it on some code.

Inside this assignment's repo you'll find `airplane.rb`. This is a little ruby class for operating an airplane. It's not the best code, and rubocop is going to show us why.

Run rubocop against `airplane.rb`:

```bash
$ rubocop airplane.rb
```

You should see Rubocop complain about all manner of things. Rubocop's default is to is to run hundreds of *"cops"* against code, and hand out *"offences"* wherever it sees code it doesn't like. 

Rubocop offences come from the community-driven [Ruby Style Guide](https://github.com/bbatsov/ruby-style-guide). Take a quick look at the [style guide](https://github.com/bbatsov/ruby-style-guide). 

There's many good suggestions, but trying to conform to all of them at this stage will likely be overwhelming, so we've setup a custom rubocop to only hand out offences on major formatting.

## Configuring Rubocop

As you're just starting our your development career, you should ignore most of Rubocop's suggestions. Fortunately it's easy to configure Rubocop and fine tune what it will hand out offences on.

We'll cut down the noise of Rubocop, and only check for code that isn't indented properly. 

We've created a starting rubocop config starting-rubocop-config.yml. Copy this file to your home folder and call it `.rubocop.yml`:

```bash
$ cp starting-rubocop-config.yml ~/.rubocop.yml
```

Rubocop will check your home folder for `~/.rubocop.yml`, and if it finds it, it will use that configuration file.

## Try Rubocop with your new config

Run rubocop against `airplane.rb` again:

```bash
$ rubocop airplane.rb
```

Now Rubocop should only hand out a few offences.

Read each offence carefully to see what line number, and what column Rubocop is complaining about.  Fix the offence and ensure your fix worked by running:

```bash
$ rubocop airplane.rb
```

Keep fixing each offence until all the offences have been fixed. Rubocop should report *no offences* after you've completed this successfully.

## Try Rubocop On Your Own Assignments

Go through each of your Ruby files from your past assignments, run Rubocop against them, and fix the offences.  Commit and push those style improvements to your past repositories.

## Future Assignments

Try to incorporate Rubocop into your workflow for future assignments. It'll make you a better coder!

## Stretch

Integrate rubocop with your editor (i.e. atom).<br>
(We'll leave it to you to figure out how to this).

## Resources

- [Rubocop Documentation](http://rubocop.readthedocs.io/en/latest/)
- [Rubocop Gem](https://github.com/bbatsov/rubocop)
- [Ruby Style Guide](https://github.com/bbatsov/ruby-style-guide)
>>>>>>> rubocop/master
