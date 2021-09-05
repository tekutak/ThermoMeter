#ifndef _SSD1306_H_
#define _SSD1306_H_
/* -----------------------------------------------------------------------------
　Include
------------------------------------------------------------------------------*/
#include "common.h"

/* -----------------------------------------------------------------------------
　Define
------------------------------------------------------------------------------*/
#define SSD1306_COLUMNS (128)
#define SSD1306_ROWS (64)
#define SSD1306_PAGES (SSD1306_ROWS / 8)
#define SSD1306_CANVAS_SIZE (SSD1306_COLUMNS * SSD1306_PAGES)

/* -----------------------------------------------------------------------------
　Extern
------------------------------------------------------------------------------*/
extern BOOL Ssd1306_Init();
extern U08* Ssd1306_Get_Draw_Canvas();
extern void Ssd1306_Update_Frame();

#endif /* _SSD1306_H_ */