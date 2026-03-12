#ifndef SAMS_PROFILING_H
#define SAMS_PROFILING_H

#ifdef USE_ROCTX
#include <roctracer/roctx.h>
#define PROF_PUSH(NAME) roctxRangePushA(NAME)
#define PROF_POP() roctxRangePop()
#define PROF_MARK(NAME) roctxMarkA(NAME)
#else
#define PROF_PUSH(NAME) ((void)0)
#define PROF_POP() ((void)0)
#define PROF_MARK(NAME) ((void)0)
#endif

#endif // SAMS_PROFILING_H
