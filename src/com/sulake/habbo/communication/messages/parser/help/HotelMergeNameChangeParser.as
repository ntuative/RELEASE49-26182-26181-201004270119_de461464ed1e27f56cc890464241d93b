package com.sulake.habbo.communication.messages.parser.help
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class HotelMergeNameChangeParser implements IMessageParser
   {
       
      
      public function HotelMergeNameChangeParser()
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
