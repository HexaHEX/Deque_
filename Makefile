MAKEFILE      = Makefile

CXX           = g++

CXXFLAGS      = -pipe -g -fprofile-arcs -ftest-coverage -O0 -std=c++11 -m64 -fPIC -pipe -g -std=gnu++11 -Wall -W -fPIC $(DEFINES)
DEL_FILE      = rm -f
CHK_DIR_EXISTS= test -d
MKDIR         = mkdir -p

DEL_FILE      = rm -f
SYMLINK       = ln -f -s
DEL_DIR       = rmdir
MOVE          = mv -f

LINK          = g++
LFLAGS        = -lgcov --coverage

####### Output directory

OBJ_DIR   = ./Build

####### Files

SOURCES       = ./catch2/internal/catch_approx.cpp \
		./catch2/internal/catch_assertionhandler.cpp \
		./catch2/internal/catch_assertionresult.cpp \
		./catch2/internal/catch_capture_matchers.cpp \
		./catch2/internal/catch_commandline.cpp \
		./catch2/internal/catch_common.cpp \
		./catch2/internal/catch_config.cpp \
		./catch2/internal/catch_console_colour.cpp \
		./catch2/internal/catch_context.cpp \
		./catch2/internal/catch_debug_console.cpp \
		./catch2/internal/catch_debugger.cpp \
		./catch2/internal/catch_decomposer.cpp \
		./catch2/internal/catch_enforce.cpp \
		./catch2/internal/catch_enum_values_registry.cpp \
		./catch2/internal/catch_errno_guard.cpp \
		./catch2/internal/catch_exception_translator_registry.cpp \
		./catch2/internal/catch_fatal_condition.cpp \
		./catch2/internal/catch_generators.cpp \
		./catch2/internal/catch_interfaces_capture.cpp \
		./catch2/internal/catch_interfaces_config.cpp \
		./catch2/internal/catch_interfaces_exception.cpp \
		./catch2/internal/catch_interfaces_registry_hub.cpp \
		./catch2/internal/catch_interfaces_reporter.cpp \
		./catch2/internal/catch_interfaces_runner.cpp \
		./catch2/internal/catch_interfaces_testcase.cpp \
		./catch2/internal/catch_leak_detector.cpp \
		./catch2/internal/catch_list.cpp \
		./catch2/internal/catch_matchers.cpp \
		./catch2/internal/catch_matchers_exception.cpp \
		./catch2/internal/catch_matchers_floating.cpp \
		./catch2/internal/catch_matchers_generic.cpp \
		./catch2/internal/catch_matchers_string.cpp \
		./catch2/internal/catch_message.cpp \
		./catch2/internal/catch_output_redirect.cpp \
		./catch2/internal/catch_polyfills.cpp \
		./catch2/internal/catch_random_number_generator.cpp \
		./catch2/internal/catch_registry_hub.cpp \
		./catch2/internal/catch_reporter_registry.cpp \
		./catch2/internal/catch_result_type.cpp \
		./catch2/internal/catch_run_context.cpp \
		./catch2/internal/catch_section.cpp \
		./catch2/internal/catch_section_info.cpp \
		./catch2/internal/catch_session.cpp \
		./catch2/internal/catch_singletons.cpp \
		./catch2/internal/catch_startup_exception_registry.cpp \
		./catch2/internal/catch_stream.cpp \
		./catch2/internal/catch_string_manip.cpp \
		./catch2/internal/catch_stringref.cpp \
		./catch2/internal/catch_tag_alias.cpp \
		./catch2/internal/catch_tag_alias_autoregistrar.cpp \
		./catch2/internal/catch_tag_alias_registry.cpp \
		./catch2/internal/catch_test_case_info.cpp \
		./catch2/internal/catch_test_case_registry_impl.cpp \
		./catch2/internal/catch_test_case_tracker.cpp \
		./catch2/internal/catch_test_registry.cpp \
		./catch2/internal/catch_test_spec.cpp \
		./catch2/internal/catch_test_spec_parser.cpp \
		./catch2/internal/catch_timer.cpp \
		./catch2/internal/catch_tostring.cpp \
		./catch2/internal/catch_totals.cpp \
		./catch2/internal/catch_uncaught_exceptions.cpp \
		./catch2/internal/catch_version.cpp \
		./catch2/internal/catch_wildcard_pattern.cpp \
		./catch2/internal/catch_xmlwriter.cpp \
		./catch2/reporters/catch_reporter_bases.cpp \
		./catch2/reporters/catch_reporter_compact.cpp \
		./catch2/reporters/catch_reporter_console.cpp \
		./catch2/reporters/catch_reporter_junit.cpp \
		./catch2/reporters/catch_reporter_listening.cpp \
		./catch2/reporters/catch_reporter_xml.cpp \
		./deque.cpp \
		./deque_tests/deque_exception_test.cpp \
		./deque_tests/deque_test.cpp \
		./deque_tests/dequeiterator_test.cpp \
		./dequeexception.cpp \
		./main.cpp 

OBJECTS       = $(OBJ_DIR)/catch_approx.o \
		$(OBJ_DIR)/catch_assertionhandler.o \
		$(OBJ_DIR)/catch_assertionresult.o \
		$(OBJ_DIR)/catch_capture_matchers.o \
		$(OBJ_DIR)/catch_commandline.o \
		$(OBJ_DIR)/catch_common.o \
		$(OBJ_DIR)/catch_config.o \
		$(OBJ_DIR)/catch_console_colour.o \
		$(OBJ_DIR)/catch_context.o \
		$(OBJ_DIR)/catch_debug_console.o \
		$(OBJ_DIR)/catch_debugger.o \
		$(OBJ_DIR)/catch_decomposer.o \
		$(OBJ_DIR)/catch_enforce.o \
		$(OBJ_DIR)/catch_enum_values_registry.o \
		$(OBJ_DIR)/catch_errno_guard.o \
		$(OBJ_DIR)/catch_exception_translator_registry.o \
		$(OBJ_DIR)/catch_fatal_condition.o \
		$(OBJ_DIR)/catch_generators.o \
		$(OBJ_DIR)/catch_interfaces_capture.o \
		$(OBJ_DIR)/catch_interfaces_config.o \
		$(OBJ_DIR)/catch_interfaces_exception.o \
		$(OBJ_DIR)/catch_interfaces_registry_hub.o \
		$(OBJ_DIR)/catch_interfaces_reporter.o \
		$(OBJ_DIR)/catch_interfaces_runner.o \
		$(OBJ_DIR)/catch_interfaces_testcase.o \
		$(OBJ_DIR)/catch_leak_detector.o \
		$(OBJ_DIR)/catch_list.o \
		$(OBJ_DIR)/catch_matchers.o \
		$(OBJ_DIR)/catch_matchers_exception.o \
		$(OBJ_DIR)/catch_matchers_floating.o \
		$(OBJ_DIR)/catch_matchers_generic.o \
		$(OBJ_DIR)/catch_matchers_string.o \
		$(OBJ_DIR)/catch_message.o \
		$(OBJ_DIR)/catch_output_redirect.o \
		$(OBJ_DIR)/catch_polyfills.o \
		$(OBJ_DIR)/catch_random_number_generator.o \
		$(OBJ_DIR)/catch_registry_hub.o \
		$(OBJ_DIR)/catch_reporter_registry.o \
		$(OBJ_DIR)/catch_result_type.o \
		$(OBJ_DIR)/catch_run_context.o \
		$(OBJ_DIR)/catch_section.o \
		$(OBJ_DIR)/catch_section_info.o \
		$(OBJ_DIR)/catch_session.o \
		$(OBJ_DIR)/catch_singletons.o \
		$(OBJ_DIR)/catch_startup_exception_registry.o \
		$(OBJ_DIR)/catch_stream.o \
		$(OBJ_DIR)/catch_string_manip.o \
		$(OBJ_DIR)/catch_stringref.o \
		$(OBJ_DIR)/catch_tag_alias.o \
		$(OBJ_DIR)/catch_tag_alias_autoregistrar.o \
		$(OBJ_DIR)/catch_tag_alias_registry.o \
		$(OBJ_DIR)/catch_test_case_info.o \
		$(OBJ_DIR)/catch_test_case_registry_impl.o \
		$(OBJ_DIR)/catch_test_case_tracker.o \
		$(OBJ_DIR)/catch_test_registry.o \
		$(OBJ_DIR)/catch_test_spec.o \
		$(OBJ_DIR)/catch_test_spec_parser.o \
		$(OBJ_DIR)/catch_timer.o \
		$(OBJ_DIR)/catch_tostring.o \
		$(OBJ_DIR)/catch_totals.o \
		$(OBJ_DIR)/catch_uncaught_exceptions.o \
		$(OBJ_DIR)/catch_version.o \
		$(OBJ_DIR)/catch_wildcard_pattern.o \
		$(OBJ_DIR)/catch_xmlwriter.o \
		$(OBJ_DIR)/catch_reporter_bases.o \
		$(OBJ_DIR)/catch_reporter_compact.o \
		$(OBJ_DIR)/catch_reporter_console.o \
		$(OBJ_DIR)/catch_reporter_junit.o \
		$(OBJ_DIR)/catch_reporter_listening.o \
		$(OBJ_DIR)/catch_reporter_xml.o \
		$(OBJ_DIR)/deque.o \
		$(OBJ_DIR)/deque_exception_test.o \
		$(OBJ_DIR)/deque_test.o \
		$(OBJ_DIR)/dequeiterator_test.o \
		$(OBJ_DIR)/dequeexception.o \
		$(OBJ_DIR)/main.o

DESTDIR       = 
EXECUTABLE    = ./deque.bin


first: report
####### Build rules

all: $(SOURCES) $(EXECUTABLE)

$(EXECUTABLE):  $(OBJECTS)  
	$(LINK) $(LFLAGS) -o $(EXECUTABLE) $(OBJECTS) $(LIBS)

$(OBJ_DIR)/catch_approx.o: ./catch2/internal/catch_approx.cpp ./catch2/internal/catch_approx.h \
		./catch2/internal/catch_tostring.h \
		./catch2/internal/catch_compiler_capabilities.h \
		./catch2/internal/catch_platform.h \
		./catch2/internal/catch_stream.h \
		./catch2/internal/catch_common.h \
		./catch2/internal/catch_interfaces_enum_values_registry.h \
		./catch2/internal/catch_stringref.h \
		./catch2/internal/catch_objc_arc.hpp \
		./catch2/internal/catch_enforce.h
	$(CXX) -c $(CXXFLAGS) -o $(OBJ_DIR)/catch_approx.o ./catch2/internal/catch_approx.cpp

$(OBJ_DIR)/catch_assertionhandler.o: ./catch2/internal/catch_assertionhandler.cpp ./catch2/internal/catch_assertionhandler.h \
		./catch2/internal/catch_assertioninfo.h \
		./catch2/internal/catch_result_type.h \
		./catch2/internal/catch_common.h \
		./catch2/internal/catch_compiler_capabilities.h \
		./catch2/internal/catch_platform.h \
		./catch2/internal/catch_stringref.h \
		./catch2/internal/catch_decomposer.h \
		./catch2/internal/catch_tostring.h \
		./catch2/internal/catch_stream.h \
		./catch2/internal/catch_interfaces_enum_values_registry.h \
		./catch2/internal/catch_objc_arc.hpp \
		./catch2/internal/catch_meta.hpp \
		./catch2/internal/catch_interfaces_capture.h \
		./catch2/internal/catch_assertionresult.h \
		./catch2/internal/catch_interfaces_runner.h \
		./catch2/internal/catch_interfaces_config.h \
		./catch2/internal/catch_option.hpp \
		./catch2/internal/catch_context.h \
		./catch2/internal/catch_debugger.h \
		./catch2/internal/catch_interfaces_registry_hub.h \
		./catch2/internal/catch_capture_matchers.h \
		./catch2/internal/catch_capture.hpp \
		./catch2/internal/catch_message.h \
		./catch2/internal/catch_matchers.h \
		./catch2/internal/catch_matchers_exception.hpp \
		./catch2/internal/catch_matchers_floating.h \
		./catch2/internal/catch_matchers_generic.hpp \
		./catch2/internal/catch_matchers_string.h \
		./catch2/internal/catch_matchers_vector.h \
		./catch2/internal/catch_approx.h \
		./catch2/internal/catch_run_context.h \
		./catch2/internal/catch_interfaces_generatortracker.h \
		./catch2/internal/catch_interfaces_reporter.h \
		./catch2/internal/catch_section_info.h \
		./catch2/internal/catch_totals.h \
		./catch2/internal/catch_config.hpp \
		./catch2/internal/catch_test_spec_parser.h \
		./catch2/internal/catch_test_spec.h \
		./catch2/internal/catch_wildcard_pattern.h \
		./catch2/internal/catch_test_case_info.h \
		./catch2/internal/catch_test_registry.h \
		./catch2/internal/catch_interfaces_testcase.h \
		./catch2/internal/catch_preprocessor.hpp \
		./catch2/internal/catch_string_manip.h \
		./catch2/internal/catch_interfaces_tag_alias_registry.h \
		./catch2/internal/benchmark/catch_estimate.hpp \
		./catch2/internal/benchmark/catch_outlier_classification.hpp \
		./catch2/internal/catch_interfaces_exception.h \
		./catch2/internal/catch_test_case_tracker.h \
		./catch2/internal/catch_timer.h \
		./catch2/internal/catch_fatal_condition.h \
		./catch2/internal/catch_windows_h_proxy.h \
		./catch2/internal/catch_enforce.h
	$(CXX) -c $(CXXFLAGS) -o $(OBJ_DIR)/catch_assertionhandler.o ./catch2/internal/catch_assertionhandler.cpp

