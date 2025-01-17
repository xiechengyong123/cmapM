// the configured options and settings for Tutorial
#define MTOCPP_VERSION_MAJOR 1
#define MTOCPP_VERSION_MINOR 5

// defaults for config files
#define PRINT_FIELDS                         true
#define AUTO_ADD_FIELDS                      false
#define AUTO_ADD_PARAMETERS                  false
#define AUTO_ADD_CLASS_PROPERTIES            false
#define AUTO_ADD_CLASSES                     true
#define COPY_TYPIFIED_FIELD_DOCU             false
#define REMOVE_FIRST_ARG_IN_ABSTRACT_METHODS true
#define ENABLE_OF_TYPE_PARSING               true
#define VOID_TYPE_IN_RETURN_VALUES           false
#define PRINT_RETURN_VALUE_NAME              2
#define GENERATE_SUBFUNTION_DOCUMENTATION    false

// Damn arbitrary flag naming..
#if defined(_WIN32) || defined (_WIN64) // MS VS 2010 (any hopefully others) define _WINXX on windows platforms
	#define WIN32 1
#endif
