// Mongoose SSD1306 lib JS Wrapper
// [mgos_ssd1306](https://github.com/mongoose-os-libs/ssd1306)

let SSD1306 = {
  // OLED is auto-init via cfg - grab a reference
  _getglobal: ffi('void *mgos_ssd1306_get_global(void)'),

  // Dimensions
  _getheight: ffi('int mgos_ssd1306_get_height(void *)'),
  _getwidth: ffi('int mgos_ssd1306_get_width(void *)'),

  // Clear / Refresh / invert
  _clear: ffi('void mgos_ssd1306_clear(void *)'),
  _refresh: ffi('void mgos_ssd1306_refresh(void *)'),
  _invert: ffi('void mgos_ssd1306_invert_display(void *, bool)'),

  // Drawing
  _drawpixel: ffi('void mgos_ssd1306_draw_pixel(void *, int, int, int)'),
  _drawhl: ffi('void mgos_ssd1306_draw_hline(void *, int, int, int, int)'),
  _drawvl: ffi('void mgos_ssd1306_draw_vline(void *, int, int, int, int)'),
  _drawr: ffi('void mgos_ssd1306_draw_rectangle(void *, int, int, int, int, int)'),
  _fillr: ffi('void mgos_ssd1306_fill_rectangle(void *, int, int, int, int, int)'),
  _drawc: ffi('void mgos_ssd1306_draw_circle(void *, int, int, int, int)'),
  _fillc: ffi('void mgos_ssd1306_fill_circle(void *, int, int, int, int)'),

  // Text
  _selfont: ffi('void mgos_ssd1306_select_font(void *, int)'),
  _drawch: ffi('void mgos_ssd1306_draw_char(void *, int, int, int, int, int)'),
  _drawstrcol: ffi('void mgos_ssd1306_draw_string_color(void *, int, int, char *, int, int)'),
  _drawstr: ffi('void mgos_ssd1306_draw_string(void *, int, int, char *)'),

  //_w: ffi('int mgos_ssd1306_write(void *, char *, int)'),

	/*
  _cmd: ffi('void _command(void *, int)'),
  _id: ffi('void mgos_ssd1306_invert_display(void *, int)'),
  _ssr: ffi('void mgos_ssd1306_start_scroll_right(void *, int, int)'),
  _ssl: ffi('void mgos_ssd1306_start_scroll_left(void *, int, int)'),
  _ssdr: ffi('void mgos_ssd1306_start_scroll_diag_right(void *, int, int)'),
  _ssdl: ffi('void mgos_ssd1306_start_scroll_diag_left(void *, int, int)'),
  _ss: ffi('void mgos_ssd1306_stop_scroll(void *)'),
  _dim: ffi('void mgos_ssd1306_dim(void *, int)'),
  _pair: ffi('int mgos_ssd1306_make_xy_pair(int, int)'),
  _dt: ffi('void mgos_ssd1306_draw_triangle(void *, int, int, int, int)'),
  _ft: ffi('void mgos_ssd1306_fill_triangle(void *, int, int, int, int)'),
  _sc: ffi('void mgos_ssd1306_set_cursor(void *, int, int)'),
  _stc: ffi('void mgos_ssd1306_set_text_color(void *, int)'),
  _stcb: ffi('void mgos_ssd1306_set_text_color_bg(void *, int, int)'),
  _sts: ffi('void mgos_ssd1306_set_text_size(void *, int)'),
  _stw: ffi('void mgos_ssd1306_set_text_wrap(void *, int)'),
  _gr: ffi('int mgos_ssd1306_get_rotation(void *)'),
  _sr: ffi('void mgos_ssd1306_set_rotation(void *, int)'),
  _gcx: ffi('int mgos_ssd1306_get_cursor_x(void *)'),
  _gcy: ffi('int mgos_ssd1306_get_cursor_y(void *)'),
  */

  RES_96_16: 0,
  RES_128_32: 1,
  RES_128_64: 2,

  EXTERNALVCC: 1,
  SWITCHCAPVCC: 2,

  // ## **`Colors`**
  // - `SSD1306.BLACK`
  // - `SSD1306.WHITE`
  // - `SSD1306.INVERSE`
  BLACK: 0,
  WHITE: 1,
  INVERSE: 2,


  // Get the Global OLED object
  get_oled: function() {
	  let obj = Object.create(SSD1306._proto);
	  obj.ssd = SSD1306._getglobal();
	  return obj;
  },


  _proto: {

    // ## **`mySSD1306.clearDisplay()`**
    // Clear display. Return value: none.
    clearDisplay: function() {
      return SSD1306._clear(this.ssd);
    },

    // ## **`mySSD1306.invertDisplay(i)`**
    // Set invert mode: 0 - don't invert; 1 - invert. Return value: none.
    invertDisplay: function(i) {
      return SSD1306._invert(this.ssd, i);
    },

    // ## **`mySSD1306.display()`**
    // Put image data to the display. Return value: none.
    refresh: function() {
      return SSD1306._refresh(this.ssd);
    },


    // ## **`mySSD1306.drawPixel(x, y, color)`**
    // Set a single pixel with coords `x`, `y` to have the given `color`. See
    // available colors above.
    // Return value: none.
    drawPixel: function(x, y, color) {
      return SSD1306._drawp(this.ssd, x, y, color);
    },

    // ## **`mySSD1306.drawFastVLine(x, y, h, color)`**
    // Draw a vertical line with height `h` starting from `x`, `y`, with color
    // `color`. See available colors above.
    // Return value: none.
    // Example:
    // ```javascript
    // mySSD1306.drawFastVLine(10, 5, 15, SSD1306.WHITE);
    // ```
    drawFastVLine: function(x, y, h, color) {
      return SSD1306._drawvl(this.ssd, x, y, h, color);
    },

    // ## **`mySSD1306.drawFastHLine(x, y, w, color)`**
    // Draw a horizontal line of width `w` starting from `x`, `y`, with color
    // `color`. See available colors above.
    // Return value: none.
    // Example:
    // ```javascript
    // mySSD1306.drawFastHLine(10, 10, 20, SSD1306.WHITE);
    // ```
    drawFastHLine: function(x, y, w, color) {
      return SSD1306._drawhl(this.ssd, x, y, w, color);
    },

    // ## **`mySSD1306.drawCircle(x, y, r, color)`**
    // Draw a circle with the radius `r`, centered at from `x`, `y`, with color
    // `color`. See available colors above.
    // Return value: none.
    // Example:
    // ```javascript
    // mySSD1306.drawCircle(10, 10, 20, 10, 3, SSD1306.WHITE);
    // ```
    drawCircle: function(x0, y0, r, color) {
      return SSD1306._drawc(this.ssd, x0, y0, r, color);
    },


    // ## **`mySSD1306.fillCircle(x, y, r, color)`**
    // Draw a filled circle with the radius `r`, centered at from `x`, `y`,
    // with color `color`. See available colors above.
    // Return value: none.
    // Example:
    // ```javascript
    // mySSD1306.fillCircle(10, 10, 5, SSD1306.WHITE);
    // ```
    fillCircle: function(x0, y0, r, color) {
      return SSD1306._fillc(this.ssd, x0, y0, r, color);
    },


    // ## **`mySSD1306.drawRoundRect(x0, y0, w, h, radius, color)`**
    // Draw a rectangle with round corners; `x0`, `y0` are the coords of the
    // left-top corner, `w` is width, `h` is height, `radius` is the corners
    // radius, with color `color`. See available colors above.
    // Return value: none.
    // Example:
    // ```javascript
    // mySSD1306.drawRoundRect(10, 10, 20, 10, 3, SSD1306.WHITE);
    // ```
    drawRect: function(x0, y0, w, h, color) {
      return SSD1306._drawr(this.ssd, x0, y0, w, h, color);
    },

    // ## **`mySSD1306.drawRoundRect(x0, y0, w, h, radius, color)`**
    // Draw a filled rectangle with round corners; `x0`, `y0` are the coords of
    // the left-top corner, `w` is width, `h` is height, `radius` is the
    // corners radius, with color `color`. See available colors above.
    // Return value: none.
    // Example:
    // ```javascript
    // mySSD1306.fillRoundRect(10, 10, 20, 10, 3, SSD1306.WHITE);
    // ```
    fillRect: function(x0, y0, w, h, color) {
      return SSD1306._fillr(this.ssd, x0, y0, w, h, color);
    },

    // ## **`mySSD1306.drawChar(x, y, c, color, bg, size)`**
    // Draw a character `c` starting at the point `x`, `y`, with the color
    // `color` (see available colors above). If `bg` is different from `color`,
    // then the background is filled with `bg`; otherwise bacground is left
    // intact.
    //
    // There is only one font (to save space) and it's meant to be 5x8 pixels,
    // but an optional `size` parameter which scales the font by this factor (e.g.
    // size=2 will render the text at 10x16 pixels per character).
    // Return value: none.
    // Example:
    // ```javascript
    // mySSD1306.drawChar(10, 10, 'a',
    //                    SSD1306.WHITE, SSD1306.WHITE, 1);
    // ```
    drawChar: function(x, y, c, color, bg) {
      return SSD1306._drawch(this.ssd, x, y, c.at(0), color, bg);
    },

    drawStr: function(x, y, str) {
	    return SSD1306._drawstr(this.ssd, x, y, str);
    },

    drawStrColor: function(x, y, str, col, bg) {
	    return SSD1306._drawstrcol(this.ssd, x, y, str, col, bg);
    },

    // ## **`mySSD1306.height()`**
    // Return display height in pixels.
    getHeight: function() {
      return SSD1306._getheight(this.ssd);
    },

    // ## **`mySSD1306.width()`**
    // Return display width in pixels.
    getWidth: function() {
      return SSD1306._getwidth(this.ssd);
    },

    // ## **`mySSD1306.setRotation(rot)`**
    // Set display rotation:
    // - 0: no rotation
    // - 1: rotated at 90 degrees
    // - 2: rotated at 180 degrees
    // - 3: rotated at 270 degrees
	  /*
    setRotation: function(rot) {
      return SSD1306._sr(this.ssd, rot);
    },

    // ## **`mySSD1306.getRotation()`**
    // Return rotation previously set with `setRotation()`
    getRotation: function() {
      return SSD1306._gr(this.ssd);
    },

    // ## **`mySSD1306.getCursorX()`**
    // Return cursor X coordinate, previously set with `setCursor()`.
    getCursorX: function() {
      return SSD1306._gcx(this.ssd);
    },

    // ## **`mySSD1306.getCursorY()`**
    // Return cursor Y coordinate, previously set with `setCursor()`.
    getCursorY: function() {
      return SSD1306._gcy(this.ssd);
    },
    */
  },

};
