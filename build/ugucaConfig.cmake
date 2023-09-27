###
# @file   ugucaConfig.cmake.in
#
# @author David S. Kammer <dkammer@ethz.ch>
# @author Gabriele Albertini <ga288@cornell.edu>
# @author Chun-Yu Ke <ck659@cornell.edu>
#
# @date creation: Fri Feb 5 2021
# @date last modification: Fri Feb 5 2021
#
# @brief  TODO
#
#
# Copyright (C) 2021 ETH Zurich (David S. Kammer)
#
# This file is part of uguca.
#
# uguca is free software: you can redistribute it and/or modify
# it under the terms of the GNU Lesser General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# uguca is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU Lesser General Public License for more details.
#
# You should have received a copy of the GNU Lesser General Public License
# along with uguca.  If not, see <https://www.gnu.org/licenses/>.
####
get_filename_component(UGUCA_CMAKE_DIR "${CMAKE_CURRENT_LIST_FILE}" PATH)

#set(UGUCA_USE_FILE "${UGUCA_CMAKE_DIR}/ugucaUse.cmake")
#include(${UGUCA_USE_FILE})

if(EXISTS "${UGUCA_CMAKE_DIR}/CMakeCache.txt")
   # In build tree
   include("${UGUCA_CMAKE_DIR}/ugucaBuildTreeSettings.cmake")
 else()
   # In install tree
   set(UGUCA_INCLUDE_DIRS "${UGUCA_CMAKE_DIR}/../../include/uguca")
   set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${UGUCA_CMAKE_DIR}")
endif()

include("${UGUCA_CMAKE_DIR}/ugucaLibraryDepends.cmake")


set(UGUCA_BUILD_TYPE )