$(OBJ_DIR)/catch_assertionresult.o: ./catch2/internal/catch_assertionresult.cpp ./catch2/internal/catch_assertionresult.h \
		./catch2/internal/catch_assertioninfo.h \
		./catch2/internal/catch_result_type.h \
		./catch2/internal/catch_common.h \
		./catch2/internal/catch_compiler_capabilities.h \
		./catch2/internal/catch_platform.h \
		./catch2/internal/catch_stringref.h \
		./catch2/internal/catch_assertionhandler.h \
		./catch2/internal/catch_decomposer.h \
		./catch2/internal/catch_tostring.h \
		./catch2/internal/catch_stream.h \
		./catch2/internal/catch_interfaces_enum_values_registry.h \
		./catch2/internal/catch_objc_arc.hpp \
		./catch2/internal/catch_meta.hpp \
		./catch2/internal/catch_interfaces_capture.h
	$(CXX) -c $(CXXFLAGS) -o $(OBJ_DIR)/catch_assertionresult.o ./catch2/internal/catch_assertionresult.cpp

$(OBJ_DIR)/catch_capture_matchers.o: ./catch2/internal/catch_capture_matchers.cpp ./catch2/internal/catch_capture_matchers.h \
		./catch2/internal/catch_capture.hpp \
		./catch2/internal/catch_assertionhandler.h \
		./catch2/internal/catch_assertioninfo.h \
		./catch2/internal/catch_result_type.h \
		./catch2/internal/catch_common.h \
		./catch2/internal/catch_compiler_capabilities.h \
		./catch2/internal/catch_platform.h \
		./catch2/internal/catch_stringref.h \
		./catch2/internal/catch_decomposer.h \
		./catch2/internal/catch_tostring.h \
		./catch2/internal/catch_stream.h \
		./catch2/internal/catch_interfaces_enum_values_registry.h \
		./catch2/internal/catch_objc_arc.hpp \
		./catch2/internal/catch_meta.hpp \
		./catch2/internal/catch_interfaces_capture.h \
		./catch2/internal/catch_message.h \
		./catch2/internal/catch_matchers.h \
		./catch2/internal/catch_matchers_exception.hpp \
		./catch2/internal/catch_matchers_floating.h \
		./catch2/internal/catch_matchers_generic.hpp \
		./catch2/internal/catch_matchers_string.h \
		./catch2/internal/catch_matchers_vector.h \
		./catch2/internal/catch_approx.h \
		./catch2/internal/catch_interfaces_registry_hub.h
	$(CXX) -c $(CXXFLAGS) -o $(OBJ_DIR)/catch_capture_matchers.o ./catch2/internal/catch_capture_matchers.cpp

$(OBJ_DIR)/catch_commandline.o: ./catch2/internal/catch_commandline.cpp ./catch2/internal/catch_commandline.h \
		./catch2/internal/catch_config.hpp \
		./catch2/internal/catch_test_spec_parser.h \
		./catch2/internal/catch_test_spec.h \
		./catch2/internal/catch_wildcard_pattern.h \
		./catch2/internal/catch_common.h \
		./catch2/internal/catch_compiler_capabilities.h \
		./catch2/internal/catch_platform.h \
		./catch2/internal/catch_test_case_info.h \
		./catch2/internal/catch_test_registry.h \
		./catch2/internal/catch_interfaces_testcase.h \
		./catch2/internal/catch_stringref.h \
		./catch2/internal/catch_preprocessor.hpp \
		./catch2/internal/catch_meta.hpp \
		./catch2/internal/catch_string_manip.h \
		./catch2/internal/catch_interfaces_tag_alias_registry.h \
		./catch2/internal/catch_interfaces_config.h \
		./catch2/internal/catch_option.hpp \
		./catch2/internal/catch_stream.h \
		./catch2/internal/catch_clara.h \
		./catch2/external/clara.hpp \
		./catch2/internal/catch_interfaces_registry_hub.h \
		./catch2/internal/catch_interfaces_reporter.h \
		./catch2/internal/catch_section_info.h \
		./catch2/internal/catch_totals.h \
		./catch2/internal/catch_assertionresult.h \
		./catch2/internal/catch_assertioninfo.h \
		./catch2/internal/catch_result_type.h \
		./catch2/internal/catch_assertionhandler.h \
		./catch2/internal/catch_decomposer.h \
		./catch2/internal/catch_tostring.h \
		./catch2/internal/catch_interfaces_enum_values_registry.h \
		./catch2/internal/catch_objc_arc.hpp \
		./catch2/internal/catch_interfaces_capture.h \
		./catch2/internal/catch_message.h \
		./catch2/internal/benchmark/catch_estimate.hpp \
		./catch2/internal/benchmark/catch_outlier_classification.hpp
	$(CXX) -c $(CXXFLAGS) -o $(OBJ_DIR)/catch_commandline.o ./catch2/internal/catch_commandline.cpp

$(OBJ_DIR)/catch_common.o: ./catch2/internal/catch_common.cpp ./catch2/internal/catch_common.h \
		./catch2/internal/catch_compiler_capabilities.h \
		./catch2/internal/catch_platform.h \
		./catch2/internal/catch_context.h \
		./catch2/internal/catch_interfaces_config.h \
		./catch2/internal/catch_option.hpp
	$(CXX) -c $(CXXFLAGS) -o $(OBJ_DIR)/catch_common.o ./catch2/internal/catch_common.cpp

$(OBJ_DIR)/catch_config.o: ./catch2/internal/catch_config.cpp ./catch2/internal/catch_config.hpp \
		./catch2/internal/catch_test_spec_parser.h \
		./catch2/internal/catch_test_spec.h \
		./catch2/internal/catch_wildcard_pattern.h \
		./catch2/internal/catch_common.h \
		./catch2/internal/catch_compiler_capabilities.h \
		./catch2/internal/catch_platform.h \
		./catch2/internal/catch_test_case_info.h \
		./catch2/internal/catch_test_registry.h \
		./catch2/internal/catch_interfaces_testcase.h \
		./catch2/internal/catch_stringref.h \
		./catch2/internal/catch_preprocessor.hpp \
		./catch2/internal/catch_meta.hpp \
		./catch2/internal/catch_string_manip.h \
		./catch2/internal/catch_interfaces_tag_alias_registry.h \
		./catch2/internal/catch_interfaces_config.h \
		./catch2/internal/catch_option.hpp \
		./catch2/internal/catch_stream.h \
		./catch2/internal/catch_enforce.h
	$(CXX) -c $(CXXFLAGS) -o $(OBJ_DIR)/catch_config.o ./catch2/internal/catch_config.cpp

$(OBJ_DIR)/catch_console_colour.o: ./catch2/internal/catch_console_colour.cpp ./catch2/internal/catch_console_colour.h \
		./catch2/internal/catch_common.h \
		./catch2/internal/catch_compiler_capabilities.h \
		./catch2/internal/catch_platform.h \
		./catch2/internal/catch_enforce.h \
		./catch2/internal/catch_stream.h \
		./catch2/internal/catch_errno_guard.h \
		./catch2/internal/catch_interfaces_config.h \
		./catch2/internal/catch_option.hpp \
		./catch2/internal/catch_context.h \
		./catch2/internal/catch_debugger.h \
		./catch2/internal/catch_windows_h_proxy.h
	$(CXX) -c $(CXXFLAGS) -o $(OBJ_DIR)/catch_console_colour.o ./catch2/internal/catch_console_colour.cpp

$(OBJ_DIR)/catch_context.o: ./catch2/internal/catch_context.cpp ./catch2/internal/catch_context.h \
		./catch2/internal/catch_common.h \
		./catch2/internal/catch_compiler_capabilities.h \
		./catch2/internal/catch_platform.h \
		./catch2/internal/catch_random_number_generator.h
	$(CXX) -c $(CXXFLAGS) -o $(OBJ_DIR)/catch_context.o ./catch2/internal/catch_context.cpp

$(OBJ_DIR)/catch_debug_console.o: ./catch2/internal/catch_debug_console.cpp ./catch2/internal/catch_debug_console.h \
		./catch2/internal/catch_compiler_capabilities.h \
		./catch2/internal/catch_platform.h \
		./catch2/internal/catch_stream.h \
		./catch2/internal/catch_common.h \
		./catch2/internal/catch_windows_h_proxy.h
	$(CXX) -c $(CXXFLAGS) -o $(OBJ_DIR)/catch_debug_console.o ./catch2/internal/catch_debug_console.cpp

$(OBJ_DIR)/catch_debugger.o: ./catch2/internal/catch_debugger.cpp ./catch2/internal/catch_debugger.h \
		./catch2/internal/catch_platform.h \
		./catch2/internal/catch_errno_guard.h \
		./catch2/internal/catch_stream.h \
		./catch2/internal/catch_common.h \
		./catch2/internal/catch_compiler_capabilities.h
	$(CXX) -c $(CXXFLAGS) -o $(OBJ_DIR)/catch_debugger.o ./catch2/internal/catch_debugger.cpp

$(OBJ_DIR)/catch_decomposer.o: ./catch2/internal/catch_decomposer.cpp ./catch2/internal/catch_decomposer.h \
		./catch2/internal/catch_tostring.h \
		./catch2/internal/catch_compiler_capabilities.h \
		./catch2/internal/catch_platform.h \
		./catch2/internal/catch_stream.h \
		./catch2/internal/catch_common.h \
		./catch2/internal/catch_interfaces_enum_values_registry.h \
		./catch2/internal/catch_stringref.h \
		./catch2/internal/catch_objc_arc.hpp \
		./catch2/internal/catch_meta.hpp \
		./catch2/internal/catch_config.hpp \
		./catch2/internal/catch_test_spec_parser.h \
		./catch2/internal/catch_test_spec.h \
		./catch2/internal/catch_wildcard_pattern.h \
		./catch2/internal/catch_test_case_info.h \
		./catch2/internal/catch_test_registry.h \
		./catch2/internal/catch_interfaces_testcase.h \
		./catch2/internal/catch_preprocessor.hpp \
		./catch2/internal/catch_string_manip.h \
		./catch2/internal/catch_interfaces_tag_alias_registry.h \
		./catch2/internal/catch_interfaces_config.h \
		./catch2/internal/catch_option.hpp
	$(CXX) -c $(CXXFLAGS) -o $(OBJ_DIR)/catch_decomposer.o ./catch2/internal/catch_decomposer.cpp

$(OBJ_DIR)/catch_enforce.o: ./catch2/internal/catch_enforce.cpp ./catch2/internal/catch_enforce.h \
		./catch2/internal/catch_common.h \
		./catch2/internal/catch_compiler_capabilities.h \
		./catch2/internal/catch_platform.h \
		./catch2/internal/catch_stream.h
	$(CXX) -c $(CXXFLAGS) -o $(OBJ_DIR)/catch_enforce.o ./catch2/internal/catch_enforce.cpp

$(OBJ_DIR)/catch_enum_values_registry.o: ./catch2/internal/catch_enum_values_registry.cpp ./catch2/internal/catch_enum_values_registry.h \
		./catch2/internal/catch_interfaces_enum_values_registry.h \
		./catch2/internal/catch_stringref.h \
		./catch2/internal/catch_string_manip.h \
		./catch2/internal/catch_stream.h \
		./catch2/internal/catch_common.h \
		./catch2/internal/catch_compiler_capabilities.h \
		./catch2/internal/catch_platform.h
	$(CXX) -c $(CXXFLAGS) -o $(OBJ_DIR)/catch_enum_values_registry.o ./catch2/internal/catch_enum_values_registry.cpp

$(OBJ_DIR)/catch_errno_guard.o: ./catch2/internal/catch_errno_guard.cpp ./catch2/internal/catch_errno_guard.h
	$(CXX) -c $(CXXFLAGS)  -o $(OBJ_DIR)/catch_errno_guard.o ./catch2/internal/catch_errno_guard.cpp

$(OBJ_DIR)/catch_exception_translator_registry.o: ./catch2/internal/catch_exception_translator_registry.cpp ./catch2/internal/catch_exception_translator_registry.h \
		./catch2/internal/catch_interfaces_exception.h \
		./catch2/internal/catch_interfaces_registry_hub.h \
		./catch2/internal/catch_common.h \
		./catch2/internal/catch_compiler_capabilities.h \
		./catch2/internal/catch_platform.h \
		./catch2/internal/catch_assertionhandler.h \
		./catch2/internal/catch_assertioninfo.h \
		./catch2/internal/catch_result_type.h \
		./catch2/internal/catch_stringref.h \
		./catch2/internal/catch_decomposer.h \
		./catch2/internal/catch_tostring.h \
		./catch2/internal/catch_stream.h \
		./catch2/internal/catch_interfaces_enum_values_registry.h \
		./catch2/internal/catch_objc_arc.hpp \
		./catch2/internal/catch_meta.hpp \
		./catch2/internal/catch_interfaces_capture.h \
		./catch2/internal/catch_enforce.h
	$(CXX) -c $(CXXFLAGS) -o $(OBJ_DIR)/catch_exception_translator_registry.o ./catch2/internal/catch_exception_translator_registry.cpp

$(OBJ_DIR)/catch_fatal_condition.o: ./catch2/internal/catch_fatal_condition.cpp ./catch2/internal/catch_fatal_condition.h \
		./catch2/internal/catch_platform.h \
		./catch2/internal/catch_compiler_capabilities.h \
		./catch2/internal/catch_windows_h_proxy.h \
		./catch2/internal/catch_context.h \
		./catch2/internal/catch_interfaces_capture.h \
		./catch2/internal/catch_stringref.h \
		./catch2/internal/catch_result_type.h
	$(CXX) -c $(CXXFLAGS) -o $(OBJ_DIR)/catch_fatal_condition.o ./catch2/internal/catch_fatal_condition.cpp

