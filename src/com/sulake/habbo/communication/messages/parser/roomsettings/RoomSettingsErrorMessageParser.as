package com.sulake.habbo.communication.messages.parser.roomsettings
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class RoomSettingsErrorMessageParser implements IMessageParser
   {
       
      
      private var _roomId:int;
      
      private var var_1127:int;
      
      public function RoomSettingsErrorMessageParser()
      {
         super();
      }
      
      public function method_1(param1:IMessageDataWrapper) : Boolean
      {
         _roomId = param1.readInteger();
         var_1127 = param1.readInteger();
         return true;
      }
      
      public function flush() : Boolean
      {
         _roomId = 0;
         var_1127 = 0;
         return true;
      }
      
      public function get errorCode() : int
      {
         return var_1127;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
   }
}