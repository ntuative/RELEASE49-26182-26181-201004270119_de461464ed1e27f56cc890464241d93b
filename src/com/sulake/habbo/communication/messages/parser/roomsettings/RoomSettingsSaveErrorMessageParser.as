package com.sulake.habbo.communication.messages.parser.roomsettings
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class RoomSettingsSaveErrorMessageParser implements IMessageParser
   {
      
      public static const const_1484:int = 9;
      
      public static const const_1506:int = 4;
      
      public static const const_1505:int = 1;
      
      public static const const_1140:int = 10;
      
      public static const const_1459:int = 2;
      
      public static const const_1301:int = 7;
      
      public static const const_1191:int = 11;
      
      public static const const_1446:int = 3;
      
      public static const const_1276:int = 8;
      
      public static const const_1382:int = 5;
      
      public static const const_1460:int = 6;
      
      public static const const_1154:int = 12;
       
      
      private var var_1752:String;
      
      private var _roomId:int;
      
      private var var_1127:int;
      
      public function RoomSettingsSaveErrorMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get info() : String
      {
         return var_1752;
      }
      
      public function method_1(param1:IMessageDataWrapper) : Boolean
      {
         _roomId = param1.readInteger();
         var_1127 = param1.readInteger();
         var_1752 = param1.readString();
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
