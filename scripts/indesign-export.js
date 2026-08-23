/*
 * InDesign Export Script – PDF/X‑4 with 3 mm bleed
 * Run from InDesign: File → Scripts → Run Script…
 */

var doc = app.activeDocument;

// 3 mm bleed = 8.5 pt (1 pt = 0.3528 mm)
var bleedPt = "8.5pt";

doc.documentPreferences.documentBleedTopOffset = bleedPt;
doc.documentPreferences.documentBleedBottomOffset = bleedPt;
doc.documentPreferences.documentBleedInsideOffset = bleedPt;
doc.documentPreferences.documentBleedOutsideOffset = bleedPt;

// Define export file location (adjust if needed)
var exportFile = File("~/Desktop/notebook_print.pdf");

// Use the preset named "PDF/X-4" (must exist in InDesign)
var pdfExportPreset = app.pdfExportPresets.itemByName("PDF/X-4");

// Export
doc.exportFile(ExportFormat.PDF_TYPE, exportFile, false, pdfExportPreset);
