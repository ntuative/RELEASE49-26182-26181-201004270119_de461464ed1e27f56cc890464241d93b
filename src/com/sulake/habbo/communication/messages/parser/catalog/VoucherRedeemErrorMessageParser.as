package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class VoucherRedeemErrorMessageParser implements IMessageParser
   {
       
      
      private var var_1127:String = "";
      
      public function VoucherRedeemErrorMessageParser()
      {
         super();
      }
      
      public function method_1(param1:IMessageDataWrapper) : Boolean
      {
         var_1127 = param1.readString();
         return true;
      }
      
      public function flush() : Boolean
      {
         var_1127 = "";
         return true;
      }
      
      public function get errorCode() : String
      {
         return var_1127;
      }
   }
}