$(OBJ_DIR)/catch_generators.o: ./catch2/internal/catch_generators.cpp ./catch2/internal/catch_generators.hpp \
		./catch2/internal/catch_interfaces_generatortracker.h \
		./catch2/internal/catch_common.h \
		./catch2/internal/catch_compiler_capabilities.h \
		./catch2/internal/catch_platform.h \
		./catch2/internal/catch_enforce.h \
		./catch2/internal/catch_stream.h \
		./catch2/internal/catch_random_number_generator.h \
		./catch2/internal/catch_interfaces_capture.h \
		./catch2/internal/catch_stringref.h \
		./catch2/internal/catch_result_type.h
	$(CXX) -c $(CXXFLAGS) -o $(OBJ_DIR)/catch_generators.o ./catch2/internal/catch_generators.cpp

$(OBJ_DIR)/catch_interfaces_capture.o: ./catch2/internal/catch_interfaces_capture.cpp ./catch2/internal/catch_interfaces_capture.h \
		./catch2/internal/catch_stringref.h \
		./catch2/internal/catch_result_type.h
	$(CXX) -c $(CXXFLAGS) -o $(OBJ_DIR)/catch_interfaces_capture.o ./catch2/internal/catch_interfaces_capture.cpp

$(OBJ_DIR)/catch_interfaces_config.o: ./catch2/internal/catch_interfaces_config.cpp ./catch2/internal/catch_interfaces_config.h \
		./catch2/internal/catch_common.h \
		./catch2/internal/catch_compiler_capabilities.h \
		./catch2/internal/catch_platform.h \
		./catch2/internal/catch_option.hpp
	$(CXX) -c $(CXXFLAGS) -o $(OBJ_DIR)/catch_interfaces_config.o ./catch2/internal/catch_interfaces_config.cpp

$(OBJ_DIR)/catch_interfaces_exception.o: ./catch2/internal/catch_interfaces_exception.cpp ./catch2/internal/catch_interfaces_exception.h \
		./catch2/internal/catch_interfaces_registry_hub.h \
		./catch2/internal/catch_common.h \
		./catch2/internal/catch_compiler_capabilities.h \
		./catch2/internal/catch_platform.h
	$(CXX) -c $(CXXFLAGS) -o $(OBJ_DIR)/catch_interfaces_exception.o ./catch2/internal/catch_interfaces_exception.cpp

$(OBJ_DIR)/catch_interfaces_registry_hub.o: ./catch2/internal/catch_interfaces_registry_hub.cpp ./catch2/internal/catch_interfaces_registry_hub.h \
		./catch2/internal/catch_common.h \
		./catch2/internal/catch_compiler_capabilities.h \
		./catch2/internal/catch_platform.h
	$(CXX) -c $(CXXFLAGS) -o $(OBJ_DIR)/catch_interfaces_registry_hub.o ./catch2/internal/catch_interfaces_registry_hub.cpp

$(OBJ_DIR)/catch_interfaces_reporter.o: ./catch2/internal/catch_interfaces_reporter.cpp ./catch2/internal/catch_interfaces_reporter.h \
		./catch2/internal/catch_section_info.h \
		./catch2/internal/catch_common.h \
		./catch2/internal/catch_compiler_capabilities.h \
		./catch2/internal/catch_platform.h \
		./catch2/internal/catch_totals.h \
		./catch2/internal/catch_config.hpp \
		./catch2/internal/catch_test_spec_parser.h \
		./catch2/internal/catch_test_spec.h \
		./catch2/internal/catch_wildcard_pattern.h \
		./catch2/internal/catch_test_case_info.h \
		./catch2/internal/catch_test_registry.h \
		./catch2/internal/catch_interfaces_testcase.h \
		./catch2/internal/catch_stringref.h \
		./catch2/internal/catch_preprocessor.hpp \
		./catch2/internal/catch_meta.hpp \
		./catch2/internal/catch_string_manip.h \
		./catch2/internal/catch_interfaces_tag_alias_registry.h \
		./catch2/internal/catch_interfaces_config.h \
		./catch2/internal/catch_option.hpp \
		./catch2/internal/catch_stream.h \
		./catch2/internal/catch_assertionresult.h \
		./catch2/internal/catch_assertioninfo.h \
		./catch2/internal/catch_result_type.h \
		./catch2/internal/catch_assertionhandler.h \
		./catch2/internal/catch_decomposer.h \
		./catch2/internal/catch_tostring.h \
		./catch2/internal/catch_interfaces_enum_values_registry.h \
		./catch2/internal/catch_objc_arc.hpp \
		./catch2/internal/catch_interfaces_capture.h \
		./catch2/internal/catch_message.h \
		./catch2/internal/benchmark/catch_estimate.hpp \
		./catch2/internal/benchmark/catch_outlier_classification.hpp \
		./catch2/reporters/catch_reporter_listening.h
	$(CXX) -c $(CXXFLAGS) -o $(OBJ_DIR)/catch_interfaces_reporter.o ./catch2/internal/catch_interfaces_reporter.cpp

$(OBJ_DIR)/catch_interfaces_runner.o: ./catch2/internal/catch_interfaces_runner.cpp ./catch2/internal/catch_interfaces_runner.h
	$(CXX) -c $(CXXFLAGS) -o $(OBJ_DIR)/catch_interfaces_runner.o ./catch2/internal/catch_interfaces_runner.cpp

$(OBJ_DIR)/catch_interfaces_testcase.o: ./catch2/internal/catch_interfaces_testcase.cpp ./catch2/internal/catch_interfaces_testcase.h
	$(CXX) -c $(CXXFLAGS) -o $(OBJ_DIR)/catch_interfaces_testcase.o ./catch2/internal/catch_interfaces_testcase.cpp

$(OBJ_DIR)/catch_leak_detector.o: ./catch2/internal/catch_leak_detector.cpp ./catch2/internal/catch_leak_detector.h \
		./catch2/internal/catch_interfaces_registry_hub.h \
		./catch2/internal/catch_common.h \
		./catch2/internal/catch_compiler_capabilities.h \
		./catch2/internal/catch_platform.h
	$(CXX) -c $(CXXFLAGS) -o $(OBJ_DIR)/catch_leak_detector.o ./catch2/internal/catch_leak_detector.cpp

$(OBJ_DIR)/catch_list.o: ./catch2/internal/catch_list.cpp ./catch2/internal/catch_list.h \
		./catch2/internal/catch_option.hpp \
		./catch2/internal/catch_config.hpp \
		./catch2/internal/catch_test_spec_parser.h \
		./catch2/internal/catch_test_spec.h \
		./catch2/internal/catch_wildcard_pattern.h \
		./catch2/internal/catch_common.h \
		./catch2/internal/catch_compiler_capabilities.h \
		./catch2/internal/catch_platform.h \
		./catch2/internal/catch_test_case_info.h \
		./catch2/internal/catch_test_registry.h \
		./catch2/internal/catch_interfaces_testcase.h \
		./catch2/internal/catch_stringref.h \
		./catch2/internal/catch_preprocessor.hpp \
		./catch2/internal/catch_meta.hpp \
		./catch2/internal/catch_string_manip.h \
		./catch2/internal/catch_interfaces_tag_alias_registry.h \
		./catch2/internal/catch_interfaces_config.h \
		./catch2/internal/catch_stream.h \
		./catch2/internal/catch_interfaces_registry_hub.h \
		./catch2/internal/catch_interfaces_reporter.h \
		./catch2/internal/catch_section_info.h \
		./catch2/internal/catch_totals.h \
		./catch2/internal/catch_assertionresult.h \
		./catch2/internal/catch_assertioninfo.h \
		./catch2/internal/catch_result_type.h \
		./catch2/internal/catch_assertionhandler.h \
		./catch2/internal/catch_decomposer.h \
		./catch2/internal/catch_tostring.h \
		./catch2/internal/catch_interfaces_enum_values_registry.h \
		./catch2/internal/catch_objc_arc.hpp \
		./catch2/internal/catch_interfaces_capture.h \
		./catch2/internal/catch_message.h \
		./catch2/internal/benchmark/catch_estimate.hpp \
		./catch2/internal/benchmark/catch_outlier_classification.hpp \
		./catch2/internal/catch_context.h \
		./catch2/internal/catch_text.h \
		./catch2/internal/catch_clara.h \
		./catch2/external/clara.hpp \
		./catch2/internal/catch_console_colour.h
	$(CXX) -c $(CXXFLAGS) -o $(OBJ_DIR)/catch_list.o ./catch2/internal/catch_list.cpp

$(OBJ_DIR)/catch_matchers.o: ./catch2/internal/catch_matchers.cpp ./catch2/internal/catch_matchers.h \
		./catch2/internal/catch_common.h \
		./catch2/internal/catch_compiler_capabilities.h \
		./catch2/internal/catch_platform.h
	$(CXX) -c $(CXXFLAGS) -o $(OBJ_DIR)/catch_matchers.o ./catch2/internal/catch_matchers.cpp

$(OBJ_DIR)/catch_matchers_exception.o: ./catch2/internal/catch_matchers_exception.cpp ./catch2/internal/catch_matchers_exception.hpp \
		./catch2/internal/catch_matchers.h \
		./catch2/internal/catch_common.h \
		./catch2/internal/catch_compiler_capabilities.h \
		./catch2/internal/catch_platform.h
	$(CXX) -c $(CXXFLAGS) -o $(OBJ_DIR)/catch_matchers_exception.o ./catch2/internal/catch_matchers_exception.cpp

$(OBJ_DIR)/catch_matchers_floating.o: ./catch2/internal/catch_matchers_floating.cpp ./catch2/internal/catch_matchers_floating.h \
		./catch2/internal/catch_matchers.h \
		./catch2/internal/catch_common.h \
		./catch2/internal/catch_compiler_capabilities.h \
		./catch2/internal/catch_platform.h \
		./catch2/internal/catch_enforce.h \
		./catch2/internal/catch_stream.h \
		./catch2/internal/catch_polyfills.hpp \
		./catch2/internal/catch_to_string.hpp \
		./catch2/internal/catch_tostring.h \
		./catch2/internal/catch_interfaces_enum_values_registry.h \
		./catch2/internal/catch_stringref.h \
		./catch2/internal/catch_objc_arc.hpp
	$(CXX) -c $(CXXFLAGS) -o $(OBJ_DIR)/catch_matchers_floating.o ./catch2/internal/catch_matchers_floating.cpp

$(OBJ_DIR)/catch_matchers_generic.o: ./catch2/internal/catch_matchers_generic.cpp ./catch2/internal/catch_matchers_generic.hpp \
		./catch2/internal/catch_common.h \
		./catch2/internal/catch_compiler_capabilities.h \
		./catch2/internal/catch_platform.h \
		./catch2/internal/catch_matchers.h
	$(CXX) -c $(CXXFLAGS) -o $(OBJ_DIR)/catch_matchers_generic.o ./catch2/internal/catch_matchers_generic.cpp

$(OBJ_DIR)/catch_matchers_string.o: ./catch2/internal/catch_matchers_string.cpp ./catch2/internal/catch_matchers_string.h \
		./catch2/internal/catch_matchers.h \
		./catch2/internal/catch_common.h \
		./catch2/internal/catch_compiler_capabilities.h \
		./catch2/internal/catch_platform.h \
		./catch2/internal/catch_string_manip.h \
		./catch2/internal/catch_stringref.h \
		./catch2/internal/catch_tostring.h \
		./catch2/internal/catch_stream.h \
		./catch2/internal/catch_interfaces_enum_values_registry.h \
		./catch2/internal/catch_objc_arc.hpp
	$(CXX) -c $(CXXFLAGS) -o $(OBJ_DIR)/catch_matchers_string.o ./catch2/internal/catch_matchers_string.cpp

$(OBJ_DIR)/catch_message.o: ./catch2/internal/catch_message.cpp ./catch2/internal/catch_message.h \
		./catch2/internal/catch_result_type.h \
		./catch2/internal/catch_common.h \
		./catch2/internal/catch_compiler_capabilities.h \
		./catch2/internal/catch_platform.h \
		./catch2/internal/catch_stream.h \
		./catch2/internal/catch_interfaces_capture.h \
		./catch2/internal/catch_stringref.h \
		./catch2/internal/catch_tostring.h \
		./catch2/internal/catch_interfaces_enum_values_registry.h \
		./catch2/internal/catch_objc_arc.hpp \
		./catch2/internal/catch_uncaught_exceptions.h \
		./catch2/internal/catch_enforce.h
	$(CXX) -c $(CXXFLAGS) -o $(OBJ_DIR)/catch_message.o ./catch2/internal/catch_message.cpp

$(OBJ_DIR)/catch_output_redirect.o: ./catch2/internal/catch_output_redirect.cpp ./catch2/internal/catch_output_redirect.h \
		./catch2/internal/catch_platform.h \
		./catch2/internal/catch_stream.h \
		./catch2/internal/catch_common.h \
		./catch2/internal/catch_compiler_capabilities.h \
		./catch2/internal/catch_enforce.h
	$(CXX) -c $(CXXFLAGS) -o $(OBJ_DIR)/catch_output_redirect.o ./catch2/internal/catch_output_redirect.cpp

$(OBJ_DIR)/catch_polyfills.o: ./catch2/internal/catch_polyfills.cpp ./catch2/internal/catch_polyfills.hpp
	$(CXX) -c $(CXXFLAGS) -o $(OBJ_DIR)/catch_polyfills.o ./catch2/internal/catch_polyfills.cpp

