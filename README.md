
<!-- README.md is generated from README.Rmd. Please edit that file -->

# tidyGDPR

The General Data Protection Regulation (GDPR) as ‘tidy’ objects.

## Source

<http://openscience.adaptcentre.ie/projects/GDPRtEXT/>, made available
under the [CC-by-4.0](https://creativecommons.org/licenses/by/4.0/)
license.

## Installation

You can install the development version of tidyGDPR from
[GitHub](https://github.com/jonocarroll/tidyGDPR) with:

``` r
devtools::install_github("jonocarroll/tidyGDPR")
```

(please accept all cookies and agree to the terms and conditions.)

## Contents

`tidyGDPR` contains the recitals, chapters, and citations from the GDPR
regulations as individual `tibble`s. The recitals

``` r
GDPR_recitals
#> General Data Protection Regulation ( GDPR 2016/679 )
#> Dated: 27/04/2016 , Updated: 27/04/2016 
#> # A tibble: 173 x 3
#>    number text                                                       type 
#>  * <chr>  <chr>                                                      <chr>
#>  1 1      The protection of natural persons in relation to the proc… reci…
#>  2 2      The principles of, and rules on the protection of natural… reci…
#>  3 3      Directive 95/46/EC of the European Parliament and of the … reci…
#>  4 4      The processing of personal data should be designed to ser… reci…
#>  5 5      The economic and social integration resulting from the fu… reci…
#>  6 6      Rapid technological developments and globalisation have b… reci…
#>  7 7      Those developments require a strong and more coherent dat… reci…
#>  8 8      Where this Regulation provides for specifications or rest… reci…
#>  9 9      The objectives and principles of Directive 95/46/EC remai… reci…
#> 10 10     In order to ensure a consistent and high level of protect… reci…
#> # ... with 163 more rows
```

The chapters (articles, points, subpoints)

``` r
GDPR_chapters
#> General Data Protection Regulation ( GDPR 2016/679 )
#> Dated: 27/04/2016 , Updated: 27/04/2016 
#> # A tibble: 11 x 4
#>    number title                                      type   contents      
#>    <chr>  <chr>                                      <chr>  <list>        
#>  1 I      General provisions                         chapt… <data.frame […
#>  2 II     Principles                                 chapt… <data.frame […
#>  3 III    Rights of the data subject                 chapt… <data.frame […
#>  4 IV     Controller and processor                   chapt… <data.frame […
#>  5 V      Transfers of personal data to third count… chapt… <data.frame […
#>  6 VI     Independent supervisory authorities        chapt… <data.frame […
#>  7 VII    Cooperation and consistency                chapt… <data.frame […
#>  8 VIII   Remedies, liability and penalties          chapt… <data.frame […
#>  9 IX     Provisions relating to specific processin… chapt… <data.frame […
#> 10 X      Delegated acts and implementing acts       chapt… <data.frame […
#> 11 XI     Final provisions                           chapt… <data.frame […
```

and the citations

``` r
GDPR_citations
#> General Data Protection Regulation ( GDPR 2016/679 )
#> Dated: 27/04/2016 , Updated: 27/04/2016 
#> # A tibble: 21 x 3
#>    number text                                                       type 
#>    <chr>  <chr>                                                      <chr>
#>  1 1      OJ C 229, 31.7.2012, p. 90.                                cita…
#>  2 2      OJ C 391, 18.12.2012, p. 127.                              cita…
#>  3 3      Position of the European Parliament of 12 March 2014 (not… cita…
#>  4 4      Directive 95/46/EC of the European Parliament and of the … cita…
#>  5 5      Commission Recommendation of 6 May 2003 concerning the de… cita…
#>  6 6      Regulation (EC) No 45/2001 of the European Parliament and… cita…
#>  7 7      Directive (EU) 2016/680 of the European Parliament and of… cita…
#>  8 8      Directive 2000/31/EC of the European Parliament and of th… cita…
#>  9 9      Directive 2011/24/EU of the European Parliament and of th… cita…
#> 10 10     Council Directive 93/13/EEC of 5 April 1993 on unfair ter… cita…
#> # ... with 11 more rows
```

Also included is the list of all these components, `GDPR_list`.

`GDPR_chapters` contains a column of `contents` which contains deeply
nested `data.frame`s of articles, points, and subpoints.

A helpful extractor function can extract articles and (any subset of)
points from within chapters, by number

``` r
# list all articles in chapter (1)
chapter_components(chapter = 1) 
#> [1] "Subject-matter and objectives" "Material scope"               
#> [3] "Territorial scope"             "Definitions"

# extract all points in (1, 1)
chapter_components(chapter = 1, article = 1) 
#> [1] "This Regulation lays down rules relating to the protection of natural persons with regard to the processing of personal data and rules relating to the free movement of personal data."                     
#> [2] "This Regulation protects fundamental rights and freedoms of natural persons and in particular their right to the protection of personal data."                                                              
#> [3] "The free movement of personal data within the Union shall be neither restricted nor prohibited for reasons connected with the protection of natural persons with regard to the processing of personal data."

# extract (1, 1, 2)
chapter_components(chapter = 1, article = 1, points = 2) 
#> [1] "This Regulation protects fundamental rights and freedoms of natural persons and in particular their right to the protection of personal data."
```

If you wish to obtain the full `GDPR_list` and these components yourself
(in the case they are updated) `get_GDPR()` returns a list of each of
the above data components.

## Future Work

  - Ability to search the fulltext and return
    chapter/article/point/subpoint.
  - ?
