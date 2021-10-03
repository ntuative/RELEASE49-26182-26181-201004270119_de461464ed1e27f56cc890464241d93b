package com.sulake.habbo.communication.messages.parser.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class CanCreateRoomEventMessageParser implements IMessageParser
   {
       
      
      private var var_1127:int;
      
      private var var_2316:Boolean;
      
      public function CanCreateRoomEventMessageParser()
      {
         super();
      }
      
      public function method_1(param1:IMessageDataWrapper) : Boolean
      {
         this.var_2316 = param1.readBoolean();
         this.var_1127 = param1.readInteger();
         return true;
      }
      
      public function get errorCode() : int
      {
         return var_1127;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get canCreateEvent() : Boolean
      {
         return var_2316;
      }
   }
}
