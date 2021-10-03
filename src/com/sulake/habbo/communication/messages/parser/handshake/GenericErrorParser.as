package com.sulake.habbo.communication.messages.parser.handshake
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class GenericErrorParser implements IMessageParser
   {
       
      
      private var var_1127:int;
      
      public function GenericErrorParser()
      {
         super();
      }
      
      public function method_1(param1:IMessageDataWrapper) : Boolean
      {
         var_1127 = param1.readInteger();
         return true;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get errorCode() : int
      {
         return var_1127;
      }
   }
}
