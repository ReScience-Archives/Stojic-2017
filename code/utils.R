# ----------------------------------------------------------------------
# Information
# ----------------------------------------------------------------------

# this script contains ggplot theme and color specifications 
# used in plotting figures, as well as some useful functions for plotting


# ----------------------------------------------------------------------
# Loading packages
# ----------------------------------------------------------------------

# list of needed packages
packages <- c('ggplot2' = "2.2.1", 'dplyr' = "0.5.0", 'reshape2' = "1.4.2", 
              'ggrepel' = "0.6.5", 'doParallel' = "1.0.10", 
              'foreach' = "1.4.3", 'doRNG' = "1.6.6")

# installing the packages, attempting to install the exact version, if not
# already present 
if ("devtools" %in% rownames(installed.packages()) == FALSE) {
    install.packages("devtools")
}
library(devtools)
for (p in names(packages)) {
    if (packages[[p]] != installed.packages()[, "Version"][[p]]) {
        install_version(p, version = packages[[p]], 
            repos = "http://cran.us.r-project.org")
    }
}

# loading the packages 
lapply(names(packages), library, character.only = TRUE)


# ----------------------------------------------------------------------
# Fonts and ggplot themes
# ----------------------------------------------------------------------

# font setup
fontSetup <- "Helvetica"
fontSize <- 3.15 
pointSize <- 1.5
themeFontSize <- 12

# theme with font sizes adjusted for plotting figures with tikz device
pdftheme <- 
    theme(
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank(),
        panel.border = element_blank(),
        panel.background = element_blank(),
        axis.line.x = element_blank(),
        axis.line.y = element_blank(),
        axis.ticks.x = element_line(lineend = 4, linetype = 1),
        axis.ticks.y = element_line(lineend = 4, linetype = 1),
        axis.ticks = element_line (colour = "black", size = 0.3), 
        axis.text = element_text(size = themeFontSize, colour = "black"),
        axis.text.x = element_text(vjust = 0.5),
        axis.title = element_text(size = themeFontSize + 1),
        axis.title.y = element_text(vjust = 1.8),
        axis.title.x = element_text(vjust = -.8),
        legend.title = element_blank(),
        legend.justification = c(1,0),
        legend.position = c(1,0),
        legend.text = element_text(size = themeFontSize),
        legend.key = element_rect(fill = "#FFFFFF"),
        legend.key.height = unit(0.8,"line"),
        strip.text = element_text(size = themeFontSize + 1),
        strip.background = element_rect(fill = "#FFFFFF"),
        text = element_text(family = fontSetup),
        validate = TRUE
    )
