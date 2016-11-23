# ROR IBM TEST

## Built with:

* ruby 2.3.1
* rails 5.0.0.1
* sqlite

## Goal

Import data from csv file and display it on web pages.

## Premisse

* Using the sqlite database
* Authentication with gem devise
* The import process must be carried out through a rake task
* The imported data should be displayed in a list
* For each item in the list there must be a link to a display page of the item data (show)
* There must be a has_many and belongs_to relationship between State and City

## Plus

* Alternative storage suggestion
* Suggestion for scalability assuming that the csv file can grow exponentially
