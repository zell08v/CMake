list(APPEND CMAKE_FIND_LIBRARY_PREFIXES lib)
list(APPEND CMAKE_FIND_LIBRARY_SUFFIXES .a)

foreach(path "/does_not_exist" "" "/bin" "/sbin")
  unset(PrefixInPATH_LIBRARY CACHE)
  set(ENV{PATH} "${CMAKE_CURRENT_SOURCE_DIR}${path}")
  find_library(PrefixInPATH_LIBRARY NAMES PrefixInPATH)
  message(STATUS "PrefixInPATH_LIBRARY='${PrefixInPATH_LIBRARY}'")
endforeach()
