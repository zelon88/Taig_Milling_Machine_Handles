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

// NAME:  Handle - Modular Handle
// PART ID:  TMMH-002
// REVISION:  A1
// START DATE:  2/28/2022
// CURRENT VERSION DATE:  2/28/2022
// AUTHOR:  Justin Grimes (@zelon88)
// DESCRIPTION:   The Modular Handle Insert serves as a comfortable & ergonomic handle that fits in the 
//    operators hand. This piece applies torque from the operator to the Handle Wheel (TMMH-001) which 
//    controls one axis of the attached machine. This file defines a module named "modularHandle()" which 
//    can be called with no arguments to render the handle. This file is included in "TMMH-005.scad" which
//    is an assembled model of the project, and in "TMMH-006.scad" which has all components arranged for 
//    3D Printing.
// FILE NAME: TMMH-002.scad
// ----------------------------------------------------------------------------------------------------

// ----------------------------------------------------------------------------------------------------
// PRINTER CONFIGURATION

// PRINTER TYPE:  XYZPrinting da Vinci Jr. 1.0A Pro
// SLICER:  XYZPrint Version 2.0.21 
// NOZZLE DIAMETERDiameter:  0.40mm
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
// PARTS LIST

// 1. 10m PLA Filament
// ----------------------------------------------------------------------------------------------------

// ----------------------------------------------------------------------------------------------------
// MANUFACTURING INSTRUCTIONS

// 1. Visually inspect for damage or manufacturing irregularities.
// 2. File to remove any burrs or rough edges.
// 3. DO NOT chase any holes with a drill bit. A snug fit for M2.5 screws is required.
// 4. Verify diameter of small pin section of 10mm +/- 5% with calipers.
// 5. Verify overall length of small pin section of 12mm +10%, -2% with calipers.
// ----------------------------------------------------------------------------------------------------

// ----------------------------------------------------------------------------------------------------
// MODULES

// Basic Modular Handle Body Shape.
module baseHandle() { 
  // Create the lower chamfer that eases insertion into the Handle Wheel gusset.
  translate([0, 0, 0]) cylinder(h=1, r1=4, r2=5, $fn=384);
  // Create the friction surface that inserts into the Handle Wheel.
  translate([0, 0, 1]) cylinder(h=12, r=5, $fn=384);
  // Create the first steep angled surface of the handle body.
  // This surface prevents the handle from being over-inserted into the handle wheel.
  translate([0, 0, 13]) cylinder(h=1, r1=5, r2=7, $fn=384);
  // Create the second steep surface of the handle body.
  translate([0, 0, 14]) cylinder(h=10, r1=7, r2=11.5, $fn=384);
  // Create the third angled surface that self centers the operators fingers.
  translate([0, 0, 24]) cylinder(h=20, r1=11.5, r2=10, $fn=384);
  // Create the fourth angled surface that leads to the spherical end surface.
  translate([0, 0, 44]) cylinder(h=30, r1=10, r2=13, $fn=384);
  // Create the spherical surface at the end of the handle body.
  translate([0, 0, 74]) sphere(r = 13, $fn=512); }

// Finished main body of the modular handle.
module modularHandle() { 
  difference() { 
    // Create the handle and orient it for printing.
    translate([0, 0, 81]) rotate([0, 180, 0]) baseHandle(); 
    // Hollow out the screw hole that secures the modular handle to the Handle Wheel (TMMH-001).
    // Accepts M2.5 x 10mm screws with thread locker.
    // Requires one Handle Washer (TMMH-003) on either side of the Handle Wheel (TMMH-001).
    translate([0, 0, 69]) cylinder(h=12, r=1.248, $fn=384); 
    // Hollow out the center of the handle.
    // Hollowing out the center reduces unintended influence on the handle due to it's own mass.
    // Hollowing out the center also reduces material consumption & reduces slicer infill errors.
    translate([0, 0, 6]) cylinder(h=54, r=5.25, $fn=384);  
    // Cut the bottom off the handle to give us a large & stable initial print area.
    translate([-15, -15, -30]) cube(30); } }
// ----------------------------------------------------------------------------------------------------

// ----------------------------------------------------------------------------------------------------
// RENDERING

// To render the model for viewing or .stl export, uncomment the following line. 
//modularHandle();
// ----------------------------------------------------------------------------------------------------