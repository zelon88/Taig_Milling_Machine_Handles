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

// NAME:  Handle - Wheel
// PART ID:  TMMH-001
// REVISION:  A1
// START DATE:  2/28/2022
// CURRENT VERSION DATE:  2/28/2022
// AUTHOR:  Justin Grimes (@zelon88)
// DESCRIPTION:  The Handle Wheel serves as the body of the handle that attaches to the machine.
//    All other components of this assembly are built to attach to this piece. This file defines a 
//    module named "handleWheel()" which can be called with no arguments to render the handle. 
//    This file is included in "TMMH-005.scad" which is an assembled model of the project, and 
//    in "TMMH-006.scad" which has all components arranged for 3D Printing.
// FILE NAME: TMMH-001.scad
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

// ----------------------------------------------------------------------------------------------------
// PARTS LIST

// 1. 20m PLA Filament
// ----------------------------------------------------------------------------------------------------

// ----------------------------------------------------------------------------------------------------
// MANUFACTURING INSTRUCTIONS

// 1. Visually inspect for damage or manufacturing irregularities.
// 2. File to remove any burrs or rough edges.
// 3. DO NOT chase any holes with a drill bit.
// 4. Verify overall thickness of the 4x gussets of 8mm +/- 5% with micrometers (preferred) or calipers. 
//  Do not measure with a drop-height indicator.
// 5. Verify the diameter of the 4x gusset holes of 10mm +/- 5% with a gage pin (preferred) or calipers.
// 6. Verify the flatness of +/- 5mm across the bottom (flat) side with a surface plate & feeler gages.
// 7. Minor curling around bottom edge is acceptable if installed handles are perpendicular +/- 1 degree.
// ----------------------------------------------------------------------------------------------------

// ----------------------------------------------------------------------------------------------------
// MODULES
module handleWheel() { 
  // Main section of body of hub.
  difference() {
    // Create the solid main body of the hub.
    cylinder(h=17, r=18.35, $fn=256);
    
    // Hollow out the inside of the hub.
    cylinder(h=13, r=13.25, $fn=256);
    // Hollow out the inside conical surface.
    translate([0, 0, 13]) cylinder(h=3, r1=13.25, r2=6.5, $fn=256);
    // Hollow out the hex in the center of the hub.
    // Note that OpenSCAD measures hexagons from point-to-point.
    translate([0, 0, 13]) cylinder(r=7.51, h=10, $fn=6); 
    // Add upper & lower side holes for set screws.
    // Screws are for final attachment to a TAIG 3 Axis Milling Machine.
    // Accepts M2.5 x 8mm screws with thread locker.
    translate([0, 0, 10.5]) rotate([90, 0, 0]) cylinder(h=20, r=1.248, $fn=64);
    translate([0, 0, 7.75]) rotate([90, 0, 45]) cylinder(h=20, r=1.248, $fn=64);
    translate([0, 0, 10.5]) rotate([90, 0, 90]) cylinder(h=20, r=1.248, $fn=64);
    translate([0, 0, 7.75]) rotate([90, 0, 135]) cylinder(h=20, r=1.248, $fn=64);
    translate([0, 0, 10.5]) rotate([90, 0, 180]) cylinder(h=20, r=1.248, $fn=64);
    translate([0, 0, 7.75]) rotate([90, 0, 225]) cylinder(h=20, r=1.248, $fn=64);
    translate([0, 0, 10.5]) rotate([90, 0, 270]) cylinder(h=20, r=1.248, $fn=64);
    translate([0, 0, 7.75]) rotate([90, 0, 315]) cylinder(h=20, r=1.248, $fn=64); }

   // Conical section of hub.
   difference() { 
    // Create the solid upper conical section of the hub.
    translate([0, 0, 17]) cylinder(h=4, r1=18.35, r2=10, $fn=256);
    
    // Hollow out the hex in the center of the conical section of the hub.
    // Note that OpenSCAD measures hexagons from point-to-point.
    translate([0, 0, 13]) cylinder(r=7.51, h=10, $fn=6); }

   // Lower chamfer of hub.
   difference() { 
    // Create the chamfer connecting the hub to the handle support disk.
    translate([0, 0, 4.25]) cylinder(h=0.75, r1=19.1, r2=18.35, $fn=256);
    
    // Hollow out the inside of the hub.
    cylinder(h=13, r=13.25, $fn=256); }

