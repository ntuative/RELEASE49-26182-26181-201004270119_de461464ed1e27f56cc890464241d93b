package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceConfigurationParser implements IMessageParser
   {
       
      
      private var var_1734:int;
      
      private var var_1441:int;
      
      private var var_1737:int;
      
      private var var_1732:int;
      
      private var var_1733:int;
      
      private var var_1440:int;
      
      private var var_1731:int;
      
      private var var_1146:Boolean;
      
      public function MarketplaceConfigurationParser()
      {
         super();
      }
      
      public function get offerMaxPrice() : int
      {
         return var_1734;
      }
      
      public function get tokenBatchPrice() : int
      {
         return var_1441;
      }
      
      public function get averagePricePeriod() : int
      {
         return var_1731;
      }
      
      public function get offerMinPrice() : int
      {
         return var_1732;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get expirationHours() : int
      {
         return var_1733;
      }
      
      public function get tokenBatchSize() : int
      {
         return var_1440;
      }
      
      public function get commission() : int
      {
         return var_1737;
      }
      
      public function method_1(param1:IMessageDataWrapper) : Boolean
      {
         var_1146 = param1.readBoolean();
         var_1737 = param1.readInteger();
         var_1441 = param1.readInteger();
         var_1440 = param1.readInteger();
         var_1732 = param1.readInteger();
         var_1734 = param1.readInteger();
         var_1733 = param1.readInteger();
         var_1731 = param1.readInteger();
         return true;
      }
      
      public function get isEnabled() : Boolean
      {
         return var_1146;
      }
   }
}
