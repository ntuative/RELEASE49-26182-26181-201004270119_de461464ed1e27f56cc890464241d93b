package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarFigureUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_1925:String;
      
      private var var_306:String;
      
      private var var_560:String;
      
      public function RoomObjectAvatarFigureUpdateMessage(param1:String, param2:String = null, param3:String = null)
      {
         super();
         var_306 = param1;
         var_560 = param2;
         var_1925 = param3;
      }
      
      public function get race() : String
      {
         return var_1925;
      }
      
      public function get figure() : String
      {
         return var_306;
      }
      
      public function get gender() : String
      {
         return var_560;
      }
   }
}
