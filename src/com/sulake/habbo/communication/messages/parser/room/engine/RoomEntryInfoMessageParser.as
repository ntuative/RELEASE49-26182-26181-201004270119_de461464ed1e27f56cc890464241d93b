package com.sulake.habbo.communication.messages.parser.room.engine
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   
   public class RoomEntryInfoMessageParser implements IMessageParser
   {
       
      
      private var var_2183:int;
      
      private var var_446:Boolean;
      
      private var var_2184:Boolean;
      
      private var var_905:PublicRoomShortData;
      
      public function RoomEntryInfoMessageParser()
      {
         super();
      }
      
      public function method_1(param1:IMessageDataWrapper) : Boolean
      {
         this.var_2184 = param1.readBoolean();
         if(var_2184)
         {
            var_2183 = param1.readInteger();
            var_446 = param1.readBoolean();
         }
         else
         {
            var_905 = new PublicRoomShortData(param1);
         }
         return true;
      }
      
      public function flush() : Boolean
      {
         if(var_905 != null)
         {
            var_905.dispose();
            var_905 = null;
         }
         return true;
      }
      
      public function get guestRoomId() : int
      {
         return var_2183;
      }
      
      public function get owner() : Boolean
      {
         return var_446;
      }
      
      public function get guestRoom() : Boolean
      {
         return var_2184;
      }
      
      public function get publicSpace() : PublicRoomShortData
      {
         return var_905;
      }
   }
}
