################################################################################
#
#  NetFPGA-10G http://www.netfpga.org
#
#  File:
#        nf10_axis_converter_tb.sh
#
#  Library:
#        hw/std/pcores/nf10_axis_converter_v1_00_a
#
#  Module:
#        nf10_axis_converter_v1_00_a.bat
#
#  Author:
#        James Hongyi Zeng
#
#  Description:
#        Mark Grindell- batch file to compile the test bench for the
#                       nf10_axis_converter_v1_00_a module, and to
#                       check it's basic functionality
#
#  Copyright notice:
#        Copyright (C) 2010,2011 The Board of Trustees of The Leland Stanford
#                                Junior University
#
#  Licence:
#        This file is part of the NetFPGA 10G development base package.
#
#        This package is free software: you can redistribute it and/or modify
#        it under the terms of the GNU Lesser General Public License as
#        published by the Free Software Foundation, either version 3 of the
#        License, or (at your option) any later version.
#
#        This package is distributed in the hope that it will be useful, but
#        WITHOUT ANY WARRANTY; without even the implied warranty of
#        MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
#        Lesser General Public License for more details.
#
#        You should have received a copy of the GNU Lesser General Public
#        License along with the NetFPGA source package.  If not, see
#        http://www.gnu.org/licenses/.
#
#

fuse -incremental -prj nf10_axis_converter_v1_00_a.prj -o nf10_axis_converter_v1_00_a.exe work.testbench

nf10_axis_converter_v1_00_a.exe -tclbatch nf10_axis_converter_v1_00_a.tcl
