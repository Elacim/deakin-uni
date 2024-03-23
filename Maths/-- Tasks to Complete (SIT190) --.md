# Table of Contents
- **[[#Week-specific reminders]]**
	- **[[#Archived weeks]]**
- **[[#Assignments]]**
	- **[[#Archived assignments]]**

**Working on it**
```dataview
TABLE todo, due-week, due-date
FROM #portfolio/worksheets
WHERE (finished = false) AND (submitted = false)
SORT file.name
```


**Finished but not submitted (double checking)**
```dataview
TABLE finished, due-date
FROM #portfolio/worksheets
WHERE (finished = true) AND (submitted = false)
SORT file.name
```

**Finished and submitted**
```dataview
TABLE finished
FROM #portfolio/worksheets
WHERE (finished = true) AND (submitted = true)
SORT file.name
```

# Contact Information

# Week-specific reminders

###### 3 (March 11th)

###### 4 (March 18th)

###### 5 (March 25th)

###### Mid-trimester break (March 28th-April 3rd)

###### 6 (April 8th)

###### 7 (April 15th)

###### 8 (April 22nd)

###### 9 (April 29th)

###### 10 (May 6th)

###### 11 (May 13th)

###### 12 (May 20th)
- Revision week
###### Exams (27th-31st May)
- No exam, only portfolio


### Archived weeks
###### 1 (Feb 26th)

###### 2 (March 4th)