# Design Specifications – A5 Notebook with Decorative Borders

## 1. Page Layout
- **Page size:** A5 (148 mm × 210 mm)  
- **Bleed:** 3 mm on all sides (total canvas size 154 mm × 216 mm)  
- **Margins:**  
  - Inside writing margin: 12 mm  
  - Outside decorative margin: 6 mm (inside the bleed)  

## 2. Pagination
- **Total pages:** 82 (80 interior pages + 2 cover pages)  
- **Facing pages:** Off (single‑page layout)  

## 3. Border Themes
| Theme      | Asset file (in `assets/borders/`) | Master page name |
|------------|-----------------------------------|------------------|
| Floral     | `floral.svg`                      | `A‑Floral`       |
| Geometric  | `geometric.ai`                    | `B‑Geometric`    |
| Vintage    | `vintage.svg`                     | `C‑Vintage`      |
| Seasonal   | `seasonal.svg`                    | `D‑Seasonal`     |

Each master page contains:
- The border vector placed on the **Bleed** layer, scaled to the outer edge.
- Four corner placeholders (15 mm × 15 mm) linked to icons in `assets/illustrations/`.
- Page‑number text frame (bottom‑outside corner).

## 4. Illustrations (Corner Icons)
- Formats: PNG (300 dpi) or SVG.  
- Size: ≤ 15 mm × 15 mm.  
- Examples: `cat.png`, `mountain.svg`.  

## 5. Typography
| Role          | Font (file in `assets/fonts/`) | Size / Style |
|---------------|--------------------------------|--------------|
| Body text     | `Merriweather-Regular.otf`     | 11 pt, leading 13 pt |
| Page numbers  | `Montserrat-Bold.otf`          | 9 pt, bold |
| Cover title   | `Montserrat-Bold.otf`          | 24 pt, uppercase |

All fonts must be licensed for commercial use and included in the repository.

## 6. Color
- **Color mode for print:** CMYK  
- **CMYK Swatches:**  
  - Primary: Pantone 7545 C (C=0 M=30 Y=70 K=0)  
  - Secondary: Pantone 7546 C (C=0 M=20 Y=40 K=0)  
- **Web preview:** sRGB conversion of the above values.

## 7. Export Settings
- **Preset:** PDF/X‑4  
- **Marks & Bleeds:** Use document bleed settings (3 mm).  
- **Output Intent:** CMYK, convert to the printer’s ICC profile (e.g., `USWebCoatedSWOP.icc`).  
- **Font embedding:** All fonts must be embedded/subset.

## 8. Quality Assurance Checklist
- Bleed present on all pages (3 mm).  
- No RGB colors remain (CMYK only).  
- All fonts embedded.  
- Raster images ≥ 300 dpi at final size.  
- Correct page count (82) and alternating border masters.  

## 9. Versioning
- **v1.0.0** – Initial release with four border themes.  
- Increment minor version for additional themes or layout tweaks.  

---

*All measurements are in millimeters unless otherwise noted.*
