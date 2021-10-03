package com.sulake.habbo.room.object.visualization.furniture.data
{
   public class LayerData
   {
      
      public static const const_390:int = 255;
      
      public static const INK_DARKEN:int = 3;
      
      public static const const_409:int = 0;
      
      public static const const_956:int = 2;
      
      public static const const_984:int = 1;
      
      public static const const_586:Boolean = false;
      
      public static const const_506:String = "";
      
      public static const const_458:int = 0;
      
      public static const const_461:int = 0;
      
      public static const const_468:int = 0;
       
      
      private var var_2265:int = 0;
      
      private var var_1621:String = "";
      
      private var var_1414:int = 0;
      
      private var var_2266:int = 0;
      
      private var var_2267:Number = 0;
      
      private var var_2089:int = 255;
      
      private var var_2268:Boolean = false;
      
      public function LayerData()
      {
         super();
      }
      
      public function get yOffset() : int
      {
         return var_2265;
      }
      
      public function copyValues(param1:LayerData) : void
      {
         if(param1 != null)
         {
            tag = param1.tag;
            ink = param1.ink;
            alpha = param1.alpha;
            ignoreMouse = param1.ignoreMouse;
            xOffset = param1.xOffset;
            yOffset = param1.yOffset;
            zOffset = param1.zOffset;
         }
      }
      
      public function set ink(param1:int) : void
      {
         var_1414 = param1;
      }
      
      public function get zOffset() : Number
      {
         return var_2267;
      }
      
      public function set xOffset(param1:int) : void
      {
         var_2266 = param1;
      }
      
      public function set yOffset(param1:int) : void
      {
         var_2265 = param1;
      }
      
      public function get tag() : String
      {
         return var_1621;
      }
      
      public function get alpha() : int
      {
         return var_2089;
      }
      
      public function get ink() : int
      {
         return var_1414;
      }
      
      public function set zOffset(param1:Number) : void
      {
         var_2267 = param1;
      }
      
      public function get xOffset() : int
      {
         return var_2266;
      }
      
      public function set ignoreMouse(param1:Boolean) : void
      {
         var_2268 = param1;
      }
      
      public function get ignoreMouse() : Boolean
      {
         return var_2268;
      }
      
      public function set tag(param1:String) : void
      {
         var_1621 = param1;
      }
      
      public function set alpha(param1:int) : void
      {
         var_2089 = param1;
      }
   }
}
