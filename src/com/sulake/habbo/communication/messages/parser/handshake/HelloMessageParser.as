package com.sulake.habbo.communication.messages.parser.handshake
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class HelloMessageParser implements IMessageParser
   {
       
      
      protected var var_84:int;
      
      public function HelloMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get x() : int
      {
         return var_84;
      }
      
      public function method_1(param1:IMessageDataWrapper) : Boolean
      {
         var_84 = 200;
         return true;
      }
   }
}