$(OBJ_DIR)/catch_random_number_generator.o: ./catch2/internal/catch_random_number_generator.cpp ./catch2/internal/catch_random_number_generator.h \
		./catch2/internal/catch_context.h \
		./catch2/internal/catch_run_context.h \
		./catch2/internal/catch_interfaces_generatortracker.h \
		./catch2/internal/catch_interfaces_runner.h \
		./catch2/internal/catch_interfaces_reporter.h \
		./catch2/internal/catch_section_info.h \
		./catch2/internal/catch_common.h \
		./catch2/internal/catch_compiler_capabilities.h \
		./catch2/internal/catch_platform.h \
		./catch2/internal/catch_totals.h \
		./catch2/internal/catch_config.hpp \
		./catch2/internal/catch_test_spec_parser.h \
		./catch2/internal/catch_test_spec.h \
		./catch2/internal/catch_wildcard_pattern.h \
		./catch2/internal/catch_test_case_info.h \
		./catch2/internal/catch_test_registry.h \
		./catch2/internal/catch_interfaces_testcase.h \
		./catch2/internal/catch_stringref.h \
		./catch2/internal/catch_preprocessor.hpp \
		./catch2/internal/catch_meta.hpp \
		./catch2/internal/catch_string_manip.h \
		./catch2/internal/catch_interfaces_tag_alias_registry.h \
		./catch2/internal/catch_interfaces_config.h \
		./catch2/internal/catch_option.hpp \
		./catch2/internal/catch_stream.h \
		./catch2/internal/catch_assertionresult.h \
		./catch2/internal/catch_assertioninfo.h \
		./catch2/internal/catch_result_type.h \
		./catch2/internal/catch_assertionhandler.h \
		./catch2/internal/catch_decomposer.h \
		./catch2/internal/catch_tostring.h \
		./catch2/internal/catch_interfaces_enum_values_registry.h \
		./catch2/internal/catch_objc_arc.hpp \
		./catch2/internal/catch_interfaces_capture.h \
		./catch2/internal/catch_message.h \
		./catch2/internal/benchmark/catch_estimate.hpp \
		./catch2/internal/benchmark/catch_outlier_classification.hpp \
		./catch2/internal/catch_interfaces_exception.h \
		./catch2/internal/catch_interfaces_registry_hub.h \
		./catch2/internal/catch_capture.hpp \
		./catch2/internal/catch_test_case_tracker.h \
		./catch2/internal/catch_timer.h \
		./catch2/internal/catch_fatal_condition.h \
		./catch2/internal/catch_windows_h_proxy.h
	$(CXX) -c $(CXXFLAGS) -o $(OBJ_DIR)/catch_random_number_generator.o ./catch2/internal/catch_random_number_generator.cpp

$(OBJ_DIR)/catch_registry_hub.o: ./catch2/internal/catch_registry_hub.cpp ./catch2/internal/catch_interfaces_registry_hub.h \
		./catch2/internal/catch_common.h \
		./catch2/internal/catch_compiler_capabilities.h \
		./catch2/internal/catch_platform.h \
		./catch2/internal/catch_context.h \
		./catch2/internal/catch_test_case_registry_impl.h \
		./catch2/internal/catch_test_registry.h \
		./catch2/internal/catch_interfaces_testcase.h \
		./catch2/internal/catch_stringref.h \
		./catch2/internal/catch_preprocessor.hpp \
		./catch2/internal/catch_meta.hpp \
		./catch2/internal/catch_test_spec.h \
		./catch2/internal/catch_wildcard_pattern.h \
		./catch2/internal/catch_test_case_info.h \
		./catch2/internal/catch_interfaces_config.h \
		./catch2/internal/catch_option.hpp \
		./catch2/internal/catch_reporter_registry.h \
		./catch2/internal/catch_interfaces_reporter.h \
		./catch2/internal/catch_section_info.h \
		./catch2/internal/catch_totals.h \
		./catch2/internal/catch_config.hpp \
		./catch2/internal/catch_test_spec_parser.h \
		./catch2/internal/catch_string_manip.h \
		./catch2/internal/catch_interfaces_tag_alias_registry.h \
		./catch2/internal/catch_stream.h \
		./catch2/internal/catch_assertionresult.h \
		./catch2/internal/catch_assertioninfo.h \
		./catch2/internal/catch_result_type.h \
		./catch2/internal/catch_assertionhandler.h \
		./catch2/internal/catch_decomposer.h \
		./catch2/internal/catch_tostring.h \
		./catch2/internal/catch_interfaces_enum_values_registry.h \
		./catch2/internal/catch_objc_arc.hpp \
		./catch2/internal/catch_interfaces_capture.h \
		./catch2/internal/catch_message.h \
		./catch2/internal/benchmark/catch_estimate.hpp \
		./catch2/internal/benchmark/catch_outlier_classification.hpp \
		./catch2/internal/catch_exception_translator_registry.h \
		./catch2/internal/catch_interfaces_exception.h \
		./catch2/internal/catch_tag_alias_registry.h \
		./catch2/internal/catch_tag_alias.h \
		./catch2/internal/catch_startup_exception_registry.h \
		./catch2/internal/catch_singletons.hpp \
		./catch2/internal/catch_enum_values_registry.h
	$(CXX) -c $(CXXFLAGS) -o $(OBJ_DIR)/catch_registry_hub.o ./catch2/internal/catch_registry_hub.cpp

$(OBJ_DIR)/catch_reporter_registry.o: ./catch2/internal/catch_reporter_registry.cpp ./catch2/internal/catch_reporter_registry.h \
		./catch2/internal/catch_interfaces_reporter.h \
		./catch2/internal/catch_section_info.h \
		./catch2/internal/catch_common.h \
		./catch2/internal/catch_compiler_capabilities.h \
		./catch2/internal/catch_platform.h \
		./catch2/internal/catch_totals.h \
		./catch2/internal/catch_config.hpp \
		./catch2/internal/catch_test_spec_parser.h \
		./catch2/internal/catch_test_spec.h \
		./catch2/internal/catch_wildcard_pattern.h \
		./catch2/internal/catch_test_case_info.h \
		./catch2/internal/catch_test_registry.h \
		./catch2/internal/catch_interfaces_testcase.h \
		./catch2/internal/catch_stringref.h \
		./catch2/internal/catch_preprocessor.hpp \
		./catch2/internal/catch_meta.hpp \
		./catch2/internal/catch_string_manip.h \
		./catch2/internal/catch_interfaces_tag_alias_registry.h \
		./catch2/internal/catch_interfaces_config.h \
		./catch2/internal/catch_option.hpp \
		./catch2/internal/catch_stream.h \
		./catch2/internal/catch_assertionresult.h \
		./catch2/internal/catch_assertioninfo.h \
		./catch2/internal/catch_result_type.h \
		./catch2/internal/catch_assertionhandler.h \
		./catch2/internal/catch_decomposer.h \
		./catch2/internal/catch_tostring.h \
		./catch2/internal/catch_interfaces_enum_values_registry.h \
		./catch2/internal/catch_objc_arc.hpp \
		./catch2/internal/catch_interfaces_capture.h \
		./catch2/internal/catch_message.h \
		./catch2/internal/benchmark/catch_estimate.hpp \
		./catch2/internal/benchmark/catch_outlier_classification.hpp
	$(CXX) -c $(CXXFLAGS) -o $(OBJ_DIR)/catch_reporter_registry.o ./catch2/internal/catch_reporter_registry.cpp

$(OBJ_DIR)/catch_result_type.o: ./catch2/internal/catch_result_type.cpp ./catch2/internal/catch_result_type.h
	$(CXX) -c $(CXXFLAGS) -o $(OBJ_DIR)/catch_result_type.o ./catch2/internal/catch_result_type.cpp

$(OBJ_DIR)/catch_run_context.o: ./catch2/internal/catch_run_context.cpp ./catch2/internal/catch_run_context.h \
		./catch2/internal/catch_interfaces_generatortracker.h \
		./catch2/internal/catch_interfaces_runner.h \
		./catch2/internal/catch_interfaces_reporter.h \
		./catch2/internal/catch_section_info.h \
		./catch2/internal/catch_common.h \
		./catch2/internal/catch_compiler_capabilities.h \
		./catch2/internal/catch_platform.h \
		./catch2/internal/catch_totals.h \
		./catch2/internal/catch_config.hpp \
		./catch2/internal/catch_test_spec_parser.h \
		./catch2/internal/catch_test_spec.h \
		./catch2/internal/catch_wildcard_pattern.h \
		./catch2/internal/catch_test_case_info.h \
		./catch2/internal/catch_test_registry.h \
		./catch2/internal/catch_interfaces_testcase.h \
		./catch2/internal/catch_stringref.h \
		./catch2/internal/catch_preprocessor.hpp \
		./catch2/internal/catch_meta.hpp \
		./catch2/internal/catch_string_manip.h \
		./catch2/internal/catch_interfaces_tag_alias_registry.h \
		./catch2/internal/catch_interfaces_config.h \
		./catch2/internal/catch_option.hpp \
		./catch2/internal/catch_stream.h \
		./catch2/internal/catch_assertionresult.h \
		./catch2/internal/catch_assertioninfo.h \
		./catch2/internal/catch_result_type.h \
		./catch2/internal/catch_assertionhandler.h \
		./catch2/internal/catch_decomposer.h \
		./catch2/internal/catch_tostring.h \
		./catch2/internal/catch_interfaces_enum_values_registry.h \
		./catch2/internal/catch_objc_arc.hpp \
		./catch2/internal/catch_interfaces_capture.h \
		./catch2/internal/catch_message.h \
		./catch2/internal/benchmark/catch_estimate.hpp \
		./catch2/internal/benchmark/catch_outlier_classification.hpp \
		./catch2/internal/catch_interfaces_exception.h \
		./catch2/internal/catch_interfaces_registry_hub.h \
		./catch2/internal/catch_capture.hpp \
		./catch2/internal/catch_test_case_tracker.h \
		./catch2/internal/catch_timer.h \
		./catch2/internal/catch_fatal_condition.h \
		./catch2/internal/catch_windows_h_proxy.h \
		./catch2/internal/catch_context.h \
		./catch2/internal/catch_enforce.h \
		./catch2/internal/catch_random_number_generator.h \
		./catch2/internal/catch_output_redirect.h
	$(CXX) -c $(CXXFLAGS) -o $(OBJ_DIR)/catch_run_context.o ./catch2/internal/catch_run_context.cpp

$(OBJ_DIR)/catch_section.o: ./catch2/internal/catch_section.cpp ./catch2/internal/catch_section.h \
		./catch2/internal/catch_compiler_capabilities.h \
		./catch2/internal/catch_platform.h \
		./catch2/internal/catch_section_info.h \
		./catch2/internal/catch_common.h \
		./catch2/internal/catch_totals.h \
		./catch2/internal/catch_timer.h \
		./catch2/internal/catch_capture.hpp \
		./catch2/internal/catch_assertionhandler.h \
		./catch2/internal/catch_assertioninfo.h \
		./catch2/internal/catch_result_type.h \
		./catch2/internal/catch_stringref.h \
		./catch2/internal/catch_decomposer.h \
		./catch2/internal/catch_tostring.h \
		./catch2/internal/catch_stream.h \
		./catch2/internal/catch_interfaces_enum_values_registry.h \
		./catch2/internal/catch_objc_arc.hpp \
		./catch2/internal/catch_meta.hpp \
		./catch2/internal/catch_interfaces_capture.h \
		./catch2/internal/catch_message.h \
		./catch2/internal/catch_uncaught_exceptions.h
	$(CXX) -c $(CXXFLAGS) -o $(OBJ_DIR)/catch_section.o ./catch2/internal/catch_section.cpp

$(OBJ_DIR)/catch_section_info.o: ./catch2/internal/catch_section_info.cpp ./catch2/internal/catch_section_info.h \
		./catch2/internal/catch_common.h \
		./catch2/internal/catch_compiler_capabilities.h \
		./catch2/internal/catch_platform.h \
		./catch2/internal/catch_totals.h
	$(CXX) -c $(CXXFLAGS) -o $(OBJ_DIR)/catch_section_info.o ./catch2/internal/catch_section_info.cpp

