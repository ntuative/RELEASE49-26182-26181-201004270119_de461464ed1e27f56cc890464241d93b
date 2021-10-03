package com.sulake.habbo.communication.messages.parser.inventory.trading
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class TradingYouAreNotAllowedParser implements IMessageParser
   {
       
      
      public function TradingYouAreNotAllowedParser()
      {
         super();
      }
      
      public function method_1(param1:IMessageDataWrapper) : Boolean
      {
         return true;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
   }
}
