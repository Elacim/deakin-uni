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

#### Overview
- Sister chromatids are... :: pulled apart to opposite poles of the cell
- Non-kinetochore [[Mitotic spindle (spindle fibres)|mitotic spindle]] pushes poles apart by lengthening
	- this elongates the cell (opposite poles with chromosomes will turn into)
- 


Initiated by a protease known as separase.
Separase cleaves cohesin, a glue that holds the sister chromatids together
