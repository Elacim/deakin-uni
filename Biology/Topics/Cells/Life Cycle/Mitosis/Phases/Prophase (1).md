#mitosis/phases/1 #I-PpMATc
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

// Negative values mean it's less-than and therefore stays in position of the array. Positive: greater.
unsorted.sort( (a,b) => a[1] - b[1] );

var sorted = [];
for (const idx in unsorted ) {
	// unsorted = [ [name, number], [name, number], ...  ]
	sorted.push( "[[" + unsorted[idx][0] + "]]" )
}

dv.paragraph(sorted)

```
- [[Cytokinesis]]

```dataviewjs
f

```

![[Prophase (1) - Diagram.png]]
![[Cell Division - Prophase real view.png|200]]


Prophase overview :: Nucleolus breaks down (ribosome factory); chromosomes start condensing; mitotic spindle begins to form

Do chromosomes appear in prophase? :: Somewhat. They start to appear, known as condensing, but are not finished until prometaphase.

At what stage is the mitotic spindle in? :: Formation. It is connected to the centrioles and has not yet attached to the chromosomes.


