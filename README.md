# K&E Technology Consultants — Published Site

This repository contains **only the generated static site** that GitHub Pages serves at `ketech.org`. The Hugo source lives next door in `../ketech-org` (private).

## Updating the site
1) `cd ../ketech-org`  
2) `make install` (first time)  
3) `make build` (or `make publish`) to write into `../ketech-org.github.io`  
4) Commit and push the changes from this repo.

## Local preview
- From this repo: `make serve` (simple static server).  
- From the source repo: `make serve` (Hugo with live reload; also writes to this output).

Please avoid editing files here directly—changes will be overwritten by the next publish.
