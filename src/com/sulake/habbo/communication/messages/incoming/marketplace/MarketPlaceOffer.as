package com.sulake.habbo.communication.messages.incoming.marketplace
{
   public class MarketPlaceOffer
   {
       
      
      private var var_1138:int;
      
      private var var_1662:int = -1;
      
      private var var_164:int;
      
      private var var_1660:int;
      
      private var var_1663:int;
      
      private var _offerId:int;
      
      private var var_1137:int;
      
      private var var_1659:int;
      
      public function MarketPlaceOffer(param1:int, param2:int, param3:int, param4:int, param5:int, param6:int, param7:int, param8:int = -1)
      {
         super();
         _offerId = param1;
         var_1659 = param2;
         var_1663 = param3;
         var_1138 = param4;
         var_164 = param5;
         var_1662 = param6;
         var_1660 = param7;
         var_1137 = param8;
      }
      
      public function get status() : int
      {
         return var_164;
      }
      
      public function get price() : int
      {
         return var_1138;
      }
      
      public function get timeLeftMinutes() : int
      {
         return var_1662;
      }
      
      public function get offerCount() : int
      {
         return var_1137;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get furniType() : int
      {
         return var_1663;
      }
      
      public function get averagePrice() : int
      {
         return var_1660;
      }
      
      public function get furniId() : int
      {
         return var_1659;
      }
   }
}
