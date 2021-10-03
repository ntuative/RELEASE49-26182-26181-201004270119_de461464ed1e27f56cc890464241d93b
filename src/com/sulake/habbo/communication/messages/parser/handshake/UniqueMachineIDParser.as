package com.sulake.habbo.communication.messages.parser.handshake
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class UniqueMachineIDParser implements IMessageParser
   {
       
      
      private var var_814:String;
      
      public function UniqueMachineIDParser()
      {
         super();
         var_814 = "";
      }
      
      public function method_1(param1:IMessageDataWrapper) : Boolean
      {
         var_814 = param1.readString();
         return true;
      }
      
      public function get machineID() : String
      {
         return var_814;
      }
      
      public function flush() : Boolean
      {
         var_814 = "";
         return true;
      }
   }
}
