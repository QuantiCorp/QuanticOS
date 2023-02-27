file(REMOVE_RECURSE
  "QuantiKernel.kernel"
  "QuantiKernel.kernel.pdb"
)

# Per-language clean rules from dependency scanning.
foreach(lang ASM C)
  include(CMakeFiles/QuantiKernel.kernel.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
