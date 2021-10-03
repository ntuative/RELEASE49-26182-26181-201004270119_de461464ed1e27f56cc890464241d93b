package com.sulake.habbo.toolbar
{
   public class ToolbarIconBouncer
   {
       
      
      private var var_2178:Number;
      
      private var var_622:Number = 0;
      
      private var var_2177:Number;
      
      private var var_621:Number;
      
      public function ToolbarIconBouncer(param1:Number, param2:Number)
      {
         super();
         var_2178 = param1;
         var_2177 = param2;
      }
      
      public function update() : void
      {
         var_621 += var_2177;
         var_622 += var_621;
         if(var_622 > 0)
         {
            var_622 = 0;
            var_621 = var_2178 * -1 * var_621;
         }
      }
      
      public function reset(param1:int) : void
      {
         var_621 = param1;
         var_622 = 0;
      }
      
      public function get location() : Number
      {
         return var_622;
      }
   }
}
