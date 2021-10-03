package com.sulake.habbo.catalog.club
{
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.catalog.viewer.ICatalogPage;
   import com.sulake.habbo.catalog.viewer.IProductContainer;
   import com.sulake.habbo.catalog.viewer.Offer;
   
   public class ClubBuyOfferData implements IPurchasableOffer
   {
       
      
      private var var_1811:int;
      
      private var var_1809:Boolean = false;
      
      private var var_1815:int;
      
      private var var_1816:int;
      
      private var var_1814:int;
      
      private var var_1213:String;
      
      private var var_1138:int;
      
      private var _offerId:int;
      
      private var var_1810:int;
      
      private var var_1813:Boolean;
      
      private var var_1812:Boolean;
      
      private var var_387:ICatalogPage;
      
      public function ClubBuyOfferData(param1:int, param2:String, param3:int, param4:Boolean, param5:Boolean, param6:int, param7:int, param8:int, param9:int, param10:int)
      {
         super();
         _offerId = param1;
         var_1213 = param2;
         var_1138 = param3;
         var_1812 = param4;
         var_1813 = param5;
         var_1815 = param6;
         var_1814 = param7;
         var_1816 = param8;
         var_1811 = param9;
         var_1810 = param10;
      }
      
      public function get month() : int
      {
         return var_1811;
      }
      
      public function get page() : ICatalogPage
      {
         return var_387;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get vip() : Boolean
      {
         return var_1813;
      }
      
      public function set page(param1:ICatalogPage) : void
      {
         var_387 = param1;
      }
      
      public function dispose() : void
      {
      }
      
      public function get priceInPixels() : int
      {
         return 0;
      }
      
      public function get priceType() : String
      {
         return Offer.const_339;
      }
      
      public function get upgrade() : Boolean
      {
         return var_1812;
      }
      
      public function get localizationId() : String
      {
         return var_1213;
      }
      
      public function get daysLeftAfterPurchase() : int
      {
         return var_1814;
      }
      
      public function get upgradeHcPeriodToVip() : Boolean
      {
         return var_1809;
      }
      
      public function get day() : int
      {
         return var_1810;
      }
      
      public function get year() : int
      {
         return var_1816;
      }
      
      public function get price() : int
      {
         return var_1138;
      }
      
      public function set upgradeHcPeriodToVip(param1:Boolean) : void
      {
         var_1809 = param1;
      }
      
      public function get periods() : int
      {
         return var_1815;
      }
      
      public function get productContainer() : IProductContainer
      {
         return null;
      }
      
      public function get priceInCredits() : int
      {
         return var_1138;
      }
      
      public function get productCode() : String
      {
         return var_1213;
      }
   }
}
