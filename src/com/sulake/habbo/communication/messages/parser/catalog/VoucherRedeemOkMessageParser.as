package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class VoucherRedeemOkMessageParser implements IMessageParser
   {
       
      
      private var var_1209:String = "";
      
      private var var_1210:String = "";
      
      public function VoucherRedeemOkMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         var_1210 = "";
         var_1209 = "";
         return true;
      }
      
      public function get productName() : String
      {
         return var_1209;
      }
      
      public function method_1(param1:IMessageDataWrapper) : Boolean
      {
         var_1210 = param1.readString();
         var_1209 = param1.readString();
         return true;
      }
      
      public function get productDescription() : String
      {
         return var_1210;
      }
   }
}
