
```dataviewjs
const page = dv.page('Terms - Genetics'); // Make your search
const headLevel = "# "

const content = await dv.io.load(page.file.path);
const lines = content.split('\n');
var output = [];
var insideHead = false;

	// Displaying the file name
dv.header(3, "[[" + page.file.name + "]]");

for (const line of lines) {
	if (line.startsWith(headLevel)) {
		let l = "- " + line.replace( headLevel, "" )
		output.push( l )
	}
}

dv.paragraph(output.join('\n'));
```
