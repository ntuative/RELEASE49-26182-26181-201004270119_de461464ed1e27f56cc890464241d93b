package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarPostureUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_2146:String;
      
      private var var_892:String;
      
      public function RoomObjectAvatarPostureUpdateMessage(param1:String, param2:String = "")
      {
         super();
         var_2146 = param1;
         var_892 = param2;
      }
      
      public function get postureType() : String
      {
         return var_2146;
      }
      
      public function get parameter() : String
      {
         return var_892;
      }
   }
}
