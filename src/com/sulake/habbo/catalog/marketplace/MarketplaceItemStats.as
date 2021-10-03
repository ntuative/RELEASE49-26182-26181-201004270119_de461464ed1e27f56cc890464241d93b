package com.sulake.habbo.catalog.marketplace
{
   public class MarketplaceItemStats
   {
       
      
      private var var_1548:Array;
      
      private var var_1660:int;
      
      private var var_2098:int;
      
      private var var_2097:int;
      
      private var var_2096:int;
      
      private var _dayOffsets:Array;
      
      private var var_2095:int;
      
      private var var_1549:Array;
      
      public function MarketplaceItemStats()
      {
         super();
      }
      
      public function get dayOffsets() : Array
      {
         return _dayOffsets;
      }
      
      public function get averagePrices() : Array
      {
         return var_1548;
      }
      
      public function set averagePrices(param1:Array) : void
      {
         var_1548 = param1.slice();
      }
      
      public function set dayOffsets(param1:Array) : void
      {
         _dayOffsets = param1.slice();
      }
      
      public function get furniTypeId() : int
      {
         return var_2098;
      }
      
      public function set soldAmounts(param1:Array) : void
      {
         var_1549 = param1.slice();
      }
      
      public function set averagePrice(param1:int) : void
      {
         var_1660 = param1;
      }
      
      public function get historyLength() : int
      {
         return var_2097;
      }
      
      public function get furniCategoryId() : int
      {
         return var_2096;
      }
      
      public function get offerCount() : int
      {
         return var_2095;
      }
      
      public function set offerCount(param1:int) : void
      {
         var_2095 = param1;
      }
      
      public function get soldAmounts() : Array
      {
         return var_1549;
      }
      
      public function get averagePrice() : int
      {
         return var_1660;
      }
      
      public function set furniCategoryId(param1:int) : void
      {
         var_2096 = param1;
      }
      
      public function set historyLength(param1:int) : void
      {
         var_2097 = param1;
      }
      
      public function set furniTypeId(param1:int) : void
      {
         var_2098 = param1;
      }
   }
}