$(OBJ_DIR)/catch_session.o: ./catch2/internal/catch_session.cpp ./catch2/internal/catch_session.h \
		./catch2/internal/catch_commandline.h \
		./catch2/internal/catch_config.hpp \
		./catch2/internal/catch_test_spec_parser.h \
		./catch2/internal/catch_test_spec.h \
		./catch2/internal/catch_wildcard_pattern.h \
		./catch2/internal/catch_common.h \
		./catch2/internal/catch_compiler_capabilities.h \
		./catch2/internal/catch_platform.h \
		./catch2/internal/catch_test_case_info.h \
		./catch2/internal/catch_test_registry.h \
		./catch2/internal/catch_interfaces_testcase.h \
		./catch2/internal/catch_stringref.h \
		./catch2/internal/catch_preprocessor.hpp \
		./catch2/internal/catch_meta.hpp \
		./catch2/internal/catch_string_manip.h \
		./catch2/internal/catch_interfaces_tag_alias_registry.h \
		./catch2/internal/catch_interfaces_config.h \
		./catch2/internal/catch_option.hpp \
		./catch2/internal/catch_stream.h \
		./catch2/internal/catch_clara.h \
		./catch2/external/clara.hpp \
		./catch2/internal/catch_text.h \
		./catch2/internal/catch_console_colour.h \
		./catch2/internal/catch_enforce.h \
		./catch2/internal/catch_list.h \
		./catch2/internal/catch_context.h \
		./catch2/internal/catch_run_context.h \
		./catch2/internal/catch_interfaces_generatortracker.h \
		./catch2/internal/catch_interfaces_runner.h \
		./catch2/internal/catch_interfaces_reporter.h \
		./catch2/internal/catch_section_info.h \
		./catch2/internal/catch_totals.h \
		./catch2/internal/catch_assertionresult.h \
		./catch2/internal/catch_assertioninfo.h \
		./catch2/internal/catch_result_type.h \
		./catch2/internal/catch_assertionhandler.h \
		./catch2/internal/catch_decomposer.h \
		./catch2/internal/catch_tostring.h \
		./catch2/internal/catch_interfaces_enum_values_registry.h \
		./catch2/internal/catch_objc_arc.hpp \
		./catch2/internal/catch_interfaces_capture.h \
		./catch2/internal/catch_message.h \
		./catch2/internal/benchmark/catch_estimate.hpp \
		./catch2/internal/benchmark/catch_outlier_classification.hpp \
		./catch2/internal/catch_interfaces_exception.h \
		./catch2/internal/catch_interfaces_registry_hub.h \
		./catch2/internal/catch_capture.hpp \
		./catch2/internal/catch_test_case_tracker.h \
		./catch2/internal/catch_timer.h \
		./catch2/internal/catch_fatal_condition.h \
		./catch2/internal/catch_windows_h_proxy.h \
		./catch2/internal/catch_version.h \
		./catch2/internal/catch_random_number_generator.h \
		./catch2/internal/catch_startup_exception_registry.h \
		./catch2/reporters/catch_reporter_listening.h
	$(CXX) -c $(CXXFLAGS) -o $(OBJ_DIR)/catch_session.o ./catch2/internal/catch_session.cpp

$(OBJ_DIR)/catch_singletons.o: ./catch2/internal/catch_singletons.cpp ./catch2/internal/catch_singletons.hpp
	$(CXX) -c $(CXXFLAGS) -o $(OBJ_DIR)/catch_singletons.o ./catch2/internal/catch_singletons.cpp

$(OBJ_DIR)/catch_startup_exception_registry.o: ./catch2/internal/catch_startup_exception_registry.cpp ./catch2/internal/catch_startup_exception_registry.h \
		./catch2/internal/catch_compiler_capabilities.h \
		./catch2/internal/catch_platform.h
	$(CXX) -c $(CXXFLAGS) -o $(OBJ_DIR)/catch_startup_exception_registry.o ./catch2/internal/catch_startup_exception_registry.cpp

$(OBJ_DIR)/catch_stream.o: ./catch2/internal/catch_stream.cpp ./catch2/internal/catch_common.h \
		./catch2/internal/catch_compiler_capabilities.h \
		./catch2/internal/catch_platform.h \
		./catch2/internal/catch_enforce.h \
		./catch2/internal/catch_stream.h \
		./catch2/internal/catch_debug_console.h \
		./catch2/internal/catch_stringref.h \
		./catch2/internal/catch_singletons.hpp
	$(CXX) -c $(CXXFLAGS) -o $(OBJ_DIR)/catch_stream.o ./catch2/internal/catch_stream.cpp

$(OBJ_DIR)/catch_string_manip.o: ./catch2/internal/catch_string_manip.cpp ./catch2/internal/catch_string_manip.h \
		./catch2/internal/catch_stringref.h
	$(CXX) -c $(CXXFLAGS) -o $(OBJ_DIR)/catch_string_manip.o ./catch2/internal/catch_string_manip.cpp

$(OBJ_DIR)/catch_stringref.o: ./catch2/internal/catch_stringref.cpp ./catch2/internal/catch_enforce.h \
		./catch2/internal/catch_common.h \
		./catch2/internal/catch_compiler_capabilities.h \
		./catch2/internal/catch_platform.h \
		./catch2/internal/catch_stream.h \
		./catch2/internal/catch_stringref.h
	$(CXX) -c $(CXXFLAGS) -o $(OBJ_DIR)/catch_stringref.o ./catch2/internal/catch_stringref.cpp

$(OBJ_DIR)/catch_tag_alias.o: ./catch2/internal/catch_tag_alias.cpp ./catch2/internal/catch_tag_alias.h \
		./catch2/internal/catch_common.h \
		./catch2/internal/catch_compiler_capabilities.h \
		./catch2/internal/catch_platform.h
	$(CXX) -c $(CXXFLAGS) -o $(OBJ_DIR)/catch_tag_alias.o ./catch2/internal/catch_tag_alias.cpp

$(OBJ_DIR)/catch_tag_alias_autoregistrar.o: ./catch2/internal/catch_tag_alias_autoregistrar.cpp ./catch2/internal/catch_tag_alias_autoregistrar.h \
		./catch2/internal/catch_common.h \
		./catch2/internal/catch_compiler_capabilities.h \
		./catch2/internal/catch_platform.h \
		./catch2/internal/catch_interfaces_registry_hub.h
	$(CXX) -c $(CXXFLAGS) -o $(OBJ_DIR)/catch_tag_alias_autoregistrar.o ./catch2/internal/catch_tag_alias_autoregistrar.cpp

$(OBJ_DIR)/catch_tag_alias_registry.o: ./catch2/internal/catch_tag_alias_registry.cpp ./catch2/internal/catch_tag_alias_registry.h \
		./catch2/internal/catch_interfaces_tag_alias_registry.h \
		./catch2/internal/catch_tag_alias.h \
		./catch2/internal/catch_common.h \
		./catch2/internal/catch_compiler_capabilities.h \
		./catch2/internal/catch_platform.h \
		./catch2/internal/catch_console_colour.h \
		./catch2/internal/catch_enforce.h \
		./catch2/internal/catch_stream.h \
		./catch2/internal/catch_interfaces_registry_hub.h \
		./catch2/internal/catch_string_manip.h \
		./catch2/internal/catch_stringref.h
	$(CXX) -c $(CXXFLAGS) -o $(OBJ_DIR)/catch_tag_alias_registry.o ./catch2/internal/catch_tag_alias_registry.cpp

$(OBJ_DIR)/catch_test_case_info.o: ./catch2/internal/catch_test_case_info.cpp ./catch2/internal/catch_test_case_info.h \
		./catch2/internal/catch_common.h \
		./catch2/internal/catch_compiler_capabilities.h \
		./catch2/internal/catch_platform.h \
		./catch2/internal/catch_test_registry.h \
		./catch2/internal/catch_interfaces_testcase.h \
		./catch2/internal/catch_stringref.h \
		./catch2/internal/catch_preprocessor.hpp \
		./catch2/internal/catch_meta.hpp \
		./catch2/internal/catch_enforce.h \
		./catch2/internal/catch_stream.h \
		./catch2/internal/catch_test_spec.h \
		./catch2/internal/catch_wildcard_pattern.h \
		./catch2/internal/catch_string_manip.h
	$(CXX) -c $(CXXFLAGS) -o $(OBJ_DIR)/catch_test_case_info.o ./catch2/internal/catch_test_case_info.cpp

$(OBJ_DIR)/catch_test_case_registry_impl.o: ./catch2/internal/catch_test_case_registry_impl.cpp ./catch2/internal/catch_test_case_registry_impl.h \
		./catch2/internal/catch_test_registry.h \
		./catch2/internal/catch_common.h \
		./catch2/internal/catch_compiler_capabilities.h \
		./catch2/internal/catch_platform.h \
		./catch2/internal/catch_interfaces_testcase.h \
		./catch2/internal/catch_stringref.h \
		./catch2/internal/catch_preprocessor.hpp \
		./catch2/internal/catch_meta.hpp \
		./catch2/internal/catch_test_spec.h \
		./catch2/internal/catch_wildcard_pattern.h \
		./catch2/internal/catch_test_case_info.h \
		./catch2/internal/catch_interfaces_config.h \
		./catch2/internal/catch_option.hpp \
		./catch2/internal/catch_context.h \
		./catch2/internal/catch_enforce.h \
		./catch2/internal/catch_stream.h \
		./catch2/internal/catch_interfaces_registry_hub.h \
		./catch2/internal/catch_random_number_generator.h \
		./catch2/internal/catch_run_context.h \
		./catch2/internal/catch_interfaces_generatortracker.h \
		./catch2/internal/catch_interfaces_runner.h \
		./catch2/internal/catch_interfaces_reporter.h \
		./catch2/internal/catch_section_info.h \
		./catch2/internal/catch_totals.h \
		./catch2/internal/catch_config.hpp \
		./catch2/internal/catch_test_spec_parser.h \
		./catch2/internal/catch_string_manip.h \
		./catch2/internal/catch_interfaces_tag_alias_registry.h \
		./catch2/internal/catch_assertionresult.h \
		./catch2/internal/catch_assertioninfo.h \
		./catch2/internal/catch_result_type.h \
		./catch2/internal/catch_assertionhandler.h \
		./catch2/internal/catch_decomposer.h \
		./catch2/internal/catch_tostring.h \
		./catch2/internal/catch_interfaces_enum_values_registry.h \
		./catch2/internal/catch_objc_arc.hpp \
		./catch2/internal/catch_interfaces_capture.h \
		./catch2/internal/catch_message.h \
		./catch2/internal/benchmark/catch_estimate.hpp \
		./catch2/internal/benchmark/catch_outlier_classification.hpp \
		./catch2/internal/catch_interfaces_exception.h \
		./catch2/internal/catch_capture.hpp \
		./catch2/internal/catch_test_case_tracker.h \
		./catch2/internal/catch_timer.h \
		./catch2/internal/catch_fatal_condition.h \
		./catch2/internal/catch_windows_h_proxy.h
	$(CXX) -c $(CXXFLAGS) -o $(OBJ_DIR)/catch_test_case_registry_impl.o ./catch2/internal/catch_test_case_registry_impl.cpp

$(OBJ_DIR)/catch_test_case_tracker.o: ./catch2/internal/catch_test_case_tracker.cpp ./catch2/internal/catch_test_case_tracker.h \
		./catch2/internal/catch_compiler_capabilities.h \
		./catch2/internal/catch_platform.h \
		./catch2/internal/catch_common.h \
		./catch2/internal/catch_enforce.h \
		./catch2/internal/catch_stream.h \
		./catch2/internal/catch_string_manip.h \
		./catch2/internal/catch_stringref.h
	$(CXX) -c $(CXXFLAGS) -o $(OBJ_DIR)/catch_test_case_tracker.o ./catch2/internal/catch_test_case_tracker.cpp

$(OBJ_DIR)/catch_test_registry.o: ./catch2/internal/catch_test_registry.cpp ./catch2/internal/catch_test_registry.h \
		./catch2/internal/catch_common.h \
		./catch2/internal/catch_compiler_capabilities.h \
		./catch2/internal/catch_platform.h \
		./catch2/internal/catch_interfaces_testcase.h \
		./catch2/internal/catch_stringref.h \
		./catch2/internal/catch_preprocessor.hpp \
		./catch2/internal/catch_meta.hpp \
		./catch2/internal/catch_test_case_registry_impl.h \
		./catch2/internal/catch_test_spec.h \
		./catch2/internal/catch_wildcard_pattern.h \
		./catch2/internal/catch_test_case_info.h \
		./catch2/internal/catch_interfaces_config.h \
		./catch2/internal/catch_option.hpp \
		./catch2/internal/catch_interfaces_registry_hub.h
	$(CXX) -c $(CXXFLAGS) -o $(OBJ_DIR)/catch_test_registry.o ./catch2/internal/catch_test_registry.cpp

$(OBJ_DIR)/catch_test_spec.o: ./catch2/internal/catch_test_spec.cpp ./catch2/internal/catch_test_spec.h \
		./catch2/internal/catch_wildcard_pattern.h \
		./catch2/internal/catch_common.h \
		./catch2/internal/catch_compiler_capabilities.h \
		./catch2/internal/catch_platform.h \
		./catch2/internal/catch_test_case_info.h \
		./catch2/internal/catch_test_registry.h \
		./catch2/internal/catch_interfaces_testcase.h \
		./catch2/internal/catch_stringref.h \
		./catch2/internal/catch_preprocessor.hpp \
		./catch2/internal/catch_meta.hpp \
		./catch2/internal/catch_string_manip.h \
		./catch2/internal/catch_interfaces_config.h \
		./catch2/internal/catch_option.hpp
	$(CXX) -c $(CXXFLAGS) -o $(OBJ_DIR)/catch_test_spec.o ./catch2/internal/catch_test_spec.cpp

$(OBJ_DIR)/catch_test_spec_parser.o: ./catch2/internal/catch_test_spec_parser.cpp ./catch2/internal/catch_test_spec_parser.h \
		./catch2/internal/catch_test_spec.h \
		./catch2/internal/catch_wildcard_pattern.h \
		./catch2/internal/catch_common.h \
		./catch2/internal/catch_compiler_capabilities.h \
		./catch2/internal/catch_platform.h \
		./catch2/internal/catch_test_case_info.h \
		./catch2/internal/catch_test_registry.h \
		./catch2/internal/catch_interfaces_testcase.h \
		./catch2/internal/catch_stringref.h \
		./catch2/internal/catch_preprocessor.hpp \
		./catch2/internal/catch_meta.hpp \
		./catch2/internal/catch_string_manip.h \
		./catch2/internal/catch_interfaces_tag_alias_registry.h
	$(CXX) -c $(CXXFLAGS) -o $(OBJ_DIR)/catch_test_spec_parser.o ./catch2/internal/catch_test_spec_parser.cpp

