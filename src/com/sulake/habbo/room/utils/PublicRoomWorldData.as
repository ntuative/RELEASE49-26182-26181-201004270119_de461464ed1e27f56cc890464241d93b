package com.sulake.habbo.room.utils
{
   public class PublicRoomWorldData
   {
       
      
      private var var_2090:Number = 1;
      
      private var var_197:Number = 1;
      
      private var var_2187:String = "";
      
      public function PublicRoomWorldData(param1:String, param2:Number, param3:Number)
      {
         super();
         var_2187 = param1;
         var_197 = param2;
         var_2090 = param3;
      }
      
      public function get scale() : Number
      {
         return var_197;
      }
      
      public function get heightScale() : Number
      {
         return var_2090;
      }
   }
}
