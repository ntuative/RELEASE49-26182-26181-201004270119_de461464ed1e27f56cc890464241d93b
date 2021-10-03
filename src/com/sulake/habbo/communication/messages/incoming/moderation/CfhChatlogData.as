package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CfhChatlogData
   {
       
      
      private var var_1722:int;
      
      private var var_991:int;
      
      private var var_1723:int;
      
      private var var_1438:int;
      
      private var var_116:RoomChatlogData;
      
      public function CfhChatlogData(param1:IMessageDataWrapper)
      {
         super();
         var_1438 = param1.readInteger();
         var_1723 = param1.readInteger();
         var_991 = param1.readInteger();
         var_1722 = param1.readInteger();
         var_116 = new RoomChatlogData(param1);
         Logger.log("READ CFHCHATLOGDATA: callId: " + var_1438);
      }
      
      public function get chatRecordId() : int
      {
         return var_1722;
      }
      
      public function get reportedUserId() : int
      {
         return var_991;
      }
      
      public function get callerUserId() : int
      {
         return var_1723;
      }
      
      public function get callId() : int
      {
         return var_1438;
      }
      
      public function get room() : RoomChatlogData
      {
         return var_116;
      }
   }
}
