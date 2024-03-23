**Links**
- [[Nice latex formatting]] 

# Drawing SMILES
1. Draw the molecule here: https://lifescience.opensource.epam.com/KetcherDemo/index.html?api_path=/v2 ([Github](https://github.com/epam/ketcher))
2. Save it -> Extended SMILES
3. Search the SMILES on https://www.chemspider.com/

### Use: https://orgosolver.com/#namer

IUPAC name to compound:
https://openmolecules.org/name2structure.html
# SMILES
This guy saved us: https://chemicbook.com/2021/02/13/smiles-strings-explained-for-beginners-part-1.html
Whatever you do, do **NOT** write down hydrogens in your smiles code unless you use \[square brackets\]

Start the formatting with three graves (\`\`\`), write *smiles*, all lowercase, like so:
	\`\`\`smiles
		(write formula here)	
	\`\`\`


#### Weird lil' rules and quirks
**Hydrogens are assumed** for every atom unless otherwise specified. Things like an $\ce{OH}$ group are simple written as the $\ce{O}$, as the hydrogen is assumed.

**Single bonds are implied** unless specified

Hyphens, equal signs, and hashtags can be used to signify single, double, and triple bonds respectively.
	You can use the single bonds to make the SMILES code easier to read

You can use fullstops/periods (.) to disconnect molecules
	You can use this to display molecules next to each other
	A new line can also be used instead.
#### Branches: Use (brackets)
e.g. `CC(=O)C` results in
```smiles
	CC(=O)C
```
e.g. `C(C)(C)C(O)C` results in
```smiles
C(C)(C)C(O)C
```

#### Cyclics/rings
Each ring has a start-carbon and an end-carbon. This is signified with an identical number. 
	e.g. The start-carbon has the identifier `1` which means to end that ring, the end-carbon must also have the `1` identifier

e.g. `C1CC1` results in `cyclopropane`
```smiles
C1CC1
```

e.g. `C1=CC=CC=C1` results in `benzene`
```smiles
C1=CC=CC=C1
```

e.g. `C1=C-C2-C=CCC=C2-C1` results in this
```smiles
C1=C-C2-C=CCC=C2-C1
```

e.g. `C1=CC(C2-C=CCC=C2)CC1` results in this
```smiles
C1=CC(C2-C=CCC=C2)CC1
```

##### Lowercase - confusing
e.g. `c1cccc1` results in this
```smiles
c1cccc1
```

##### Invalid examples
To get a ring, there must be two identifiers to signify the start and end.
`C1CCCCC1` will get you `cyclohexane`, but `C1CCCCC` will get you `hexane`
```smiles
C1CCCCC1
CCCCCC
```


#### Elemental atoms and charges
Use \[square brackets\] to write elemental atoms/compounds
e.g. `[S]` gives a lone sulphur while `S` assumes two hydrogens
```smiles
[S]
S
```
e.g. `[OH-]` gives a `hydroxyl anion`
```smiles
[OH-]
```

e.g. `[NH4+]` gives an `ammonium ion`
```smiles
[NH4+]
```



#### Chirality and isomerism
- [[E,Z system]] 
To show an `E` version, use two slashes (/ or \\) both facing the same direction
e.g. `F/C=C/F` and `F\C=C\F` both show `(E)-1,2-difluoroethene`
```smiles
F/C=C/F.F\C=C\F
```
And for `Z`, use two slashes facing opposite directions
e.g. `F\C=C/F` and `F/C=C\F` both show `(Z)-1,2-difluoroethene`
```smiles
F\C=C/F.F/C=C\F
```

To be more accurate, the slashes actually show the direction of the carbon bonds:
e.g. `C/C=C/C=C/F` shows a carbon going UP to two carbons which go UP to two carbons which goes UP to a fluorine
e.g. `C/C=C\C=C\F` shows a carbon going UP to two carbons which go DOWN to two carbons which goes DOWN to a fluorine
```smiles
C/C=C/C=C/F
C/C=C\C=C\F
```
