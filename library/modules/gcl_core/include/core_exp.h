#ifndef CORE_EXP_H_
#define CORE_EXP_H_

// =====================================================================================
// MACRO FOR IMPORTING AND EXPORTING FUNCTIONS AND CLASSES FROM DLL
// =====================================================================================
#ifdef gcl_core_EXPORTS // this is the DLL
#if defined _WIN32 || defined _WIN64
#define CORE_LIB __declspec( dllexport )
#else
#define CORE_LIB
#endif
#else // this is the client of the DLL
#if defined _WIN32 || defined _WIN64
#define CORE_LIB __declspec( dllimport )
#else
#define CORE_LIB
#endif
#endif

#endif // CORE_EXP_H_
