#mitosis/phases #I-PpMATc
###### Links
- [[Mitosis]]
- [[Spindle checkpoint]]
```dataviewjs
const pages = dv.pagePaths("#mitosis/phases");

var unsorted = [];
for (const idx in pages.values) {
	var name = dv.page( pages[idx] ).file.name;  // 'Telophase (5)'
	var number = name.slice( -2, -1 );  // '(5)'
	unsorted.push( [name, number] );
}

// Negative values mean it's less-than. Positive: greater.
unsorted.sort( (a,b) => a[1] - b[1] );

var sorted = [];
for (const idx in unsorted ) {
	// unsorted = [ [name, number], [name, number], ...  ]
	sorted.push( "[[" + unsorted[idx][0] + "]]" )
}

dv.paragraph(sorted)

```
- [[Cytokinesis]]

#### Overview
?
?
- Chromosomes are highly condensed
- Chromosomes align in the middle (metaphase plate)
- Kinetochores are attached to fully formed mitotic spindle


![[Metaphase (3).png]]