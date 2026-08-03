# APYXAM05

![Difficulty](https://img.shields.io/badge/Difficulty-Medium-yellow)

## Problem

You are given a table named `PodcastReview` with three columns: `review_id` which is a unique identifier, `podcast_title` which is the name of the podcast, and `rating` which is an integer from one to five. The table contains initial listener ratings for several podcasts.

 **Table: `PodcastReview`** 

```
┌─────────┬───────────────┬───────┐
│review_id│podcast_title  │rating │
├─────────┼───────────────┼───────│
│ 1       │Tech Forward   │ 2     │
│ 2       │The Daily Story│ 5     │
│ 3       │Code Newbie    │ 4     │
└─────────┴───────────────┴───────┘

```

Your task is to update the review with `review_id = 1` and change the `rating` to `4`.

### Expected Output

```
┌───────────┬─────────────────┬────────┐
│ review_id │  podcast_title  │ rating │
├───────────┼─────────────────┼────────┤
│ 1         │ Tech Forward    │ 4      │
│ 2         │ The Daily Story │ 5      │
│ 3         │ Code Newbie     │ 4      │
└───────────┴─────────────────┴────────┘

```

## Solution

**Language:** SQL  
**Runtime:** N/A  
**Memory:** N/A  
**Submitted:** 2026-08-03T06:24:49.444Z  

```sql
-- write your code here
update PodcastReview 
set rating =4 
where review_id = 1;
```

---

[View on CodeChef](https://www.codechef.com/problems/APYXAM05)