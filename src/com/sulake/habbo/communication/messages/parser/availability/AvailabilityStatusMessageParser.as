package com.sulake.habbo.communication.messages.parser.availability
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class AvailabilityStatusMessageParser implements IMessageParser
   {
       
      
      private var var_1031:Boolean;
      
      private var var_1306:Boolean;
      
      public function AvailabilityStatusMessageParser()
      {
         super();
      }
      
      public function method_1(param1:IMessageDataWrapper) : Boolean
      {
         var_1031 = param1.readInteger() > 0;
         var_1306 = param1.readInteger() > 0;
         return true;
      }
      
      public function get isOpen() : Boolean
      {
         return var_1031;
      }
      
      public function get onShutDown() : Boolean
      {
         return var_1306;
      }
      
      public function flush() : Boolean
      {
         var_1031 = false;
         var_1306 = false;
         return true;
      }
   }
}
