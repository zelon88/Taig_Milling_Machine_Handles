// ----------------------------------------------------------------------------------------------------
// PROJECT INFORMATION

// NAME:  Taig Milling Machine Handles
// REVISION:  A1
// START DATE:  2/28/2022
// CURRENT VERSION DATE:  2/28/2022
// LICENSE:  GPLv3
// AUTHOR:  Justin Grimes (@zelon88)
// DESCRIPTION:  A set of axis control handles that can be attached to Taig milling machines to allow for 
//    manual operation of the machine. Replaces electronic stepper motors with analog handles. Allows the 
//    operator of the machine to control the axis' by hand. 
// ----------------------------------------------------------------------------------------------------

// ----------------------------------------------------------------------------------------------------
// PART INFORMATION

// NAME:  Handle - Modular Washer
// PART ID:  TMMH-003
// REVISION:  A1
// START DATE:  2/28/2022
// CURRENT VERSION DATE:  2/28/2022
// AUTHOR:  Justin Grimes (@zelon88)
// DESCRIPTION:   The Modular washer serves to spread the load of the modular handles to the support 
//    gussets built into the handle wheel. They also act as a friction surface between the handle wheel & 
//    modular handles. This file defines a module named "modularWasher()" which can be called with no 
//    arguments to render the handle. This file is included in "TMMH-005.scad" which is an assembled model 
//    of the project, and in "TMMH-006.scad" which has all components arranged for 3D Printing.
// FILE NAME: TMMH-003.scad
// ----------------------------------------------------------------------------------------------------

// ----------------------------------------------------------------------------------------------------
// PRINTER CONFIGURATION

// PRINTER TYPE:  XYZPrinting da Vinci Jr. 1.0A Pro
// SLICER:  XYZPrint Version 2.0.21 
// NOZZLE DIAMETER:  0.40mm
// NOZZLE MATERIAL:  Copper
// NOZZLE TEMPERATURE:  210c
// NOZZLE FIRST LAYER TEMPERATURE:  215c
// LAYER HEIGHT:  0.20mm
// FIRST LAYER HEIGHT:  0.35mm
// SHELL THICKNESS NORMAL:  2 Layers
// SHELL THICKNESS TOP & BOTTOM SURFACE:  5 Layers
// INNER SHELLS:  0mm
// LIGHTWEIGHT:  No
// INFILL DENSITY:  100%
// INFILL TYPE:  Gyroid
// DETAIL THRESHOLD:  0.001mm
// AVOID CROSSING PRINTED PARTS:  No
// SHELLS NORMAL SPEED:  30mm/s
// SHELLS SURFACE SPEED:  30mm/s
// SHELL SMALL RADIUS SPEED:  20mm/s
// INFILL NORMAL SPEED:  45mm/s
// INFILL TOP SURFACE SPEED:  45mm/s
// SOLID INFILL SPEED:  45mm/s
// BRIDGE PRINTING SPEED:  20mm/s
// NON-PRINTING MOVEMENT SPEED:  50mm/s
// BOTTOM LAYER SPEED:  10mm/s
// RETRACT SPEED:  30mm/s
// AUTO SPEED ADJUSTMENT FOR SMALL PARTS:  No
// BRIM:  No
// SUPPORTS:  No
// RAFT:  No
// RETRACT LENGTH:  4.5mm
// ACTIVATE THRESHOLD (MIN TRAVEL LENGTH):  2mm
// RETRACTION NOZZLE LIFT:  0mm
// ADD EXTRA FILAMENT (WHEN TRAVEL < RETRACTION):  0mm
// RETRACT EACH LAYER:  Yes
// DISABLE RETRACTION CURRENT PERIMETER:  Yes
// SHELL EXTRUSION RATIO:  100%
// SHELL FILL EXTRUSION RATIO:  100%
// INFILL EXTRUSION RATIO:  100%
// SEAM CORNER PREFERENCES:  "Smart Hiding"
// ----------------------------------------------------------------------------------------------------

// ----------------------------------------------------------------------------------------------------
// PARTS LIST

// 1. 0.1m PLA Filament
// ----------------------------------------------------------------------------------------------------

// ----------------------------------------------------------------------------------------------------
// MANUFACTURING INSTRUCTIONS

// 1. Visually inspect for damage or manufacturing irregularities.
// 2. File to remove any burrs or rough edges.
// 3. DO NOT chase any holes with a drill bit.
// 4. Verify overall thickness of 2mm +/- 5% with calipers (preferred) or a drop-height indicator.
// ----------------------------------------------------------------------------------------------------

// ----------------------------------------------------------------------------------------------------
// MODULES

// Basic Modular Washer.
module modularWasher() { 
  difference() { 
    // Create the body of the washer.
    cylinder(h=2, r=8);

    // Hollow out the center hole.
    cylinder(h=2, r=5); } }
// ----------------------------------------------------------------------------------------------------

// ----------------------------------------------------------------------------------------------------
// RENDERING

// To render the model for viewing or .stl export, uncomment the following line. 
//modularWasher();
// ----------------------------------------------------------------------------------------------------