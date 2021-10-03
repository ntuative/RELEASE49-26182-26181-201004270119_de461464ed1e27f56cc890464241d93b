package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageOfferData
   {
       
      
      private var var_793:Array;
      
      private var var_860:int;
      
      private var var_1261:String;
      
      private var _offerId:int;
      
      private var var_861:int;
      
      public function CatalogPageMessageOfferData(param1:IMessageDataWrapper)
      {
         super();
         _offerId = param1.readInteger();
         var_1261 = param1.readString();
         var_860 = param1.readInteger();
         var_861 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         var_793 = new Array();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            var_793.push(new CatalogPageMessageProductData(param1));
            _loc3_++;
         }
      }
      
      public function get products() : Array
      {
         return var_793;
      }
      
      public function get priceInCredits() : int
      {
         return var_860;
      }
      
      public function get localizationId() : String
      {
         return var_1261;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get priceInPixels() : int
      {
         return var_861;
      }
   }
}