$(OBJ_DIR)/catch_timer.o: ./catch2/internal/catch_timer.cpp ./catch2/internal/catch_timer.h
	$(CXX) -c $(CXXFLAGS) -o $(OBJ_DIR)/catch_timer.o ./catch2/internal/catch_timer.cpp

$(OBJ_DIR)/catch_tostring.o: ./catch2/internal/catch_tostring.cpp ./catch2/internal/catch_tostring.h \
		./catch2/internal/catch_compiler_capabilities.h \
		./catch2/internal/catch_platform.h \
		./catch2/internal/catch_stream.h \
		./catch2/internal/catch_common.h \
		./catch2/internal/catch_interfaces_enum_values_registry.h \
		./catch2/internal/catch_stringref.h \
		./catch2/internal/catch_objc_arc.hpp \
		./catch2/internal/catch_interfaces_config.h \
		./catch2/internal/catch_option.hpp \
		./catch2/internal/catch_context.h \
		./catch2/internal/catch_polyfills.hpp
	$(CXX) -c $(CXXFLAGS) -o $(OBJ_DIR)/catch_tostring.o ./catch2/internal/catch_tostring.cpp

$(OBJ_DIR)/catch_totals.o: ./catch2/internal/catch_totals.cpp ./catch2/internal/catch_totals.h
	$(CXX) -c $(CXXFLAGS) -o $(OBJ_DIR)/catch_totals.o ./catch2/internal/catch_totals.cpp

$(OBJ_DIR)/catch_uncaught_exceptions.o: ./catch2/internal/catch_uncaught_exceptions.cpp ./catch2/internal/catch_compiler_capabilities.h \
		./catch2/internal/catch_platform.h \
		./catch2/internal/catch_uncaught_exceptions.h
	$(CXX) -c $(CXXFLAGS) -o $(OBJ_DIR)/catch_uncaught_exceptions.o ./catch2/internal/catch_uncaught_exceptions.cpp

$(OBJ_DIR)/catch_version.o: ./catch2/internal/catch_version.cpp ./catch2/internal/catch_version.h
	$(CXX) -c $(CXXFLAGS) -o $(OBJ_DIR)/catch_version.o ./catch2/internal/catch_version.cpp

$(OBJ_DIR)/catch_wildcard_pattern.o: ./catch2/internal/catch_wildcard_pattern.cpp ./catch2/internal/catch_wildcard_pattern.h \
		./catch2/internal/catch_common.h \
		./catch2/internal/catch_compiler_capabilities.h \
		./catch2/internal/catch_platform.h \
		./catch2/internal/catch_enforce.h \
		./catch2/internal/catch_stream.h \
		./catch2/internal/catch_string_manip.h \
		./catch2/internal/catch_stringref.h
	$(CXX) -c $(CXXFLAGS) -o $(OBJ_DIR)/catch_wildcard_pattern.o ./catch2/internal/catch_wildcard_pattern.cpp

$(OBJ_DIR)/catch_xmlwriter.o: ./catch2/internal/catch_xmlwriter.cpp ./catch2/internal/catch_xmlwriter.h \
		./catch2/internal/catch_stream.h \
		./catch2/internal/catch_common.h \
		./catch2/internal/catch_compiler_capabilities.h \
		./catch2/internal/catch_platform.h \
		./catch2/internal/catch_enforce.h
	$(CXX) -c $(CXXFLAGS) -o $(OBJ_DIR)/catch_xmlwriter.o ./catch2/internal/catch_xmlwriter.cpp

$(OBJ_DIR)/catch_reporter_bases.o: ./catch2/reporters/catch_reporter_bases.cpp ./catch2/internal/catch_interfaces_reporter.h \
		./catch2/internal/catch_section_info.h \
		./catch2/internal/catch_common.h \
		./catch2/internal/catch_compiler_capabilities.h \
		./catch2/internal/catch_platform.h \
		./catch2/internal/catch_totals.h \
		./catch2/internal/catch_config.hpp \
		./catch2/internal/catch_test_spec_parser.h \
		./catch2/internal/catch_test_spec.h \
		./catch2/internal/catch_wildcard_pattern.h \
		./catch2/internal/catch_test_case_info.h \
		./catch2/internal/catch_test_registry.h \
		./catch2/internal/catch_interfaces_testcase.h \
		./catch2/internal/catch_stringref.h \
		./catch2/internal/catch_preprocessor.hpp \
		./catch2/internal/catch_meta.hpp \
		./catch2/internal/catch_string_manip.h \
		./catch2/internal/catch_interfaces_tag_alias_registry.h \
		./catch2/internal/catch_interfaces_config.h \
		./catch2/internal/catch_option.hpp \
		./catch2/internal/catch_stream.h \
		./catch2/internal/catch_assertionresult.h \
		./catch2/internal/catch_assertioninfo.h \
		./catch2/internal/catch_result_type.h \
		./catch2/internal/catch_assertionhandler.h \
		./catch2/internal/catch_decomposer.h \
		./catch2/internal/catch_tostring.h \
		./catch2/internal/catch_interfaces_enum_values_registry.h \
		./catch2/internal/catch_objc_arc.hpp \
		./catch2/internal/catch_interfaces_capture.h \
		./catch2/internal/catch_message.h \
		./catch2/internal/benchmark/catch_estimate.hpp \
		./catch2/internal/benchmark/catch_outlier_classification.hpp \
		./catch2/internal/catch_errno_guard.h \
		./catch2/reporters/catch_reporter_bases.hpp \
		./catch2/internal/catch_enforce.h
	$(CXX) -c $(CXXFLAGS) -o $(OBJ_DIR)/catch_reporter_bases.o ./catch2/reporters/catch_reporter_bases.cpp

$(OBJ_DIR)/catch_reporter_compact.o: ./catch2/reporters/catch_reporter_compact.cpp ./catch2/reporters/catch_reporter_compact.h \
		./catch2/reporters/catch_reporter_bases.hpp \
		./catch2/internal/catch_enforce.h \
		./catch2/internal/catch_common.h \
		./catch2/internal/catch_compiler_capabilities.h \
		./catch2/internal/catch_platform.h \
		./catch2/internal/catch_stream.h \
		./catch2/internal/catch_interfaces_reporter.h \
		./catch2/internal/catch_section_info.h \
		./catch2/internal/catch_totals.h \
		./catch2/internal/catch_config.hpp \
		./catch2/internal/catch_test_spec_parser.h \
		./catch2/internal/catch_test_spec.h \
		./catch2/internal/catch_wildcard_pattern.h \
		./catch2/internal/catch_test_case_info.h \
		./catch2/internal/catch_test_registry.h \
		./catch2/internal/catch_interfaces_testcase.h \
		./catch2/internal/catch_stringref.h \
		./catch2/internal/catch_preprocessor.hpp \
		./catch2/internal/catch_meta.hpp \
		./catch2/internal/catch_string_manip.h \
		./catch2/internal/catch_interfaces_tag_alias_registry.h \
		./catch2/internal/catch_interfaces_config.h \
		./catch2/internal/catch_option.hpp \
		./catch2/internal/catch_assertionresult.h \
		./catch2/internal/catch_assertioninfo.h \
		./catch2/internal/catch_result_type.h \
		./catch2/internal/catch_assertionhandler.h \
		./catch2/internal/catch_decomposer.h \
		./catch2/internal/catch_tostring.h \
		./catch2/internal/catch_interfaces_enum_values_registry.h \
		./catch2/internal/catch_objc_arc.hpp \
		./catch2/internal/catch_interfaces_capture.h \
		./catch2/internal/catch_message.h \
		./catch2/internal/benchmark/catch_estimate.hpp \
		./catch2/internal/benchmark/catch_outlier_classification.hpp \
		./catch2/internal/catch_reporter_registrars.hpp \
		./catch2/internal/catch_interfaces_registry_hub.h \
		./catch2/internal/catch_console_colour.h
	$(CXX) -c $(CXXFLAGS) -o $(OBJ_DIR)/catch_reporter_compact.o ./catch2/reporters/catch_reporter_compact.cpp

$(OBJ_DIR)/catch_reporter_console.o: ./catch2/reporters/catch_reporter_console.cpp ./catch2/reporters/catch_reporter_console.h \
		./catch2/reporters/catch_reporter_bases.hpp \
		./catch2/internal/catch_enforce.h \
		./catch2/internal/catch_common.h \
		./catch2/internal/catch_compiler_capabilities.h \
		./catch2/internal/catch_platform.h \
		./catch2/internal/catch_stream.h \
		./catch2/internal/catch_interfaces_reporter.h \
		./catch2/internal/catch_section_info.h \
		./catch2/internal/catch_totals.h \
		./catch2/internal/catch_config.hpp \
		./catch2/internal/catch_test_spec_parser.h \
		./catch2/internal/catch_test_spec.h \
		./catch2/internal/catch_wildcard_pattern.h \
		./catch2/internal/catch_test_case_info.h \
		./catch2/internal/catch_test_registry.h \
		./catch2/internal/catch_interfaces_testcase.h \
		./catch2/internal/catch_stringref.h \
		./catch2/internal/catch_preprocessor.hpp \
		./catch2/internal/catch_meta.hpp \
		./catch2/internal/catch_string_manip.h \
		./catch2/internal/catch_interfaces_tag_alias_registry.h \
		./catch2/internal/catch_interfaces_config.h \
		./catch2/internal/catch_option.hpp \
		./catch2/internal/catch_assertionresult.h \
		./catch2/internal/catch_assertioninfo.h \
		./catch2/internal/catch_result_type.h \
		./catch2/internal/catch_assertionhandler.h \
		./catch2/internal/catch_decomposer.h \
		./catch2/internal/catch_tostring.h \
		./catch2/internal/catch_interfaces_enum_values_registry.h \
		./catch2/internal/catch_objc_arc.hpp \
		./catch2/internal/catch_interfaces_capture.h \
		./catch2/internal/catch_message.h \
		./catch2/internal/benchmark/catch_estimate.hpp \
		./catch2/internal/benchmark/catch_outlier_classification.hpp \
		./catch2/internal/catch_reporter_registrars.hpp \
		./catch2/internal/catch_interfaces_registry_hub.h \
		./catch2/internal/catch_console_colour.h \
		./catch2/internal/catch_version.h \
		./catch2/internal/catch_text.h \
		./catch2/internal/catch_clara.h \
		./catch2/external/clara.hpp
	$(CXX) -c $(CXXFLAGS) -o $(OBJ_DIR)/catch_reporter_console.o ./catch2/reporters/catch_reporter_console.cpp

$(OBJ_DIR)/catch_reporter_junit.o: ./catch2/reporters/catch_reporter_junit.cpp ./catch2/reporters/catch_reporter_bases.hpp \
		./catch2/internal/catch_enforce.h \
		./catch2/internal/catch_common.h \
		./catch2/internal/catch_compiler_capabilities.h \
		./catch2/internal/catch_platform.h \
		./catch2/internal/catch_stream.h \
		./catch2/internal/catch_interfaces_reporter.h \
		./catch2/internal/catch_section_info.h \
		./catch2/internal/catch_totals.h \
		./catch2/internal/catch_config.hpp \
		./catch2/internal/catch_test_spec_parser.h \
		./catch2/internal/catch_test_spec.h \
		./catch2/internal/catch_wildcard_pattern.h \
		./catch2/internal/catch_test_case_info.h \
		./catch2/internal/catch_test_registry.h \
		./catch2/internal/catch_interfaces_testcase.h \
		./catch2/internal/catch_stringref.h \
		./catch2/internal/catch_preprocessor.hpp \
		./catch2/internal/catch_meta.hpp \
		./catch2/internal/catch_string_manip.h \
		./catch2/internal/catch_interfaces_tag_alias_registry.h \
		./catch2/internal/catch_interfaces_config.h \
		./catch2/internal/catch_option.hpp \
		./catch2/internal/catch_assertionresult.h \
		./catch2/internal/catch_assertioninfo.h \
		./catch2/internal/catch_result_type.h \
		./catch2/internal/catch_assertionhandler.h \
		./catch2/internal/catch_decomposer.h \
		./catch2/internal/catch_tostring.h \
		./catch2/internal/catch_interfaces_enum_values_registry.h \
		./catch2/internal/catch_objc_arc.hpp \
		./catch2/internal/catch_interfaces_capture.h \
		./catch2/internal/catch_message.h \
		./catch2/internal/benchmark/catch_estimate.hpp \
		./catch2/internal/benchmark/catch_outlier_classification.hpp \
		./catch2/reporters/catch_reporter_junit.h \
		./catch2/internal/catch_xmlwriter.h \
		./catch2/internal/catch_timer.h \
		./catch2/internal/catch_reporter_registrars.hpp \
		./catch2/internal/catch_interfaces_registry_hub.h \
		./catch2/internal/catch_text.h \
		./catch2/internal/catch_clara.h \
		./catch2/external/clara.hpp
	$(CXX) -c $(CXXFLAGS) -o $(OBJ_DIR)/catch_reporter_junit.o ./catch2/reporters/catch_reporter_junit.cpp

