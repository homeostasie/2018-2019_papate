# Exec with : R -q --vanilla < bilan-eval.R 

# Notes sur l'évaluation de statistiques

ie1 = c(18.5 , 3.5 , 14 , 14.5, 11 , 2 , 7 ,   12 , 5.5 ,   16 ,
        15   ,   4 , 15 ,  11 , 12 , 5 , 8 , 13.5 ,  20 , 12.5 ,
        10.5 ,  1)

etendu = max(ie1) - min(ie1)
med = median(ie1)
moy = mean(ie1)


pdf(file="ie1.pdf")
    hist(ie1, col="grey", main="Evaluation 1 - Statistiques",
     xlab=NULL, ylab=NULL)
     legend("topleft",c("Etendue = ", etendu, "Moyenne =", moy, "Mediane =", med) )

