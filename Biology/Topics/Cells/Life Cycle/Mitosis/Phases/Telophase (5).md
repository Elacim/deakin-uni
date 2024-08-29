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
?
?
- Cleave furrow forms | In plants, a cellulose cell plate forms between
- Cellular material is shared evenly
- Nucleolus begins forming from cell fragments
- Nuclear envelope begins forming
- Chromosomes unwind into loose chromatin
- A pair of [[Centrosome|centrosomes]] exists in both cells (1 pair/cell)


![[Telophase (5).png]]