  // Upper half of handle support disk.
  difference() { 
    // Create the solid main body of the lower half of the handle support disk.
    cylinder(h=5, r1=73.5, r2=75, $fn=256);

    // Hollow out the inside of the hub.
    cylinder(h=13, r=13.25, $fn=256);
    // Hollow out recess in the top surface.
    translate([0, 0, 4.25]) cylinder(h=1, r1=54, r2=57.75, $fn=256); 
    // Hollow out hole "A" for the handle (Part ID:  TMMH-002).
    translate([66, 0, 0]) cylinder(h=8, r=5, $fn=256); 
    // Hollow out hole "B" for the handle (Part ID:  TMMH-002).
    translate([-66, 0, 0]) cylinder(h=8, r=5, $fn=256); 
    // Hollow out hole "C" for the handle (Part ID:  TMMH-002).
    translate([0, 66, 0]) cylinder(h=8, r=5, $fn=256); 
    // Hollow out hole "D" for the handle (Part ID:  TMMH-002).
    translate([0, -66, 0]) cylinder(h=8, r=5, $fn=256); }

  // Lower half of handle support disk.
  difference() { 
    // Create the solid main body of the lower half of the handle support disk.
    cylinder(h=5, r1=75, r2=73.5, $fn=256);
    
    // Hollow out the inside of the hub.
    cylinder(h=13, r=13, $fn=256);
    // Hollow out recess in the top surface.
    translate([0, 0, 4.25]) cylinder(h=1, r1=54, r2=57.75, $fn=256); 
    // Hollow out hole "A" for the handle (Part ID:  TMMH-002).
    translate([66, 0, 0]) cylinder(h=8, r=5, $fn=256); 
    // Hollow out hole "B" for the handle (Part ID:  TMMH-002).
    translate([-66, 0, 0]) cylinder(h=8, r=5, $fn=256); 
    // Hollow out hole "C" for the handle (Part ID:  TMMH-002).
    translate([0, 66, 0]) cylinder(h=8, r=5, $fn=256); 
    // Hollow out hole "D" for the handle (Part ID:  TMMH-002).
    translate([0, -66, 0]) cylinder(h=8, r=5, $fn=256); }

  // Handle support gusset "A".
  difference() { 
    // Create the solid main body for the handle support gusset "A".
    translate([66, 0, 0]) cylinder(h=8, r1=8.3, r2=8, $fn=128);
    
    // Hollow out hole "A" for the handle (Part ID:  TMMH-002).
    translate([66, 0, 0]) cylinder(h=8, r=5, $fn=128); } 

  // Handle support gusset "B".
  difference() { 
    // Create the solid main body for the handle support gusset "B".
    translate([-66, 0, 0]) cylinder(h=8, r1=8.3, r2=8, $fn=128);
    
    // Hollow out hole "B" for the handle (Part ID:  TMMH-002).
    translate([-66, 0, 0]) cylinder(h=8, r=5, $fn=128); }

  // Handle support gusset "C".
  difference() { 
    // Create the solid main body for the handle support gusset "C".
    translate([0, 66, 0]) cylinder(h=8, r1=8.3, r2=8, $fn=128);
    
    // Hollow out hole "C" for the handle (Part ID:  TMMH-002).
    translate([0, 66, 0]) cylinder(h=8, r=5, $fn=128); }

  //// Handle support gusset "D".
  difference() { 
    // Create the solid main body for the handle support gusset "D".
    translate([0, -66, 0]) cylinder(h=8, r1=8.3, r2=8, $fn=128);
    
    // Hollow out hole "D" for the handle (Part ID:  TMMH-002).
    translate([0, -66, 0]) cylinder(h=8, r=5, $fn=128); }

  // Logo & Surface Lettering
  linear_extrude(5) { 
   rotate([0, 0, 0]) translate([-36, 25, 0]) text("Designed By @zelon88", size=5, $fn=256);
   rotate([0, 0, 180]) translate([-22.5, 30, 0]) text("Made In USA", size=5, $fn=256); } }
// ----------------------------------------------------------------------------------------------------

// ----------------------------------------------------------------------------------------------------
// RENDERING

// To render the model for viewing or .stl export, uncomment the following line. 
//handleWheel();
// ----------------------------------------------------------------------------------------------------