$(OBJ_DIR)/catch_reporter_listening.o: ./catch2/reporters/catch_reporter_listening.cpp ./catch2/reporters/catch_reporter_listening.h \
		./catch2/internal/catch_interfaces_reporter.h \
		./catch2/internal/catch_section_info.h \
		./catch2/internal/catch_common.h \
		./catch2/internal/catch_compiler_capabilities.h \
		./catch2/internal/catch_platform.h \
		./catch2/internal/catch_totals.h \
		./catch2/internal/catch_config.hpp \
		./catch2/internal/catch_test_spec_parser.h \
		./catch2/internal/catch_test_spec.h \
		./catch2/internal/catch_wildcard_pattern.h \
		./catch2/internal/catch_test_case_info.h \
		./catch2/internal/catch_test_registry.h \
		./catch2/internal/catch_interfaces_testcase.h \
		./catch2/internal/catch_stringref.h \
		./catch2/internal/catch_preprocessor.hpp \
		./catch2/internal/catch_meta.hpp \
		./catch2/internal/catch_string_manip.h \
		./catch2/internal/catch_interfaces_tag_alias_registry.h \
		./catch2/internal/catch_interfaces_config.h \
		./catch2/internal/catch_option.hpp \
		./catch2/internal/catch_stream.h \
		./catch2/internal/catch_assertionresult.h \
		./catch2/internal/catch_assertioninfo.h \
		./catch2/internal/catch_result_type.h \
		./catch2/internal/catch_assertionhandler.h \
		./catch2/internal/catch_decomposer.h \
		./catch2/internal/catch_tostring.h \
		./catch2/internal/catch_interfaces_enum_values_registry.h \
		./catch2/internal/catch_objc_arc.hpp \
		./catch2/internal/catch_interfaces_capture.h \
		./catch2/internal/catch_message.h \
		./catch2/internal/benchmark/catch_estimate.hpp \
		./catch2/internal/benchmark/catch_outlier_classification.hpp
	$(CXX) -c $(CXXFLAGS) -o $(OBJ_DIR)/catch_reporter_listening.o ./catch2/reporters/catch_reporter_listening.cpp

$(OBJ_DIR)/catch_reporter_xml.o: ./catch2/reporters/catch_reporter_xml.cpp ./catch2/reporters/catch_reporter_xml.h \
		./catch2/reporters/catch_reporter_bases.hpp \
		./catch2/internal/catch_enforce.h \
		./catch2/internal/catch_common.h \
		./catch2/internal/catch_compiler_capabilities.h \
		./catch2/internal/catch_platform.h \
		./catch2/internal/catch_stream.h \
		./catch2/internal/catch_interfaces_reporter.h \
		./catch2/internal/catch_section_info.h \
		./catch2/internal/catch_totals.h \
		./catch2/internal/catch_config.hpp \
		./catch2/internal/catch_test_spec_parser.h \
		./catch2/internal/catch_test_spec.h \
		./catch2/internal/catch_wildcard_pattern.h \
		./catch2/internal/catch_test_case_info.h \
		./catch2/internal/catch_test_registry.h \
		./catch2/internal/catch_interfaces_testcase.h \
		./catch2/internal/catch_stringref.h \
		./catch2/internal/catch_preprocessor.hpp \
		./catch2/internal/catch_meta.hpp \
		./catch2/internal/catch_string_manip.h \
		./catch2/internal/catch_interfaces_tag_alias_registry.h \
		./catch2/internal/catch_interfaces_config.h \
		./catch2/internal/catch_option.hpp \
		./catch2/internal/catch_assertionresult.h \
		./catch2/internal/catch_assertioninfo.h \
		./catch2/internal/catch_result_type.h \
		./catch2/internal/catch_assertionhandler.h \
		./catch2/internal/catch_decomposer.h \
		./catch2/internal/catch_tostring.h \
		./catch2/internal/catch_interfaces_enum_values_registry.h \
		./catch2/internal/catch_objc_arc.hpp \
		./catch2/internal/catch_interfaces_capture.h \
		./catch2/internal/catch_message.h \
		./catch2/internal/benchmark/catch_estimate.hpp \
		./catch2/internal/benchmark/catch_outlier_classification.hpp \
		./catch2/internal/catch_xmlwriter.h \
		./catch2/internal/catch_timer.h \
		./catch2/internal/catch_capture.hpp \
		./catch2/internal/catch_reporter_registrars.hpp \
		./catch2/internal/catch_interfaces_registry_hub.h
	$(CXX) -c $(CXXFLAGS) -o $(OBJ_DIR)/catch_reporter_xml.o ./catch2/reporters/catch_reporter_xml.cpp

$(OBJ_DIR)/deque.o: ./deque.cpp ./deque.h \
		./dequeexception.h
	$(CXX) -c $(CXXFLAGS) -o $(OBJ_DIR)/deque.o ./deque.cpp

$(OBJ_DIR)/deque_exception_test.o: ./deque_tests/deque_exception_test.cpp ./catch2/catch.hpp \
		./catch2/internal/catch_suppress_warnings.h \
		./catch2/internal/catch_platform.h \
		./catch2/internal/catch_user_interfaces.h \
		./catch2/internal/catch_tag_alias_autoregistrar.h \
		./catch2/internal/catch_common.h \
		./catch2/internal/catch_compiler_capabilities.h \
		./catch2/internal/catch_test_registry.h \
		./catch2/internal/catch_interfaces_testcase.h \
		./catch2/internal/catch_stringref.h \
		./catch2/internal/catch_preprocessor.hpp \
		./catch2/internal/catch_meta.hpp \
		./catch2/internal/catch_capture.hpp \
		./catch2/internal/catch_assertionhandler.h \
		./catch2/internal/catch_assertioninfo.h \
		./catch2/internal/catch_result_type.h \
		./catch2/internal/catch_decomposer.h \
		./catch2/internal/catch_tostring.h \
		./catch2/internal/catch_stream.h \
		./catch2/internal/catch_interfaces_enum_values_registry.h \
		./catch2/internal/catch_objc_arc.hpp \
		./catch2/internal/catch_interfaces_capture.h \
		./catch2/internal/catch_message.h \
		./catch2/internal/catch_section.h \
		./catch2/internal/catch_section_info.h \
		./catch2/internal/catch_totals.h \
		./catch2/internal/catch_timer.h \
		./catch2/internal/catch_interfaces_exception.h \
		./catch2/internal/catch_interfaces_registry_hub.h \
		./catch2/internal/catch_approx.h \
		./catch2/internal/catch_string_manip.h \
		./catch2/internal/catch_capture_matchers.h \
		./catch2/internal/catch_matchers.h \
		./catch2/internal/catch_matchers_exception.hpp \
		./catch2/internal/catch_matchers_floating.h \
		./catch2/internal/catch_matchers_generic.hpp \
		./catch2/internal/catch_matchers_string.h \
		./catch2/internal/catch_matchers_vector.h \
		./catch2/internal/catch_generators.hpp \
		./catch2/internal/catch_interfaces_generatortracker.h \
		./catch2/internal/catch_enforce.h \
		./catch2/internal/catch_generators_generic.hpp \
		./catch2/internal/catch_generators_specific.hpp \
		./catch2/internal/catch_context.h \
		./catch2/internal/catch_interfaces_config.h \
		./catch2/internal/catch_option.hpp \
		./catch2/internal/catch_random_number_generator.h \
		./catch2/internal/catch_test_case_info.h \
		./catch2/internal/catch_interfaces_runner.h \
		./catch2/internal/catch_objc.hpp \
		./catch2/internal/catch_external_interfaces.h \
		./catch2/reporters/catch_reporter_bases.hpp \
		./catch2/internal/catch_interfaces_reporter.h \
		./catch2/internal/catch_config.hpp \
		./catch2/internal/catch_test_spec_parser.h \
		./catch2/internal/catch_test_spec.h \
		./catch2/internal/catch_wildcard_pattern.h \
		./catch2/internal/catch_interfaces_tag_alias_registry.h \
		./catch2/internal/catch_assertionresult.h \
		./catch2/internal/benchmark/catch_estimate.hpp \
		./catch2/internal/benchmark/catch_outlier_classification.hpp \
		./catch2/internal/catch_console_colour.h \
		./catch2/internal/catch_reporter_registrars.hpp \
		./catch2/reporters/catch_reporter_compact.h \
		./catch2/reporters/catch_reporter_console.h \
		./catch2/reporters/catch_reporter_junit.h \
		./catch2/internal/catch_xmlwriter.h \
		./catch2/reporters/catch_reporter_xml.h \
		./catch2/internal/benchmark/catch_benchmarking_all.hpp \
		./catch2/internal/benchmark/catch_benchmark.hpp \
		./catch2/internal/benchmark/catch_chronometer.hpp \
		./catch2/internal/benchmark/catch_clock.hpp \
		./catch2/internal/benchmark/catch_optimizer.hpp \
		./catch2/internal/benchmark/detail/catch_complete_invoke.hpp \
		./catch2/internal/benchmark/catch_environment.hpp \
		./catch2/internal/benchmark/catch_execution_plan.hpp \
		./catch2/internal/benchmark/detail/catch_benchmark_function.hpp \
		./catch2/internal/benchmark/detail/catch_repeat.hpp \
		./catch2/internal/benchmark/detail/catch_run_for_at_least.hpp \
		./catch2/internal/benchmark/detail/catch_measure.hpp \
		./catch2/internal/benchmark/detail/catch_timing.hpp \
		./catch2/internal/benchmark/detail/catch_estimate_clock.hpp \
		./catch2/internal/benchmark/detail/catch_stats.hpp \
		./catch2/internal/benchmark/detail/catch_analyse.hpp \
		./catch2/internal/benchmark/catch_sample_analysis.hpp \
		./catch2/internal/benchmark/catch_constructor.hpp \
		./catch2/internal/catch_impl.hpp \
		./catch2/internal/catch_test_case_tracker.h \
		./catch2/internal/catch_leak_detector.h \
		./catch2/internal/catch_default_main.hpp \
		./catch2/internal/catch_session.h \
		./catch2/internal/catch_commandline.h \
		./catch2/internal/catch_clara.h \
		./catch2/external/clara.hpp \
		./catch2/internal/catch_text.h \
		./catch2/internal/catch_reenable_warnings.h \
		./dequeexception.h
	$(CXX) -c $(CXXFLAGS) -o $(OBJ_DIR)/deque_exception_test.o ./deque_tests/deque_exception_test.cpp

$(OBJ_DIR)/deque_test.o: ./deque_tests/deque_test.cpp ./catch2/catch.hpp \
		./catch2/internal/catch_suppress_warnings.h \
		./catch2/internal/catch_platform.h \
		./catch2/internal/catch_user_interfaces.h \
		./catch2/internal/catch_tag_alias_autoregistrar.h \
		./catch2/internal/catch_common.h \
		./catch2/internal/catch_compiler_capabilities.h \
		./catch2/internal/catch_test_registry.h \
		./catch2/internal/catch_interfaces_testcase.h \
		./catch2/internal/catch_stringref.h \
		./catch2/internal/catch_preprocessor.hpp \
		./catch2/internal/catch_meta.hpp \
		./catch2/internal/catch_capture.hpp \
		./catch2/internal/catch_assertionhandler.h \
		./catch2/internal/catch_assertioninfo.h \
		./catch2/internal/catch_result_type.h \
		./catch2/internal/catch_decomposer.h \
		./catch2/internal/catch_tostring.h \
		./catch2/internal/catch_stream.h \
		./catch2/internal/catch_interfaces_enum_values_registry.h \
		./catch2/internal/catch_objc_arc.hpp \
		./catch2/internal/catch_interfaces_capture.h \
		./catch2/internal/catch_message.h \
		./catch2/internal/catch_section.h \
		./catch2/internal/catch_section_info.h \
		./catch2/internal/catch_totals.h \
		./catch2/internal/catch_timer.h \
		./catch2/internal/catch_interfaces_exception.h \
		./catch2/internal/catch_interfaces_registry_hub.h \
		./catch2/internal/catch_approx.h \
		./catch2/internal/catch_string_manip.h \
		./catch2/internal/catch_capture_matchers.h \
		./catch2/internal/catch_matchers.h \
		./catch2/internal/catch_matchers_exception.hpp \
		./catch2/internal/catch_matchers_floating.h \
		./catch2/internal/catch_matchers_generic.hpp \
		./catch2/internal/catch_matchers_string.h \
		./catch2/internal/catch_matchers_vector.h \
		./catch2/internal/catch_generators.hpp \
		./catch2/internal/catch_interfaces_generatortracker.h \
		./catch2/internal/catch_enforce.h \
		./catch2/internal/catch_generators_generic.hpp \
		./catch2/internal/catch_generators_specific.hpp \
		./catch2/internal/catch_context.h \
		./catch2/internal/catch_interfaces_config.h \
		./catch2/internal/catch_option.hpp \
		./catch2/internal/catch_random_number_generator.h \
		./catch2/internal/catch_test_case_info.h \
		./catch2/internal/catch_interfaces_runner.h \
		./catch2/internal/catch_objc.hpp \
		./catch2/internal/catch_external_interfaces.h \
		./catch2/reporters/catch_reporter_bases.hpp \
		./catch2/internal/catch_interfaces_reporter.h \
		./catch2/internal/catch_config.hpp \
		./catch2/internal/catch_test_spec_parser.h \
		./catch2/internal/catch_test_spec.h \
		./catch2/internal/catch_wildcard_pattern.h \
		./catch2/internal/catch_interfaces_tag_alias_registry.h \
		./catch2/internal/catch_assertionresult.h \
		./catch2/internal/benchmark/catch_estimate.hpp \
		./catch2/internal/benchmark/catch_outlier_classification.hpp \
		./catch2/internal/catch_console_colour.h \
		./catch2/internal/catch_reporter_registrars.hpp \
		./catch2/reporters/catch_reporter_compact.h \
		./catch2/reporters/catch_reporter_console.h \
		./catch2/reporters/catch_reporter_junit.h \
		./catch2/internal/catch_xmlwriter.h \
		./catch2/reporters/catch_reporter_xml.h \
		./catch2/internal/benchmark/catch_benchmarking_all.hpp \
		./catch2/internal/benchmark/catch_benchmark.hpp \
		./catch2/internal/benchmark/catch_chronometer.hpp \
		./catch2/internal/benchmark/catch_clock.hpp \
		./catch2/internal/benchmark/catch_optimizer.hpp \
		./catch2/internal/benchmark/detail/catch_complete_invoke.hpp \
		./catch2/internal/benchmark/catch_environment.hpp \
		./catch2/internal/benchmark/catch_execution_plan.hpp \
		./catch2/internal/benchmark/detail/catch_benchmark_function.hpp \
		./catch2/internal/benchmark/detail/catch_repeat.hpp \
		./catch2/internal/benchmark/detail/catch_run_for_at_least.hpp \
		./catch2/internal/benchmark/detail/catch_measure.hpp \
		./catch2/internal/benchmark/detail/catch_timing.hpp \
		./catch2/internal/benchmark/detail/catch_estimate_clock.hpp \
		./catch2/internal/benchmark/detail/catch_stats.hpp \
		./catch2/internal/benchmark/detail/catch_analyse.hpp \
		./catch2/internal/benchmark/catch_sample_analysis.hpp \
		./catch2/internal/benchmark/catch_constructor.hpp \
		./catch2/internal/catch_impl.hpp \
		./catch2/internal/catch_test_case_tracker.h \
		./catch2/internal/catch_leak_detector.h \
		./catch2/internal/catch_default_main.hpp \
		./catch2/internal/catch_session.h \
		./catch2/internal/catch_commandline.h \
		./catch2/internal/catch_clara.h \
		./catch2/external/clara.hpp \
		./catch2/internal/catch_text.h \
		./catch2/internal/catch_reenable_warnings.h \
		./deque.h \
		./dequeexception.h
	$(CXX) -c $(CXXFLAGS) -o $(OBJ_DIR)/deque_test.o ./deque_tests/deque_test.cpp

