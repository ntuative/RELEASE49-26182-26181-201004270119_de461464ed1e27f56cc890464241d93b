package com.sulake.core.communication.messages
{
   public interface IMessageParser
   {
       
      
      function method_1(param1:IMessageDataWrapper) : Boolean;
      
      function flush() : Boolean;
   }
}
