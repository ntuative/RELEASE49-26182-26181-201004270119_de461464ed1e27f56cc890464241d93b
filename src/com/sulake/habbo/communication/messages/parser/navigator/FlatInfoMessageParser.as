package com.sulake.habbo.communication.messages.parser.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomSettingsFlatInfo;
   
   public class FlatInfoMessageParser implements IMessageParser
   {
       
      
      private var var_227:RoomSettingsFlatInfo;
      
      public function FlatInfoMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         var_227 = null;
         return true;
      }
      
      public function get flatInfo() : RoomSettingsFlatInfo
      {
         return var_227;
      }
      
      public function method_1(param1:IMessageDataWrapper) : Boolean
      {
         var_227 = new RoomSettingsFlatInfo();
         var_227.allowFurniMoving = param1.readInteger() == 1;
         var_227.doorMode = param1.readInteger();
         var_227.id = param1.readInteger();
         var_227.ownerName = param1.readString();
         var_227.type = param1.readString();
         var_227.name = param1.readString();
         var_227.description = param1.readString();
         var_227.showOwnerName = param1.readInteger() == 1;
         var_227.allowTrading = param1.readInteger() == 1;
         var_227.categoryAlertKey = param1.readInteger() == 1;
         return true;
      }
   }
}
