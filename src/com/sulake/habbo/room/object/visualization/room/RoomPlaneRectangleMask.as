package com.sulake.habbo.room.object.visualization.room
{
   public class RoomPlaneRectangleMask
   {
       
      
      private var var_2213:Number = 0;
      
      private var var_2175:Number = 0;
      
      private var var_2174:Number = 0;
      
      private var var_2214:Number = 0;
      
      public function RoomPlaneRectangleMask(param1:Number, param2:Number, param3:Number, param4:Number)
      {
         super();
         var_2175 = param1;
         var_2174 = param2;
         var_2213 = param3;
         var_2214 = param4;
      }
      
      public function get leftSideLoc() : Number
      {
         return var_2175;
      }
      
      public function get leftSideLength() : Number
      {
         return var_2213;
      }
      
      public function get rightSideLoc() : Number
      {
         return var_2174;
      }
      
      public function get rightSideLength() : Number
      {
         return var_2214;
      }
   }
}
