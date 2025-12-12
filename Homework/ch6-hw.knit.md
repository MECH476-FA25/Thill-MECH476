---
title: 'MECH476: Engineering Data Analysis in R'
subtitle: 'Chapter 6 Homework: Strings, Dates, and Tidying' 
author: 'Michael Thill'
date: '11 December, 2025'
output: pdf_document
---



# Chapter 6 Homework

For this homework assignment, you will use data from Twitter that include
tweets (2011 to 2017) from Colorado senators, which can be downloaded from Canvas.
Just FYI---some tweets were cut off before Twitter's character limit; 
just work with the data you have. The original data are from
[FiveThirtyEight](https://github.com/fivethirtyeight/data/tree/master/twitter-ratio).

When a question asks you to make a plot, remember to set a theme, title, 
subtitle, labels, colors, etc. It is up to you how to personalize your plots, 
but put in some effort and think about making the plotting approach consistent 
throughout the document. For example, you could use the same theme for all
plots. I also like to use the subtitle as a place for the main summary for the
viewer.

\newpage





## Question 1: Hashtags

Within a pipeline using the Colorado-only tweet data, select `text` variable 
and use `stringr::str_extract_all()` with a pattern of `"#(\\d|\\w)+"` to
extract all of the hashtags from the tweets. This will return a list with one
element. How many hashtags were used by Colorado senators?



## Question 2: Fires

Colorado is on fire right now and has experienced many wildfires over the years.
Let's examine senators' tweet activity related to wildfires based on hashtags.
Using the character vector of hashtags you extracted in Question 1, search for
the hashtags that include "fire" or "wildfire". How many hashtags included
"fire"? How many included "wildfire"?



## Question 3: Wildfires 

Now, let's look at general tweets concerning wildfires. First, subset the data
to a dataframe that includes tweets containing the word "wildfire" and their 
corresponding timestamp and user. Specifically, (a) select `text`, `date`, and
`user` and (b) filter to text strings that include the word "wildfire" using
`dplyr::filter()` and `stringr::str_detect()`.



## Question 4: Senators

Which Colorado senator tweets more about wildfires? 



## Question 5: Timing

Using the same `wildfires` dataframe, create a summary table that shows the 
number of tweets containing the word "wildfire" by year (2011-2017). Which year
has the most tweets about wildfires? Why might this be the case? (Hint: Think
about what happened in the previous year.)



\newpage

## Question 6: Monthly tweets

Create a bar chart that answers the question: Are Colorado senators more active
at a certain time of year? Hints: Convert `month` to a factor. Fill by `user`.



\newpage

## Question 7: Hourly tweets

Create a histogram of tweets by hour of day to visualize when our senators are
tweeting. 



\newpage

# Appendix


``` r
# set global options for figures, code, warnings, and messages
knitr::opts_chunk$set(fig.width=6, fig.height=4, fig.path="../figs/",
                      echo=FALSE, warning=FALSE, message=FALSE)

library(tidyverse)
library(lubridate)
library(kableExtra)


twitter_raw_data <- read_csv("../data/senators.csv")

tweets <- twitter_raw_data %>%
  select(created_at, text, user, state) %>%
  drop_na() %>%
  rename(date = created_at) %>%
  mutate(text = str_to_lower(text))

co_tweets <- tweets %>%
  filter(state == "CO") %>%
  mutate(
    date_parsed = mdy_hm(date),
    year_num = year(date_parsed),
    month_name = month(date_parsed, label = TRUE, abbr = TRUE),
    hour_of_day = hour(date_parsed)
  )


# wildfire hashtag list
# filter to tweets concerning wildfires
# number of wildfire tweets by senator
# number of wildfire tweets by year 
# create plot of tweets by month and user
# create plot of cumulative hourly tweets by senator
```
