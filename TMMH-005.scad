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

// NAME:  Handle - Assembly
// PART ID:  TMMH-005
// REVISION:  A1
// START DATE:  2/28/2022
// CURRENT VERSION DATE:  2/28/2022
// AUTHOR:  Justin Grimes (@zelon88)
// DESCRIPTION:  The Handle Assembly contains all the components required to retrofit handles onto one 
//    axis of a Taig Milling Machine. Three sets of handles are required to retrofit an entire 3 axis
//    milling machine. In this assembly, four Modular Handles are shown attached to a central 
//    Handle Wheel. The handle assembly function with any number of modular handles installed. 
// FILE NAME: TMMH-005.scad
// ----------------------------------------------------------------------------------------------------

// ----------------------------------------------------------------------------------------------------
// PRINTER CONFIGURATION

// NOTE:  For bulk printing instructions; see "TMMH-006.scad".
// NOTE:  For component printing instructions; see the ".scad" file for the desired component.
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

// 1x Handle - Wheel, TMMH-001 
// 4x Handle - Modular Handle, TMMH-002 
// 8x Handle - Modular Washer, TMMH-003 
// 4x Handle - Modular Endcap, TMMH-004 
// 8x Screws, M2.5 x 8mm 
// 4x Screws, M2.5 x 10mm 
// 12x Drops Threadlocker, Loctite Blue or Red
// ----------------------------------------------------------------------------------------------------

// ----------------------------------------------------------------------------------------------------
// MANUFACTURING INSTRUCTIONS

// 1. Remove the desired servo motor from the Taig Milling Machine.
// 2. Slide TMMH-001 onto the exposed axis hub of the Taig Milling Machine with the flat side of the 
//  TMMH-001 facing towards the milling machine.
// 3. Insert 8x M2.5 x 8mm screws into the 8x small holes located around the center hub of TMMH-001.
// 4. Insert TMMH-003 onto the small end of TMMH-002.
// 5. Insert TMMH-002 into one of the 4 large holes in TMMH-001 so that TMMH-002 is pointed away from 
//  the milling machine.
// 6, Slowly complete one rotation of the newly installed axis before completing any more 
//  installation steps. Ensure that the handle can rotate freely and is free from any obstructions.
// 7. Insert TMMH-003 onto the small end of TMMH-001 that remains exposed through TMMH-001.
// 8. Insert an M2.5 x 10mm screw into the small hole of TMMH-004 and apply one drop of 
//  threadlocker to the threads.
// 9. Thread the M2.5 x 10mm screw with TMMH-004 attached into the small hole at the end of TMMH-002. 
// 10. Repeat steps 4 through 9 to add as many handles as desired.
// 11. Repeat steps 1 through 10 to replace as many servos as desired.
// ----------------------------------------------------------------------------------------------------

// ----------------------------------------------------------------------------------------------------
// LOAD COMPONENT PART FILES

// Load Handle Wheel (TMMH-001).
  // Enabled Modules:
    // handleWheel()
include <TMMH-001.scad>;

// Load Modular Handle (TMMH-002).
  // Enabled Modules:
    // modularHandle()
include <TMMH-002.scad>;

// Load Modular Washer (TMMH-003).
  // Enabled Modules:
    // modularWasher()
include <TMMH-003.scad>;

// Load Modular Washer (TMMH-004).
  // Enabled Modules:
    // modularEndcap()
include <TMMH-004.scad>;
// ----------------------------------------------------------------------------------------------------

// ----------------------------------------------------------------------------------------------------
// RENDERING

// Render the Handle Wheel.
  // Required Components:
    // 1x TMMH-001
handleWheel();

// Render all the components required for Handle "A".
  // Required Components:
    // 1x TMMH-002
    // 2x TMMH-003
    // 1x TMMH-004
translate([66, 0, 78.5]) rotate([180, 0, 0]) modularHandle();
translate([66, 0, 8.25]) modularWasher();
translate([66, 0, -2.25]) modularWasher();
translate([66, 0, -4.5]) modularEndcap();

// Render all the components required for Handle "B".
  // Required Components:
    // 1x TMMH-002
    // 2x TMMH-003
    // 1x TMMH-004
translate([-66, 0, 78.5]) rotate([180, 0, 0]) modularHandle();
translate([-66, 0, 8.25]) modularWasher();
translate([-66, 0, -2.25]) modularWasher();
translate([-66, 0, -4.5]) modularEndcap();

// Render all the components required for Handle "C".
  // Required Components:
    // 1x TMMH-002
    // 2x TMMH-003
    // 1x TMMH-004
translate([0, 66, 78.5]) rotate([180, 0, 0]) modularHandle();
translate([0, 66, 8.25]) modularWasher();
translate([0, 66, -2.25]) modularWasher();
translate([0, 66, -4.5]) modularEndcap();

// Render all the components required for Handle "D".
  // Required Components:
    // 1x TMMH-002
    // 2x TMMH-003
    // 1x TMMH-004
translate([0, -66, 78.5]) rotate([180, 0, 0]) modularHandle();
translate([0, -66, 8.25]) modularWasher();
translate([0, -66, -2.25]) modularWasher();
translate([0, -66, -4.5]) modularEndcap();
// ----------------------------------------------------------------------------------------------------