
<!-- README.md is generated from README.Rmd. Please edit that file -->

# NCHS data: public use files (PUFs) from the National Center for Health Statistics (NCHS)

<!-- badges: start -->
<!-- badges: end -->

Selected public use files (PUFs) from the National Center for Health
Statistics (NCHS). These complex surveys can be analyzed using the
`survey` or the `surveytable` packages.

## Installation

You can install `nchsdata` like so:

``` r
install.packages("remotes")
remotes::install_git(
    url = "https://github.com/CDCgov/nchsdata"
    , upgrade = "never")
```

## Documentation

Find the documentation for `nchsdata` here:
<https://cdcgov.github.io/nchsdata>

## Example

The data systems currently available in `nchsdata` are:

    #> ed2020                  National Hospital Ambulatory Medical Care
    #>                         Survey (NHAMCS) Emergency Department (ED) 2020
    #>                         Public Use File (PUF)
    #> namcs2019               National Ambulatory Medical Care Survey (NAMCS)
    #>                         2019 Public Use File (PUF)
    #> nhanes2016s             National Health and Nutrition Examination
    #>                         Survey (NHANES) 2013-2016 Public Use File (PUF)
    #>                         (select variables and observations)
    #> rcc2018                 National Study of Long-Term Care Providers
    #>                         (NSLTCP) Residential Care Community (RCC) 2018
    #>                         Public Use File (PUF)
    #> rccsu2018               National Study of Long-Term Care Providers
    #>                         (NSLTCP) Residential Care Community (RCC)
    #>                         Services User (SU) 2018 Public Use File (PUF)

If you have `surveytable`, you can use it to analyze these surveys. For
example:

``` r
library(nchsdata)
library(surveytable)
```

``` r
set_survey("rccsu2018")
#> * Analyzing RCC SU 2018 PUF
```

Stratified Independent Sampling design svydesign(ids = \~1, strata =
\~pufstrata2 + su_facid, fpc = \~pufpopfac2, weights = \~suwt, data =
d1)
<table class="huxtable" style="border-collapse: collapse; border: 0px; margin-bottom: 2em; margin-top: 2em; ; margin-left: auto; margin-right: auto;  " id="tab:unnamed-chunk-4">
<caption style="caption-side: top; text-align: center;">
Data summary {RCC SU 2018 PUF}
</caption>
<col>
<col>
<tr>
<th style="vertical-align: top; text-align: left; white-space: normal; border-style: solid solid solid solid; border-width: 0.4pt 0.4pt 0.4pt 0.4pt;    padding: 6pt 6pt 6pt 6pt; font-weight: normal;">
What
</th>
<th style="vertical-align: top; text-align: right; white-space: normal; border-style: solid solid solid solid; border-width: 0.4pt 0.4pt 0.4pt 0.4pt;    padding: 6pt 6pt 6pt 6pt; font-weight: normal;">
Value
</th>
</tr>
<tr>
<td style="vertical-align: top; text-align: left; white-space: normal; border-style: solid solid solid solid; border-width: 0.4pt 0.4pt 0.4pt 0.4pt;    padding: 6pt 6pt 6pt 6pt; font-weight: normal;">
Number of variables
</td>
<td style="vertical-align: top; text-align: right; white-space: normal; border-style: solid solid solid solid; border-width: 0.4pt 0.4pt 0.4pt 0.4pt;    padding: 6pt 6pt 6pt 6pt; font-weight: normal;">
81
</td>
</tr>
<tr>
<td style="vertical-align: top; text-align: left; white-space: normal; border-style: solid solid solid solid; border-width: 0.4pt 0.4pt 0.4pt 0.4pt;    padding: 6pt 6pt 6pt 6pt; font-weight: normal;">
Number of observations
</td>
<td style="vertical-align: top; text-align: right; white-space: normal; border-style: solid solid solid solid; border-width: 0.4pt 0.4pt 0.4pt 0.4pt;    padding: 6pt 6pt 6pt 6pt; font-weight: normal;">
904
</td>
</tr>
</table>

    #> * To adjust how counts are rounded, see ?set_count_int

