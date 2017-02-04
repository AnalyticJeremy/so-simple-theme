---
title: "Hello World"
date: "2017-01-14"
layout: post
excerpt: "first post on this blog site"
categories: articles
tags: [sample-post, r-markdown, jekyll]
comments: false
share: true
modified: 2017-02-04 15:18:50 -0600
---

So this is just your basic "hello world" post.  I'm testing my workflow for writing blog posts, which I hope will be...

* write posts using R Markdown
* knit to MD
* commit to GitHub
* host with github.io

## R Markdown

This post is an R Markdown document. Markdown is a simple formatting syntax for authoring HTML, PDF, and MS Word documents.
For more details on using R Markdown see <http://rmarkdown.rstudio.com>.

With R Markdown, I can display and execute chunks of R code.


```r
summary(cars)
```

```
##      speed           dist       
##  Min.   : 4.0   Min.   :  2.00  
##  1st Qu.:12.0   1st Qu.: 26.00  
##  Median :15.0   Median : 36.00  
##  Mean   :15.4   Mean   : 42.98  
##  3rd Qu.:19.0   3rd Qu.: 56.00  
##  Max.   :25.0   Max.   :120.00
```

This greatly increases the reproducibility of the blog posts because the analysis code and the blog post are all in the same document.
The code doesn't have to be copied from R and pasted into an HTML file.  That would make it possible (perhaps even *likely*) that my
R code and results would get out of sync with the results I'm describing in the blog post.  By putting the code right in the blog post,
the two will stay synched up.

### Plots

Not only can these blog posts show the output of R code, they can also show plots!


```r
plot(pressure)
```

![plot of chunk pressure]({{ site.url }}/images/2017-01-14-hello-world-pressure-1.png)

## knitr

Using the [knitr](https://yihui.name/knitr/) package by Yihui Xie, the R Markdown post can be transformed to standard Jekyll markdown.
I'm using a (slightly) modified version of the workflow process created by [Nicole White](https://nicolewhite.github.io/2015/02/07/r-blogging-with-rmarkdown-knitr-jekyll.html).
I made some slight modifications to the `r2jekyll.R` that she developed.  Like everything else associated with the creation of this blog,
you can find this file in my [GitHub repository](https://github.com/AnalyticJeremy/blog).

## Jekyll
The last component of the pipeline is [Jekyll](https://jekyllrb.com/), a Ruby bundle for creating a blog site from static files.  These
files are shared on `github.io`.

## UPDATE!
So I got all of this set up... learning to use Jekyll and getting R Markdown to play nice with it.  Then I learn that Yihui Xie has
just released a new tool called [blogdown](https://github.com/rstudio/blogdown) that simplifies the process of converting R Markdown to
a blog post.  However, his new tool is using [Hugo](https://gohugo.io/) as the static website engine.  Since I've already got all of this
setup, I'm going to keep it.  But if anyone else out there wants to use R Markdown for blogging, I would definitely recommend that you
check out blogdown instead of following my path.
