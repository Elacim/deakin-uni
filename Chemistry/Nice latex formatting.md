**Links**
- [[SMILES formatting]] 

# Chemical formulas
Doing the parentheses for states is annoying. Instead, do this:
$Ag_{s}$ | $O_{2,g}$ | $Cl_{g, 2} == Cl_{2, g}$
Omit the parentheses and if there's a subscript number with a state, simply put a comma between them 

In chemical formulas, with no given state, assume it's aqueous 
$AgNO_{3} + KCl \rightarrow AgCl_{s} + KNO_{3}$

To proclaim a default state, do that at the start with the state and then a colon ($:$)
$_{s} : AgNO_{3, aq} + KCl_{aq} \rightarrow AgCl + KNO_{3, aq}$

To do the two-way arrows found in reversible/equilibrium equations:
`$\rightleftharpoons$` or `$\ce{<=>}$` gets you: $\rightleftharpoons$
You can also do `$\leftrightharpoons$` ($\leftrightharpoons$) but probs do the rightleft one

$H_{2} + Br_{2} \rightarrow 2HBr$ - net forward reaction
$H_{2} + Br_{2} \leftrightarrow 2HBr$ - reaction in both directions
$H_{2} + Br_{2} \leftrightharpoons  2HBr$ - equilibrium

`\ce{}` documentation: https://docs.moodle.org/403/en/Chemistry_notation_using_mhchem
You can use the latex command `$\ce{}$` to quickly write formulas
`$\ce{ H2O <=> H2 + O }$` turns to $\ce{ H2O <=> H2 + O }$

`$\ce{ CO2 + C ->T[above][below] }$` turns to  $\ce{ CO2 + C ->T[above][below] }$

$\ce{ H+ H3O+ NO3- PO4^{3-}}$ is done like:
`\ce{ H+ H3O+ NO3- PO4^{3-}}`
No need for extraneous 


$\geq$ `\geq`
$\leq$ `\leq`




# Skeleton structures
Single/double/triple bonds
	`-/=/#`
	$\ce{-/=/#}$
Branches
	`(Cl)`
	$\ce{(Cl)}$

Wedges (towards page)
	`>`
	$\ce{C(CH3)(>H)}$

Dashes (aways page)
	`<`
	$\ce{C(CH3)(<H)}$

Branch upwards and downwards 
	`^` and `_`
	$\ce{C(CH3)(^{H})(_{CH_{2}})}$

Tetrahedrals
	Top central (^/nothing), towards (<), away (>), central
	Note: This is order agnostic
	$\ce{ C(^{CH_{3}})(>H)(<Cl)(Br) }$
	