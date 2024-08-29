###### Links
- [[Dataview - dv.xyz]]
- [[Dataview - file.name]]

###### Tips
```dataviewjs
const page = dv.current();
var output = [];

const content = await dv.io.load(page.file.path);
const lines = content.split('\n');

for (const line of lines) {
	if (line.startsWith("#")) {
		if (line.startsWith("###### Links")) {
			continue;
		}
		else if (line.startsWith("###### Tips")) {
			continue;
		}
		else {
			output.push( "[[#" + line + "]]" )
		}
	}
}

dv.paragraph( output )

```

##### Sort pages by ascending/descending order given alternative locating range
```dataview-js
const pages = dv.pagePaths("#mitosis/phases");

// 'Telophase (5)' given locator=[-2,-1] will give the number 5
// This number/unicode id will be used to sort.
const locator = [ -2, -1 ];

var unsorted = [];
for (const idx in pages.values) {
	var name = dv.page( pages[idx] ).file.name;  // 'Telophase (5)'
	var number = name.slice( locator[0], locator[1] );  // '(5)'
	unsorted.push( [name, number] );
}

// In .sort() :: Negative values = less-than. Positive = greater.
unsorted.sort( (a,b) => a[1] - b[1] ); // ascending order
// unsorted.sort( (a,b) => b[1] - a[1] ); // descending order

var sorted = [];
for (const idx in unsorted ) {
	// unsorted = [ [name, number], [name, number], ...  ]
	sorted.push( "[[" + unsorted[idx][0] + "]]" )
}

dv.paragraph(sorted)

```

##### Ignore a folder
```
FROM [[filename]] AND !”NotThis”
```

##### View file headings
https://s-blu.github.io/obsidian_dataview_example_vault/20%20Dataview%20Queries/Show%20all%20list%20items%20under%20a%20specific%20heading/

```
// View the headings of a file
// https://forum.obsidian.md/t/dataview-that-presents-files-from-current-file-as-table/46329/2
TABLE WITHOUT ID
	Heading,
	length(filter(rows.Tasks, (r) => r.completed)) AS "items completed",
	length(rows.Tasks) AS "overall items"
WHERE file.path = this.file.path
FLATTEN file.tasks as Tasks
GROUP BY meta(Tasks.section).subpath AS Heading
```

##### Print out heading contents
```
dataviewjs
// https://www.reddit.com/r/ObsidianMD/comments/194j3uy/dataviewjs_query_for_extract_content_under_a/
const page = dv.page('Terms - Genetics'); // Make your search
const headLevel = "# "

const content = await dv.io.load(page.file.path);
const lines = content.split('\n');
var output = [];
var insideHead = false;

	// Displaying the file name
dv.header(3, page.file.name);

for (const line of lines) {
	if (line.startsWith(headLevel)) {
		insideHead = true;
	} else if (line.startsWith(headLevel) && insideHead) {
		insideHead = false;
		break;  // Exit the loop when the next heading is encountered
	} else if (insideHead) {
		output.push(line);
	}
}

dv.paragraph(output.join('\n'));
```






```dataview
TABLE WITHOUT ID
	Heading,
	length(filter(rows.Tasks, (r) => r.completed)) AS "items completed",
	length(rows.Tasks) AS "overall items"
WHERE file.path = this.file.path
FLATTEN file.tasks as Tasks
GROUP BY meta(Tasks.section).subpath AS Heading
```