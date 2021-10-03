package com.sulake.habbo.communication.messages.incoming.marketplace
{
   import flash.display.BitmapData;
   
   public class MarketPlaceOwnOffer
   {
      
      public static const const_1493:int = 2;
      
      public static const const_1470:int = 1;
      
      public static const const_1513:int = 0;
       
      
      private var var_1138:int;
      
      private var var_164:int;
      
      private var var_2395:int;
      
      private var _offerId:int;
      
      private var var_1663:int;
      
      private var var_1659:int;
      
      private var _image:BitmapData;
      
      public function MarketPlaceOwnOffer(param1:int, param2:int, param3:int, param4:int)
      {
         super();
         _offerId = param1;
         var_1659 = param2;
         var_1663 = param3;
         var_1138 = param4;
      }
      
      public function get furniId() : int
      {
         return var_1659;
      }
      
      public function get furniType() : int
      {
         return var_1663;
      }
      
      public function get price() : int
      {
         return var_1138;
      }
      
      public function set image(param1:BitmapData) : void
      {
         _image = param1;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get image() : BitmapData
      {
         return _image;
      }
   }
}
