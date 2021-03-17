message("Running OSX deploy script.")
find_program(MACDEPLOYQT macdeployqt)
message("Found macdeployqt: ${MACDEPLOYQT}")
set(MERKAARTOR_BINARY "${CPACK_TEMPORARY_INSTALL_DIRECTORY}/merkaartor.app")

# Remove when done debugging
get_cmake_property(_variableNames VARIABLES)
list (SORT _variableNames)
foreach (_variableName ${_variableNames})
    message(STATUS "${_variableName}=${${_variableName}}")
endforeach()
#message("Prefix is: ${CMAKE_INSTALL_PREFIX}")
#execute_process(COMMAND ls ${CMAKE_INSTALL_PREFIX})

execute_process(COMMAND ls "${CPACK_TEMPORARY_INSTALL_DIRECTORY}")
