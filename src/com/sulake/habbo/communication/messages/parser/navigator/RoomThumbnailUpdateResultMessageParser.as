package com.sulake.habbo.communication.messages.parser.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class RoomThumbnailUpdateResultMessageParser implements IMessageParser
   {
       
      
      private var var_445:int;
      
      private var var_1224:int;
      
      public function RoomThumbnailUpdateResultMessageParser()
      {
         super();
      }
      
      public function get resultCode() : int
      {
         return var_1224;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function method_1(param1:IMessageDataWrapper) : Boolean
      {
         this.var_445 = param1.readInteger();
         this.var_1224 = param1.readInteger();
         return true;
      }
      
      public function get flatId() : int
      {
         return var_445;
      }
   }
}
