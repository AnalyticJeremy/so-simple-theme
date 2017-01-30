#!/usr/bin/env Rscript

# r2jekyll.R
# originally by Nicole White
# https://nicolewhite.github.io/2015/02/07/r-blogging-with-rmarkdown-knitr-jekyll.html

# usage from bash: ./r2jekyll.R my-blog-post.Rmd

.libPaths( c( .libPaths(), "~/Documents/R/win-library/3.3") )
library(knitr)

# Get the filename given as an argument in the shell.
args = commandArgs(TRUE)
filename = args[1]

# Check that it's a .Rmd file.
if(!grepl("\\.Rmd$", filename)) {
  stop("You must specify a .Rmd file.")
}

# Set global chunk options so Knitr puts the images in the right place
fig.path <- paste0("{{ site.url }}/images/", gsub(".Rmd", "-", filename));
knitr::opts_chunk$set(fig.path=fig.path)

# Knit and place in _posts.
dir = paste0("../_posts/articles/") #, Sys.Date(), "-")
output = paste0(dir, sub('.Rmd', '.md', filename))
knit(filename, output)

# Copy .png files to the images directory.
fromdir = "{{ site.url }}/images"
todir = "../images"

pics = list.files(fromdir, ".png")
pics = sapply(pics, function(x) paste(fromdir, x, sep="/"))
file.copy(pics, todir)