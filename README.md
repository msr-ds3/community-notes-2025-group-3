# Replication of "Community-Based Fact-Checking on Twitter's Birdwatch Platform"
### Created by: Ahmed Lotfi and Dereck Taverne

##### Goals:
The main goal is to replicate the findings of this article: [Birdwatch Platform Paper](https://arxiv.org/pdf/2104.07175) (This paper helps social media platforms formulate more helpful fact checks, and proposes challenges with community-based fact-checking)

- Develop an extended research question that builds on the paper's findings

Replicate figures 2-4, 5c, and 7-10, using both Twitter's 2021 birdwatch notes and ratings data and the source data used in the research paper

## Libraries
| Library    | Description |
| -------- | ------- |
| __tidyvese__ | Streamlines data science workflows. | 
| __dplyr:__ | Data wrangling and manipulation. |
| __stringr__ | tools for manipulating strings, and regular expression processing. |
| __lubridate__ | makes working with dates and times more intuitive by providing human-friendly functions to parse, manipulate, and do arithmetic with date-time data. |
| __here__ | helps you build file paths relative to your project root. |
| __scales__ | tools to format, transform, and map data values—like percentages, currency, or log scales |
| __ggplot2:__ | Visualization |
 
## Replication
If you want to replicate what we did, you can run the Makefile in bash using this command:

```bash
make
```

Run Replication.Rmd or use this [link](https://ourreport.netlify.app/) to view the results of the replication without running the code

# Some details about our replication and our extended research question:

## Replication Details:
We used a batch script with cURL to automate the downloading of data from a URL. Specifically, I used the -o flag to save the file in a desired directory (data) with its original name from the server.”

We include format scripts to unzip and filter for desired data from the notes and ratings dataset (in regard we filtered for January 23, 2021, to July 31, 2021)

All the scripts are automatically done by calling the Makefile in bash

## Extended Research:

1. How do features of the notes, such as politeness and specificity in Birdwatch notes, influence their helpfulness ratio (helpful votes to the total count)?  (We can use built-in libraries for politeness in R or trained libraries such as Stanford's Politeness API.) 

	- Possible Independent variables: Framing type, politeness score, specificity score, emotional tone, sentiment, length, etc.

	-  Dependent: helpful ratio 

2. How does the timing of Birdwatch notes (early vs. late after tweet publication) affect their influence on tweet engagement and misinformation spread?

3. Do Birdwatch notes affect the behavior of the original tweet authors (e.g., deleting tweets, posting follow-ups, changing tone)

4. How do different user demographics (e.g., follower count, verification status, tweet topic) influence which tweets get fact-checked on Birdwatch?
