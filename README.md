---
title: "README"
output: html_document
date: "2022-10-12"
---

This repository contains a solution for Course Project from "Getting And Cleaning Data" course.

## The solution
`run_analysis.R` is the main and only script to be run. It expects the data for the assignment
to be unpacked and placed in the folder "UCI HAR Dataset". It loads all the data,
applies necessary data transformations and outputs two files in the root directory:
- `complete_features.csv` - the first requested tidy dataset
- `averages.csv` - second requested tidy dataset

Both datasets are described in the `CodeBook.md`.
