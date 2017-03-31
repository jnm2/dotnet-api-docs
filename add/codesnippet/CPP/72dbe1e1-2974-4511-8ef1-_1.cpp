private:
   void DrawEllipseInt( PaintEventArgs^ e )
   {
      // Create pen.
      Pen^ blackPen = gcnew Pen( Color::Black,3.0f );

      // Create location and size of ellipse.
      int x = 0;
      int y = 0;
      int width = 200;
      int height = 100;

      // Draw ellipse to screen.
      e->Graphics->DrawEllipse( blackPen, x, y, width, height );
   }