$(OBJ_DIR)/dequeiterator_test.o: ./deque_tests/dequeiterator_test.cpp ./catch2/catch.hpp \
		./catch2/internal/catch_suppress_warnings.h \
		./catch2/internal/catch_platform.h \
		./catch2/internal/catch_user_interfaces.h \
		./catch2/internal/catch_tag_alias_autoregistrar.h \
		./catch2/internal/catch_common.h \
		./catch2/internal/catch_compiler_capabilities.h \
		./catch2/internal/catch_test_registry.h \
		./catch2/internal/catch_interfaces_testcase.h \
		./catch2/internal/catch_stringref.h \
		./catch2/internal/catch_preprocessor.hpp \
		./catch2/internal/catch_meta.hpp \
		./catch2/internal/catch_capture.hpp \
		./catch2/internal/catch_assertionhandler.h \
		./catch2/internal/catch_assertioninfo.h \
		./catch2/internal/catch_result_type.h \
		./catch2/internal/catch_decomposer.h \
		./catch2/internal/catch_tostring.h \
		./catch2/internal/catch_stream.h \
		./catch2/internal/catch_interfaces_enum_values_registry.h \
		./catch2/internal/catch_objc_arc.hpp \
		./catch2/internal/catch_interfaces_capture.h \
		./catch2/internal/catch_message.h \
		./catch2/internal/catch_section.h \
		./catch2/internal/catch_section_info.h \
		./catch2/internal/catch_totals.h \
		./catch2/internal/catch_timer.h \
		./catch2/internal/catch_interfaces_exception.h \
		./catch2/internal/catch_interfaces_registry_hub.h \
		./catch2/internal/catch_approx.h \
		./catch2/internal/catch_string_manip.h \
		./catch2/internal/catch_capture_matchers.h \
		./catch2/internal/catch_matchers.h \
		./catch2/internal/catch_matchers_exception.hpp \
		./catch2/internal/catch_matchers_floating.h \
		./catch2/internal/catch_matchers_generic.hpp \
		./catch2/internal/catch_matchers_string.h \
		./catch2/internal/catch_matchers_vector.h \
		./catch2/internal/catch_generators.hpp \
		./catch2/internal/catch_interfaces_generatortracker.h \
		./catch2/internal/catch_enforce.h \
		./catch2/internal/catch_generators_generic.hpp \
		./catch2/internal/catch_generators_specific.hpp \
		./catch2/internal/catch_context.h \
		./catch2/internal/catch_interfaces_config.h \
		./catch2/internal/catch_option.hpp \
		./catch2/internal/catch_random_number_generator.h \
		./catch2/internal/catch_test_case_info.h \
		./catch2/internal/catch_interfaces_runner.h \
		./catch2/internal/catch_objc.hpp \
		./catch2/internal/catch_external_interfaces.h \
		./catch2/reporters/catch_reporter_bases.hpp \
		./catch2/internal/catch_interfaces_reporter.h \
		./catch2/internal/catch_config.hpp \
		./catch2/internal/catch_test_spec_parser.h \
		./catch2/internal/catch_test_spec.h \
		./catch2/internal/catch_wildcard_pattern.h \
		./catch2/internal/catch_interfaces_tag_alias_registry.h \
		./catch2/internal/catch_assertionresult.h \
		./catch2/internal/benchmark/catch_estimate.hpp \
		./catch2/internal/benchmark/catch_outlier_classification.hpp \
		./catch2/internal/catch_console_colour.h \
		./catch2/internal/catch_reporter_registrars.hpp \
		./catch2/reporters/catch_reporter_compact.h \
		./catch2/reporters/catch_reporter_console.h \
		./catch2/reporters/catch_reporter_junit.h \
		./catch2/internal/catch_xmlwriter.h \
		./catch2/reporters/catch_reporter_xml.h \
		./catch2/internal/benchmark/catch_benchmarking_all.hpp \
		./catch2/internal/benchmark/catch_benchmark.hpp \
		./catch2/internal/benchmark/catch_chronometer.hpp \
		./catch2/internal/benchmark/catch_clock.hpp \
		./catch2/internal/benchmark/catch_optimizer.hpp \
		./catch2/internal/benchmark/detail/catch_complete_invoke.hpp \
		./catch2/internal/benchmark/catch_environment.hpp \
		./catch2/internal/benchmark/catch_execution_plan.hpp \
		./catch2/internal/benchmark/detail/catch_benchmark_function.hpp \
		./catch2/internal/benchmark/detail/catch_repeat.hpp \
		./catch2/internal/benchmark/detail/catch_run_for_at_least.hpp \
		./catch2/internal/benchmark/detail/catch_measure.hpp \
		./catch2/internal/benchmark/detail/catch_timing.hpp \
		./catch2/internal/benchmark/detail/catch_estimate_clock.hpp \
		./catch2/internal/benchmark/detail/catch_stats.hpp \
		./catch2/internal/benchmark/detail/catch_analyse.hpp \
		./catch2/internal/benchmark/catch_sample_analysis.hpp \
		./catch2/internal/benchmark/catch_constructor.hpp \
		./catch2/internal/catch_impl.hpp \
		./catch2/internal/catch_test_case_tracker.h \
		./catch2/internal/catch_leak_detector.h \
		./catch2/internal/catch_default_main.hpp \
		./catch2/internal/catch_session.h \
		./catch2/internal/catch_commandline.h \
		./catch2/internal/catch_clara.h \
		./catch2/external/clara.hpp \
		./catch2/internal/catch_text.h \
		./catch2/internal/catch_reenable_warnings.h \
		./deque.h \
		./dequeexception.h
	$(CXX) -c $(CXXFLAGS) -o $(OBJ_DIR)/dequeiterator_test.o ./deque_tests/dequeiterator_test.cpp

$(OBJ_DIR)/dequeexception.o: ./dequeexception.cpp ./dequeexception.h
	$(CXX) -c $(CXXFLAGS) -o $(OBJ_DIR)/dequeexception.o ./dequeexception.cpp

$(OBJ_DIR)/main.o: ./main.cpp ./catch2/catch.hpp \
		./catch2/internal/catch_suppress_warnings.h \
		./catch2/internal/catch_platform.h \
		./catch2/internal/catch_user_interfaces.h \
		./catch2/internal/catch_tag_alias_autoregistrar.h \
		./catch2/internal/catch_common.h \
		./catch2/internal/catch_compiler_capabilities.h \
		./catch2/internal/catch_test_registry.h \
		./catch2/internal/catch_interfaces_testcase.h \
		./catch2/internal/catch_stringref.h \
		./catch2/internal/catch_preprocessor.hpp \
		./catch2/internal/catch_meta.hpp \
		./catch2/internal/catch_capture.hpp \
		./catch2/internal/catch_assertionhandler.h \
		./catch2/internal/catch_assertioninfo.h \
		./catch2/internal/catch_result_type.h \
		./catch2/internal/catch_decomposer.h \
		./catch2/internal/catch_tostring.h \
		./catch2/internal/catch_stream.h \
		./catch2/internal/catch_interfaces_enum_values_registry.h \
		./catch2/internal/catch_objc_arc.hpp \
		./catch2/internal/catch_interfaces_capture.h \
		./catch2/internal/catch_message.h \
		./catch2/internal/catch_section.h \
		./catch2/internal/catch_section_info.h \
		./catch2/internal/catch_totals.h \
		./catch2/internal/catch_timer.h \
		./catch2/internal/catch_interfaces_exception.h \
		./catch2/internal/catch_interfaces_registry_hub.h \
		./catch2/internal/catch_approx.h \
		./catch2/internal/catch_string_manip.h \
		./catch2/internal/catch_capture_matchers.h \
		./catch2/internal/catch_matchers.h \
		./catch2/internal/catch_matchers_exception.hpp \
		./catch2/internal/catch_matchers_floating.h \
		./catch2/internal/catch_matchers_generic.hpp \
		./catch2/internal/catch_matchers_string.h \
		./catch2/internal/catch_matchers_vector.h \
		./catch2/internal/catch_generators.hpp \
		./catch2/internal/catch_interfaces_generatortracker.h \
		./catch2/internal/catch_enforce.h \
		./catch2/internal/catch_generators_generic.hpp \
		./catch2/internal/catch_generators_specific.hpp \
		./catch2/internal/catch_context.h \
		./catch2/internal/catch_interfaces_config.h \
		./catch2/internal/catch_option.hpp \
		./catch2/internal/catch_random_number_generator.h \
		./catch2/internal/catch_test_case_info.h \
		./catch2/internal/catch_interfaces_runner.h \
		./catch2/internal/catch_objc.hpp \
		./catch2/internal/catch_external_interfaces.h \
		./catch2/reporters/catch_reporter_bases.hpp \
		./catch2/internal/catch_interfaces_reporter.h \
		./catch2/internal/catch_config.hpp \
		./catch2/internal/catch_test_spec_parser.h \
		./catch2/internal/catch_test_spec.h \
		./catch2/internal/catch_wildcard_pattern.h \
		./catch2/internal/catch_interfaces_tag_alias_registry.h \
		./catch2/internal/catch_assertionresult.h \
		./catch2/internal/benchmark/catch_estimate.hpp \
		./catch2/internal/benchmark/catch_outlier_classification.hpp \
		./catch2/internal/catch_console_colour.h \
		./catch2/internal/catch_reporter_registrars.hpp \
		./catch2/reporters/catch_reporter_compact.h \
		./catch2/reporters/catch_reporter_console.h \
		./catch2/reporters/catch_reporter_junit.h \
		./catch2/internal/catch_xmlwriter.h \
		./catch2/reporters/catch_reporter_xml.h \
		./catch2/internal/benchmark/catch_benchmarking_all.hpp \
		./catch2/internal/benchmark/catch_benchmark.hpp \
		./catch2/internal/benchmark/catch_chronometer.hpp \
		./catch2/internal/benchmark/catch_clock.hpp \
		./catch2/internal/benchmark/catch_optimizer.hpp \
		./catch2/internal/benchmark/detail/catch_complete_invoke.hpp \
		./catch2/internal/benchmark/catch_environment.hpp \
		./catch2/internal/benchmark/catch_execution_plan.hpp \
		./catch2/internal/benchmark/detail/catch_benchmark_function.hpp \
		./catch2/internal/benchmark/detail/catch_repeat.hpp \
		./catch2/internal/benchmark/detail/catch_run_for_at_least.hpp \
		./catch2/internal/benchmark/detail/catch_measure.hpp \
		./catch2/internal/benchmark/detail/catch_timing.hpp \
		./catch2/internal/benchmark/detail/catch_estimate_clock.hpp \
		./catch2/internal/benchmark/detail/catch_stats.hpp \
		./catch2/internal/benchmark/detail/catch_analyse.hpp \
		./catch2/internal/benchmark/catch_sample_analysis.hpp \
		./catch2/internal/benchmark/catch_constructor.hpp \
		./catch2/internal/catch_impl.hpp \
		./catch2/internal/catch_test_case_tracker.h \
		./catch2/internal/catch_leak_detector.h \
		./catch2/internal/catch_default_main.hpp \
		./catch2/internal/catch_session.h \
		./catch2/internal/catch_commandline.h \
		./catch2/internal/catch_clara.h \
		./catch2/external/clara.hpp \
		./catch2/internal/catch_text.h \
		./catch2/internal/catch_reenable_warnings.h
	$(CXX) -c $(CXXFLAGS) -o $(OBJ_DIR)/main.o ./main.cpp

report: $(EXECUTABLE)
	$(EXECUTABLE)  > /dev/null
	lcov -t "report" -d Build/ -c -o "report.info"
	genhtml -o report report.info

clean:
	rm -rf  $(OBJECTS) $(EXECUTABLE)
	rm -rf  report.info

