***all variables undergo truncation at the upper and lower 1% levels
winsor2 GRP Rate RD Tec Ent Pat avgNEG RDIn, replace cuts (1 99)

***Descriptive statistics of variables
sum2docx Pat avgNEG GRP Rate RD RDexp Tec Ent using D:\a latest paper\first\policy\data\data\sum.docx, replace stats(N mean(%9.3f) sd min(%9.3f) median(%9.3f) max(%9.3f))

***Panel regression analysis
encode province, gen(prov)
xtset prov year

xtreg Pat avgNEG GRP Rate RD Tec Ent, fe r

***Robustness check*******
***Reduced sample
***Removal of data for Shanghai and Guangdong
drop in 41/50
drop in 61/70
xtreg Pat avgNEG GRP Rate RD Tec Ent, fe r

***Removal of data for Beijing
drop in 1/10
xtreg Pat avgNEG GRP Rate RD Tec Ent, fe r

***Adding control variables
xtreg Pat avgNEG GRP Rate RD Tec Ent RDIn, fe r