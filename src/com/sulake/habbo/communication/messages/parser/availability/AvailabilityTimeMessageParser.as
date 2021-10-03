package com.sulake.habbo.communication.messages.parser.availability
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class AvailabilityTimeMessageParser implements IMessageParser
   {
       
      
      private var var_1031:Boolean;
      
      private var var_1170:int;
      
      public function AvailabilityTimeMessageParser()
      {
         super();
      }
      
      public function method_1(param1:IMessageDataWrapper) : Boolean
      {
         var_1031 = param1.readInteger() > 0;
         var_1170 = param1.readInteger();
         return true;
      }
      
      public function get isOpen() : Boolean
      {
         return var_1031;
      }
      
      public function flush() : Boolean
      {
         var_1031 = false;
         var_1170 = 0;
         return true;
      }
      
      public function get minutesUntilChange() : int
      {
         return var_1170;
      }
   }
}
