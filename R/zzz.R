.onAttach = function(libname, pkgname) {
  packageStartupMessage("\nThere are 3 related packages:"
          , "\n* surveytable: functions for tabulating survey estimates"
          , "\n* nchsdata: public use files (PUFs) from the the National Center for Health Statistics (NCHS)"
          , "\n* importsurvey: functions for importing data into R"
          , "\n\nYou've just loaded ", pkgname, "."
  )
}
