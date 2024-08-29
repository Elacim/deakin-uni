#mitosis #I-PpMATc
###### Links
- [[Meiosis]]
- [[Mitosis vs. Meiosis]]
- [[Chromosomes]]
- [[Cell cycle phases]]
- [[Interphase]]
- [[G1 phase]]
	- [[G0 phase]]
	- [[G1 Restriction (R) point]]
- [[S phase]]
- [[G2 Phase]]
	- [[G2 Restriction (R) point]]
- > [[Mitosis|M phase - Mitosis]]
- [[Cytokinesis]]

#### Phases
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

#### Overview
What occurs in mitosis?
?
1. Genome is replicated and condensed into chromosomes
2. Genome is divided into daughter cells
3. Cytokinesis (cell body and structures split evenly between daughter cells)

What phases are in mitosis?
?
- Interphase
- Prophase
- Prometaphase
- Metaphase
- Anaphase
- Telophase


How many times do somatic human cells undergo mitosis? Why?
?
50-80 times as they are genetically programmed to do so. It allows growth to adulthood and wound healing

What happens when a cell has exhausted all replications (mitosis runthroughs)?
?
They undergo senescence, a form of the [[G0 phase]].
They also secrete pro-inflammatory factors to initiate consumption by macrophage.

What does "Cancer is a disease of the cell cycle" mean in terms of mitosis?
?
When mitosis 'goes wrong' (e.g. damaged DNA is not rectified), it can continue to proliferate unbound by usual checks. 

