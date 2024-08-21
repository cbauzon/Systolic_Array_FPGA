#!/usr/bin/env bash
# ****************************************************************************
# Vivado (TM) v2023.2 (64-bit)
#
# Filename    : simulate.sh
# Simulator   : AMD Vivado Simulator
# Description : Script for simulating the design by launching the simulator
#
# Generated by Vivado on Sat Aug 10 02:34:59 PDT 2024
# SW Build 4029153 on Fri Oct 13 20:13:54 MDT 2023
#
# Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
# Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
#
# usage: simulate.sh
#
# ****************************************************************************
set -Eeuo pipefail
# simulate design
echo "xsim SystolicArrayAxiWrapper_tb_behav -key {Behavioral:sim_2:Functional:SystolicArrayAxiWrapper_tb} -tclbatch SystolicArrayAxiWrapper_tb.tcl -protoinst "protoinst_files/bd_f60c.protoinst" -protoinst "protoinst_files/design_1.protoinst" -view /home/cj/vivado_projects/systolic_array/systolic_array_project/SystolicArrayAxiWrapper_tb_behav1.wcfg -log simulate.log"
xsim SystolicArrayAxiWrapper_tb_behav -key {Behavioral:sim_2:Functional:SystolicArrayAxiWrapper_tb} -tclbatch SystolicArrayAxiWrapper_tb.tcl -protoinst "protoinst_files/bd_f60c.protoinst" -protoinst "protoinst_files/design_1.protoinst" -view /home/cj/vivado_projects/systolic_array/systolic_array_project/SystolicArrayAxiWrapper_tb_behav1.wcfg -log simulate.log

