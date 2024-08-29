#mitosis/phases #I-PpMATc
###### Links
- [[Mitosis]]
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

![[Pro-metaphase (Late prophase) (2) - Real example.png]]
![[Pro-metaphase (Late prophase) (2) - Diagram.png]]


#### Overview
- Chromosomes are further condensed
- Kinetochore proteins are formed on the centromere
- Nuclear envelope ([[Nucleus]]) fully breaks down, leaving fragments around the cell
- Mitotic spindles grow further and attach to:
	- Some condensing chromosomes by the kinetochore
	- Other spindles from the other pole
