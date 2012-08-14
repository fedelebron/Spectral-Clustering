AC_INIT([Spectral Clustering in C++], [0.1])
AC_PREREQ([2.61])
AM_INIT_AUTOMAKE([-Wall no-define foreign])
AC_PROG_CXX
AC_LANG([C++])


AC_DEFUN([AX_CHECK_COMPILE_FLAG],
[AC_PREREQ(2.59)dnl for _AC_LANG_PREFIX
AS_VAR_PUSHDEF([CACHEVAR],[ax_cv_check_[]_AC_LANG_ABBREV[]flags_$4_$1])dnl
AC_CACHE_CHECK([whether _AC_LANG compiler accepts $1], CACHEVAR, [
  ax_check_save_flags=$[]_AC_LANG_PREFIX[]FLAGS
  _AC_LANG_PREFIX[]FLAGS="$[]_AC_LANG_PREFIX[]FLAGS $4 $1"
  AC_COMPILE_IFELSE([AC_LANG_PROGRAM()],
    [AS_VAR_SET(CACHEVAR,[yes])],
    [AS_VAR_SET(CACHEVAR,[no])])
  _AC_LANG_PREFIX[]FLAGS=$ax_check_save_flags])
AS_IF([test x"AS_VAR_GET(CACHEVAR)" = xyes],
  [m4_default([$2], :)],
  [m4_default([$3], :)])
AS_VAR_POPDEF([CACHEVAR])dnl
])dnl AX_CHECK_COMPILE_FLAGS


AX_CHECK_COMPILE_FLAG([-std=c++0x], [CXXFLAGS="${CXXFLAGS} -std=c++0x"], AC_MSG_ERROR([Support for C++0x (C++11) is required from your C++ compiler.]))
AC_CHECK_HEADER([Eigen/Dense], [], AC_MSG_ERROR([The Eigen library headers are required for compilation.]))
AC_CHECK_HEADER([boost/lexical_cast.hpp], [], AC_MSG_ERROR([The Boost lexical_cast headers are required for compilation.]))
AX_BOOST_PROGRAM_OPTIONS

AC_DEFUN([PYTHON_MODULE], [
AC_REQUIRE([AM_PATH_PYTHON])
AC_MSG_CHECKING(for $1 python module)
$PYTHON -c "import $1" 2>/dev/null
if test $? == 0; then
  AC_MSG_RESULT(found)
else
  AC_MSG_FAILURE(not found)
fi
])

PYTHON_MODULE([numpy])
PYTHON_MODULE([matplotlib])

AC_CONFIG_FILES([Makefile])
AC_OUTPUT
