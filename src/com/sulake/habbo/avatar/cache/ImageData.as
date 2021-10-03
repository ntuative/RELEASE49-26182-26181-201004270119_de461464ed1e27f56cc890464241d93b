package com.sulake.habbo.avatar.cache
{
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class ImageData
   {
       
      
      private var var_979:Boolean = false;
      
      private var var_980:Boolean = false;
      
      private var _bitmap:BitmapData;
      
      private var var_557:Point;
      
      public function ImageData(param1:BitmapData, param2:Point)
      {
         super();
         _bitmap = param1;
         var_557 = param2;
      }
      
      public function get regpoint() : Point
      {
         return var_557;
      }
      
      public function get bitmap() : BitmapData
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         if(var_980)
         {
            _loc1_ = new Matrix(-1,0,0,1,_bitmap.width,0);
            _loc2_ = new BitmapData(_bitmap.width,_bitmap.height,true,16777215);
            _loc2_.draw(_bitmap,_loc1_);
            return _loc2_;
         }
         return _bitmap;
      }
      
      public function set flipV(param1:Boolean) : void
      {
         var_979 = param1;
      }
      
      public function get offsetRect() : Rectangle
      {
         var _loc1_:Rectangle = _bitmap.rect.clone();
         _loc1_.offset(0,0);
         return _loc1_;
      }
      
      public function set flipH(param1:Boolean) : void
      {
         var_980 = param1;
         if(var_980)
         {
            var_557.x = NaN;
         }
      }
      
      public function dispose() : void
      {
         if(_bitmap)
         {
            _bitmap.dispose();
         }
         _bitmap = null;
         var_557 = null;
      }
   }
}