``` r
tab("hbp", drop_na = TRUE)
```

<table class="huxtable" style="border-collapse: collapse; border: 0px; margin-bottom: 2em; margin-top: 2em; ; margin-left: auto; margin-right: auto;  " id="tab:unnamed-chunk-5">
<caption style="caption-side: top; text-align: center;">
Resident diagnosed with high blood pressure (knowns only) {RCC SU 2018
PUF}
</caption>
<col>
<col>
<col>
<col>
<col>
<col>
<col>
<col>
<col>
<tr>
<th style="vertical-align: top; text-align: left; white-space: normal; border-style: solid solid solid solid; border-width: 0.4pt 0.4pt 0.4pt 0.4pt;    padding: 6pt 6pt 6pt 6pt; font-weight: normal;">
Level
</th>
<th style="vertical-align: top; text-align: right; white-space: normal; border-style: solid solid solid solid; border-width: 0.4pt 0.4pt 0.4pt 0.4pt;    padding: 6pt 6pt 6pt 6pt; font-weight: normal;">
Number (000)
</th>
<th style="vertical-align: top; text-align: right; white-space: normal; border-style: solid solid solid solid; border-width: 0.4pt 0.4pt 0.4pt 0.4pt;    padding: 6pt 6pt 6pt 6pt; font-weight: normal;">
SE (000)
</th>
<th style="vertical-align: top; text-align: right; white-space: normal; border-style: solid solid solid solid; border-width: 0.4pt 0.4pt 0.4pt 0.4pt;    padding: 6pt 6pt 6pt 6pt; font-weight: normal;">
LL (000)
</th>
<th style="vertical-align: top; text-align: right; white-space: normal; border-style: solid solid solid solid; border-width: 0.4pt 0.4pt 0.4pt 0.4pt;    padding: 6pt 6pt 6pt 6pt; font-weight: normal;">
UL (000)
</th>
<th style="vertical-align: top; text-align: right; white-space: normal; border-style: solid solid solid solid; border-width: 0.4pt 0.4pt 0.4pt 0.4pt;    padding: 6pt 6pt 6pt 6pt; font-weight: normal;">
Percent
</th>
<th style="vertical-align: top; text-align: right; white-space: normal; border-style: solid solid solid solid; border-width: 0.4pt 0.4pt 0.4pt 0.4pt;    padding: 6pt 6pt 6pt 6pt; font-weight: normal;">
SE
</th>
<th style="vertical-align: top; text-align: right; white-space: normal; border-style: solid solid solid solid; border-width: 0.4pt 0.4pt 0.4pt 0.4pt;    padding: 6pt 6pt 6pt 6pt; font-weight: normal;">
LL
</th>
<th style="vertical-align: top; text-align: right; white-space: normal; border-style: solid solid solid solid; border-width: 0.4pt 0.4pt 0.4pt 0.4pt;    padding: 6pt 6pt 6pt 6pt; font-weight: normal;">
UL
</th>
</tr>
<tr>
<td style="vertical-align: top; text-align: left; white-space: normal; border-style: solid solid solid solid; border-width: 0.4pt 0.4pt 0.4pt 0.4pt;    padding: 6pt 6pt 6pt 6pt; font-weight: normal;">
FALSE
</td>
<td style="vertical-align: top; text-align: right; white-space: normal; border-style: solid solid solid solid; border-width: 0.4pt 0.4pt 0.4pt 0.4pt;    padding: 6pt 6pt 6pt 6pt; font-weight: normal;">
404
</td>
<td style="vertical-align: top; text-align: right; white-space: normal; border-style: solid solid solid solid; border-width: 0.4pt 0.4pt 0.4pt 0.4pt;    padding: 6pt 6pt 6pt 6pt; font-weight: normal;">
25
</td>
<td style="vertical-align: top; text-align: right; white-space: normal; border-style: solid solid solid solid; border-width: 0.4pt 0.4pt 0.4pt 0.4pt;    padding: 6pt 6pt 6pt 6pt; font-weight: normal;">
357
</td>
<td style="vertical-align: top; text-align: right; white-space: normal; border-style: solid solid solid solid; border-width: 0.4pt 0.4pt 0.4pt 0.4pt;    padding: 6pt 6pt 6pt 6pt; font-weight: normal;">
457
</td>
<td style="vertical-align: top; text-align: right; white-space: normal; border-style: solid solid solid solid; border-width: 0.4pt 0.4pt 0.4pt 0.4pt;    padding: 6pt 6pt 6pt 6pt; font-weight: normal;">
44.8
</td>
<td style="vertical-align: top; text-align: right; white-space: normal; border-style: solid solid solid solid; border-width: 0.4pt 0.4pt 0.4pt 0.4pt;    padding: 6pt 6pt 6pt 6pt; font-weight: normal;">
2.6
</td>
<td style="vertical-align: top; text-align: right; white-space: normal; border-style: solid solid solid solid; border-width: 0.4pt 0.4pt 0.4pt 0.4pt;    padding: 6pt 6pt 6pt 6pt; font-weight: normal;">
39.7
</td>
<td style="vertical-align: top; text-align: right; white-space: normal; border-style: solid solid solid solid; border-width: 0.4pt 0.4pt 0.4pt 0.4pt;    padding: 6pt 6pt 6pt 6pt; font-weight: normal;">
50  
</td>
</tr>
<tr>
<td style="vertical-align: top; text-align: left; white-space: normal; border-style: solid solid solid solid; border-width: 0.4pt 0.4pt 0.8pt 0.4pt;    padding: 6pt 6pt 6pt 6pt; font-weight: normal;">
TRUE
</td>
<td style="vertical-align: top; text-align: right; white-space: normal; border-style: solid solid solid solid; border-width: 0.4pt 0.4pt 0.8pt 0.4pt;    padding: 6pt 6pt 6pt 6pt; font-weight: normal;">
498
</td>
<td style="vertical-align: top; text-align: right; white-space: normal; border-style: solid solid solid solid; border-width: 0.4pt 0.4pt 0.8pt 0.4pt;    padding: 6pt 6pt 6pt 6pt; font-weight: normal;">
26
</td>
<td style="vertical-align: top; text-align: right; white-space: normal; border-style: solid solid solid solid; border-width: 0.4pt 0.4pt 0.8pt 0.4pt;    padding: 6pt 6pt 6pt 6pt; font-weight: normal;">
449
</td>
<td style="vertical-align: top; text-align: right; white-space: normal; border-style: solid solid solid solid; border-width: 0.4pt 0.4pt 0.8pt 0.4pt;    padding: 6pt 6pt 6pt 6pt; font-weight: normal;">
552
</td>
<td style="vertical-align: top; text-align: right; white-space: normal; border-style: solid solid solid solid; border-width: 0.4pt 0.4pt 0.8pt 0.4pt;    padding: 6pt 6pt 6pt 6pt; font-weight: normal;">
55.2
</td>
<td style="vertical-align: top; text-align: right; white-space: normal; border-style: solid solid solid solid; border-width: 0.4pt 0.4pt 0.8pt 0.4pt;    padding: 6pt 6pt 6pt 6pt; font-weight: normal;">
2.6
</td>
<td style="vertical-align: top; text-align: right; white-space: normal; border-style: solid solid solid solid; border-width: 0.4pt 0.4pt 0.8pt 0.4pt;    padding: 6pt 6pt 6pt 6pt; font-weight: normal;">
50  
</td>
<td style="vertical-align: top; text-align: right; white-space: normal; border-style: solid solid solid solid; border-width: 0.4pt 0.4pt 0.8pt 0.4pt;    padding: 6pt 6pt 6pt 6pt; font-weight: normal;">
60.3
</td>
</tr>
<tr>
<td colspan="9" style="vertical-align: top; text-align: left; white-space: normal; border-style: solid solid solid solid; border-width: 0.8pt 0pt 0pt 0pt;    padding: 6pt 6pt 6pt 6pt; font-weight: normal;">
(No flags.)
</td>
</tr>
</table>

