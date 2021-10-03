package com.sulake.habbo.communication.messages.parser.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class FlatCatMessageParser implements IMessageParser
   {
       
      
      private var var_445:int;
      
      private var var_1280:int;
      
      public function FlatCatMessageParser()
      {
         super();
      }
      
      public function get flatId() : int
      {
         return var_445;
      }
      
      public function method_1(param1:IMessageDataWrapper) : Boolean
      {
         var_445 = param1.readInteger();
         var_1280 = param1.readInteger();
         return true;
      }
      
      public function flush() : Boolean
      {
         var_445 = 0;
         var_1280 = 0;
         return true;
      }
      
      public function get nodeId() : int
      {
         return var_1280;
      }
   }
}
