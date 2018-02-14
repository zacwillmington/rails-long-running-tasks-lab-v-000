# Long-Running Tasks Lab

## Objectives

1. Create a long-running task.
2. Upload and process a CSV file to create songs.

## Overview

In this lab, we're going to augment the song library so that we can
upload a CSV of songs and artists to expand our collection.

You will find a CSV of classic rock songs and artists in `db\songs.csv`. Use it to test your work!

**Note:** This list is provided by [FiveThirtyEight](https://github.com/fivethirtyeight/data/blob/master/classic-rock/classic-rock-song-list.csv) and is available under [Creative Commons Attribution 4.0 International License](http://creativecommons.org/licenses/by/4.0/).

## Instructions

1. Update the songs index view to allow a user to upload a CSV file of songs with artist names
2. Implement the `songs_controller#upload` action, which should create `Song` and `Artist` records from the CSV and redirect to the songs index page
2. Make sure all tests pass!

**Note** We're editing an existing application with some intentionally passing tests.  
