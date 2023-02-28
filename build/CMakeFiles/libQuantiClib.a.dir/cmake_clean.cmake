file(REMOVE_RECURSE
  "libQuantiClib.a"
  "libQuantiClib.a.pdb"
)

# Per-language clean rules from dependency scanning.
foreach(lang C)
  include(CMakeFiles/libQuantiClib.a.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
