package com.sulake.habbo.catalog.purchase
{
   import com.sulake.habbo.communication.messages.incoming.catalog.GiftWrappingConfigurationEvent;
   import com.sulake.habbo.communication.messages.parser.catalog.GiftWrappingConfigurationParser;
   
   public class GiftWrappingConfiguration
   {
       
      
      private var var_631:Array;
      
      private var var_1138:int;
      
      private var var_1505:Array;
      
      private var var_632:Array;
      
      private var var_1146:Boolean = false;
      
      public function GiftWrappingConfiguration(param1:GiftWrappingConfigurationEvent)
      {
         super();
         if(param1 == null)
         {
            return;
         }
         var _loc2_:GiftWrappingConfigurationParser = param1.getParser();
         if(_loc2_ == null)
         {
            return;
         }
         var_1146 = _loc2_.isWrappingEnabled;
         var_1138 = _loc2_.wrappingPrice;
         var_1505 = _loc2_.stuffTypes;
         var_632 = _loc2_.boxTypes;
         var_631 = _loc2_.ribbonTypes;
      }
      
      public function get ribbonTypes() : Array
      {
         return var_631;
      }
      
      public function get stuffTypes() : Array
      {
         return var_1505;
      }
      
      public function get price() : int
      {
         return var_1138;
      }
      
      public function get boxTypes() : Array
      {
         return var_632;
      }
      
      public function get isEnabled() : Boolean
      {
         return var_1146;
      }
   }
}
