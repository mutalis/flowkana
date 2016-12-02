# Flow Kana Rails Challenge

Hi! Welcome to the Flow Kana Rails Challenge.

This challenge will test your ability to write clean, intuitive, and well-tested Rails code – all things we care about deeply at Flow Kana!

Please set aside **two hours** to complete this exercise. If you have any questions or get stuck on something (including setup), don't hesitate to send us an email at jobs@flowkana.com. Good luck!

## Introduction

This challenge contains an example Rails app with some pre-existing code and tests. It's a pared down version of our inventory management system with different information about strains, farms, etc.

![](https://www.dropbox.com/s/njgmqrxycnstfsk/Screenshot%202016-12-05%2014.01.05.png?dl=1)

Your task will be to add new behavior to the app! ([Jump to the challenge](#the-challenge))

## Setup

Start by cloning this repository:

```bash
$ git clone git@github.com:flowkana/rails-challenge.git
$ cd rails-challenge
```

When you `cd` into the folder, you should see a message about installing Ruby 2.2.2.

```bash
ruby-2.2.2 is not installed.
To install do: 'rvm install ruby-2.2.2'
```

This will help ensure you're using the right version of Ruby.

> If you don't have RVM installed, follow the instructions on the [RVM website](https://rvm.io/). You're also welcome to use [RBenv](http://rbenv.org/)

Run the following to install Ruby:

```bash
$ rvm install ruby-2.2.2
```

Then create a gemset:

```bash
$ rvm use 2.2.2@flowkana-rails-challenge --create
```

Next, install the `bundler` gem and use it to install the project's dependencies:

```bash
$ gem install bundler
$ bundle install
```

Confirm that Rails works!

```
$ rails --version
Rails 5.0.0.1
```

Now set up our database:

```
$ rake db:migrate
$ rake db:seed
$ rake db:test:prepare
```

This project comes with a test suite written using [RSpec](http://rspec.info/). Run it and ensure that all tests pass!

```bash
$ rspec spec/

...

Finished in 0.29493 seconds (files took 2.69 seconds to load)
23 examples, 0 failures
```

:tada: :clap: :tada:

You're ready to start!

# The Challenge

## Part 1: Only The Emerald Triangle

The [Emerald Triangle](https://en.wikipedia.org/wiki/Emerald_Triangle) is a region in Northern California known for producing the world's finest cannabis. It consists of three counties: Mendocino County, Humboldt County, and Trinity County.

Flow Kana only sources cannabis from the Emerald Triangle – let's make sure our app enforces that!

#### 1. Adding validations

Add server side validations to ensure the Farm `county` field can only have Mendocino, Humboldt, or Trinity as the value.

#### 2. Showing error notifications

If someone tries to enter another county (like Alameda, for example) in the New Farm form, the farm should not get saved. The user should instead see a notification (see `_notifications.html.erb`) saying that the county was invalid.

#### 3. Adding a dropdown

Update the New Farm form to use a dropdown instead of a free text field. The dropdown should only contain the three allowed values described above.

Write a commit for each change. If your code adds behavior to any models, make sure that behavior is tested!

## Part 2: Tracking weight adjustments

Right now any person can go in and change the weight available for each strain. This is very bad for our record keeping purposes!

Let's have it so that the bottom of each Show Strain page (`/strains/:id`) shows a table of **Weight Adjustments** as follows:

![](https://www.dropbox.com/s/9yx1nq9mk8vcrpb/Screenshot%202016-12-05%2018.34.26.png?dl=1)

Note the different copy and style for weight increases and decreases. When a new strain is created, create an adjustment indicating the starting weight. Sort the table by showing the newest adjustments first.

When you're done, write a commit. If your code adds behavior to any models, make sure that behavior is tested!


## Part 3: Reflection and submission

That's it!

To submit your challenge, please **send us an email at jobs@flowkana.com** with the following:

#### Reflection

Tell us what you thought of this coding challenge. What did you like? What did you not like?

#### Code Improvements

If you had more time, are there any pieces of code (ours or yours) that you'd improve? How so and why?

#### Attach your code!

Attach a **zip file** of your project directory. (Please don't create a pull request! It'll be public for all other applicants.)

## Thanks!

We really appreciate you making the time for this coding challenge.

To show our gratitude, we're giving 20% off your first order with us. Use promo code **CODEKANA** at checkout to redeem it :)

Thanks again!

– The Flow Kana Team
