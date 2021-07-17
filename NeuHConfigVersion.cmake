SET(NeuH_MAJOR_VERSION 0)
SET(NeuH_MINOR_VERSION 1)
SET(NeuH_PATCH_VERSION 0)
SET(NeuH_VERSION ${NeuH_MAJOR_VERSION}.${NeuH_MINOR_VERSION}.${NeuH_PATCH_VERSION})
SET(PACKAGE_VERSION ${NeuH_VERSION})

SET(PACKAGE_VERSION_EXACT FALSE)
SET(PACKAGE_VERSION_COMPATIBLE FALSE)

IF("${PACKAGE_FIND_VERSION}" VERSION_EQUAL "${PACKAGE_VERSION}")
  SET(PACKAGE_VERSION_EXACT TRUE)
  SET(PACKAGE_VERSION_COMPATIBLE TRUE)
ENDIF()

IF("${PACKAGE_FIND_VERSION_MAJOR}" EQUAL ${NeuH_MAJOR_VERSION}
    AND "${PACKAGE_FIND_VERSION}" VERSION_LESS "${PACKAGE_VERSION}")
  SET(PACKAGE_VERSION_COMPATIBLE TRUE)
ENDIF()
