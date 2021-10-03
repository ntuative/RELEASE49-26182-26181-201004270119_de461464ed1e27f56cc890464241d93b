package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class RoomVisitData
   {
       
      
      private var var_675:String;
      
      private var var_1626:int;
      
      private var var_1558:Boolean;
      
      private var _roomId:int;
      
      private var var_1627:int;
      
      public function RoomVisitData(param1:IMessageDataWrapper)
      {
         super();
         var_1558 = param1.readBoolean();
         _roomId = param1.readInteger();
         var_675 = param1.readString();
         var_1627 = param1.readInteger();
         var_1626 = param1.readInteger();
      }
      
      public function get isPublic() : Boolean
      {
         return var_1558;
      }
      
      public function get roomName() : String
      {
         return var_675;
      }
      
      public function get enterMinute() : int
      {
         return var_1626;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function get enterHour() : int
      {
         return var_1627;
      }
   }
}