## Related packages

In all, there are 3 related packages:

-   [surveytable: functions for tabulating survey
    estimates](https://cdcgov.github.io/surveytable/)
-   [nchsdata: public use files (PUFs) from the the National Center for
    Health Statistics (NCHS)](https://cdcgov.github.io/nchsdata/)
-   [importsurvey: functions for importing data into
    R](https://cdcgov.github.io/importsurvey/)

`importsurvey` imports surveys into R that are currently in other
formats. Public versions of surveys that have already been imported are
stored in `nchsdata`. Tables of estimates can be generated using
`surveytable`.

<!-- CDC standard text -->

## Public Domain Standard Notice

This repository constitutes a work of the United States Government and
is not subject to domestic copyright protection under 17 USC § 105. This
repository is in the public domain within the United States, and
copyright and related rights in the work worldwide are waived through
the [CC0 1.0 Universal public domain
dedication](https://creativecommons.org/publicdomain/zero/1.0/). All
contributions to this repository will be released under the CC0
dedication. By submitting a pull request you are agreeing to comply with
this waiver of copyright interest.

## License Standard Notice

The repository utilizes code licensed under the terms of the Apache
Software License and therefore is licensed under ASL v2 or later.

This source code in this repository is free: you can redistribute it
and/or modify it under the terms of the Apache Software License version
2, or (at your option) any later version.

This source code in this repository is distributed in the hope that it
will be useful, but WITHOUT ANY WARRANTY; without even the implied
warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
Apache Software License for more details.

You should have received a copy of the Apache Software License along
with this program. If not, see
<http://www.apache.org/licenses/LICENSE-2.0.html>

The source code forked from other open source projects will inherit its
license.

## Privacy Standard Notice

This repository contains only non-sensitive, publicly available data and
information. All material and community participation is covered by the
[Disclaimer](https://github.com/CDCgov/template/blob/master/DISCLAIMER.md)
and [Code of
Conduct](https://github.com/CDCgov/template/blob/master/code-of-conduct.md).
For more information about CDC’s privacy policy, please visit
[http://www.cdc.gov/other/privacy.html](https://www.cdc.gov/other/privacy.html).

## Contributing Standard Notice

Anyone is encouraged to contribute to the repository by
[forking](https://help.github.com/articles/fork-a-repo) and submitting a
pull request. (If you are new to GitHub, you might start with a [basic
tutorial](https://help.github.com/articles/set-up-git).) By contributing
to this project, you grant a world-wide, royalty-free, perpetual,
irrevocable, non-exclusive, transferable license to all users under the
terms of the [Apache Software License
v2](http://www.apache.org/licenses/LICENSE-2.0.html) or later.

All comments, messages, pull requests, and other submissions received
through CDC including this GitHub page may be subject to applicable
federal law, including but not limited to the Federal Records Act, and
may be archived. Learn more at <http://www.cdc.gov/other/privacy.html>.

## Records Management Standard Notice

This repository is not a source of government records, but is a copy to
increase collaboration and collaborative potential. All government
records will be published through the [CDC web
site](http://www.cdc.gov).

## Additional Standard Notices

Please refer to [CDC’s Template
Repository](https://github.com/CDCgov/template) for more information
about [contributing to this
repository](https://github.com/CDCgov/template/blob/master/CONTRIBUTING.md),
[public domain notices and
disclaimers](https://github.com/CDCgov/template/blob/master/DISCLAIMER.md),
and [code of
conduct](https://github.com/CDCgov/template/blob/master/code-of-conduct.md).
