Pollen_Ovule_Villefranche <- c(36333,
                               53180,
                               53492,
                               32190,
                               94996,
                               49530,
                               53628,
                               61880,
                               41487,
                               41707)
Pollen_Ovule_Rangueil <- c(33184,
                           5428,
                           42008,
                           1180,
                           8732,
                           5428,
                           38100,
                           16568,
                           22304,
                           5510)
shapiro.test(Pollen_Ovule_Rangueil)
shapiro.test(Pollen_Ovule_Villefranche)
mean(Pollen_Ovule_Rangueil)


Total_Visiteurs_Rangueil <- c(6,	1,	13,	7,	2,	13,	8,	8,	10,	5)
Total_Visiteurs_Villefranche <- c(14,	18,	11,	21,	24,	24,	18,	7,	9,	8)


shapiro.test(Total_Visiteurs_Villefranche)
mean(Total_Visiteurs_Villefranche)

wilcox.test(Total_Visiteurs_Rangueil,Total_Visiteurs_Villefranche, alternative = "less")


Coleopteres_Rangueil <- c(1,	0,	7,	2,	2,	11,	6,	4,	6,	0)
Coleopteres_Villefranche <- c(0,	0,	0,	0,	0,	1,	0,	0,	5,	2)

shapiro.test(Coleopteres_Villefranche)
mean(Coleopteres_Villefranche)
wilcox.test(Coleopteres_Villefranche,Coleopteres_Rangueil, alternative = "less")

Abeilles_Rangueil <- c(0,	0,	3,	0,	0,	0,	0,	0,	0,	0)
Abeilles_Villefranche <- c(1,	2,	2,	1,	0,	0,	0,	0,	0,	0)
Autres_Hymenopteres_Rangueil <- c(4,	0,	0,	2,	0,	0,	0,	0,	0,	5)
Autres_Hymenopteres_Villefranche <- c(11,	6,	4,	10,	10,	8,	6,	3,	2,	4)
Dipteres_Rangueil <- c(1,	0,	1,	2,	0,	0,	2,	3,	1,	0)
Dipteres_Villefranche <- c(2,	10,	5,	10,	14,	15,	12,	4,	2,	2)


mean(Abeilles_Rangueil)
mean(Abeilles_Villefranche)

shapiro.test(Abeilles_Rangueil)
wilcox.test(Abeilles_Rangueil, Abeilles_Villefranche)

mean(Autres_Hymenopteres_Rangueil)
mean(Autres_Hymenopteres_Villefranche)

shapiro.test(Autres_Hymenopteres_Rangueil)
wilcox.test(Autres_Hymenopteres_Rangueil,Autres_Hymenopteres_Villefranche, alternative = "less")


mean(Dipteres_Rangueil)
mean(Dipteres_Villefranche)
shapiro.test(Dipteres_Rangueil)
shapiro.test(Dipteres_Villefranche)


var.test(Dipteres_Rangueil,Dipteres_Villefranche)
t.test(Dipteres_Rangueil,Dipteres_Villefranche,var.equal = FALSE, alternative = "less")
