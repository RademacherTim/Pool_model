#========================================================================================#
# Set working directory
#----------------------------------------------------------------------------------------#
setwd ('~/Desktop/NSC modelling/Pool_model/')

# Read Trevors data for Harvard Forest
#----------------------------------------------------------------------------------------#
data <- read.csv ('../rateMyData4_ADR/BiometricBeta.csv')
# Headers
#----------------------------------------------------------------------------------------#
# Year            - Year of measurement
# Day             - Day of measurement
# Hour            - Hour of measurement
# LAI             - Leaf area index
# sigma           - Standard deviation of Leaf Area Index
# LeafLitFall     - Annual leaf litter
# LF_sigma        - Standard deviation of leaf litter fall
# LeafLitFallBigF - Annual leaf litter
# sigma.1         - Standard deviation of leaf litter fall
# WoodLitFall     - Annual wood litter fall
# Cw              - woody carbon
# CwInc           - woody carbon increment
# phen_marker     - 1 for date of leaf emergence, 2 for date of leaf senescence
# phen_sigma      - Standard deviation of phenological markers
# fApar           - fraction of absorbed photosynthetically active radiation
# Rs1_sav         - soil respiration dataset
# Rs2_Vernon      - soil respiration dataset
# Rs3_mcK         - soil respiration dataset
names (data) <- c ('Year','Day','Hour','LAI','sigma','LeafLitFall','LF_sigma',
                   'LeafLitFallBigF','sigma.1','WoodLitFall','Cw','phen_marker',
                   'phen_sigma','fApar','Rs1_sav','Rs2_Vernon','Rs3_mcK')
# Change -999 to NA
data [data == -999] <- NA
#

plot (x = data$LAI, xlab = 'Year', xaxt = 'n', ylab = 'Leaf Area Index [m2 m-2]')
axis (side = 1, labels = 1992:2009, at = seq (365.25 * 24.0, 157800, by = 365.25 * 24.0))
#========================================================================================#