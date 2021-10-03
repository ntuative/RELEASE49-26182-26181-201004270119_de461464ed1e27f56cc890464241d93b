package com.sulake.habbo.catalog.viewer
{
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageOfferData;
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageProductData;
   import com.sulake.habbo.session.furniture.IFurnitureData;
   import com.sulake.habbo.session.product.IProductData;
   
   public class Offer implements IPurchasableOffer
   {
      
      public static const const_869:String = "price_type_none";
      
      public static const const_464:String = "pricing_model_multi";
      
      public static const const_339:String = "price_type_credits";
      
      public static const const_486:String = "price_type_credits_and_pixels";
      
      public static const const_396:String = "pricing_model_bundle";
      
      public static const const_363:String = "pricing_model_single";
      
      public static const const_572:String = "price_type_credits_or_credits_and_pixels";
      
      public static const const_1197:String = "pricing_model_unknown";
      
      public static const const_477:String = "price_type_pixels";
       
      
      private var var_1995:int;
      
      private var var_860:int;
      
      private var _offerId:int;
      
      private var var_861:int;
      
      private var var_420:String;
      
      private var var_586:String;
      
      private var var_387:ICatalogPage;
      
      private var var_421:IProductContainer;
      
      private var var_1261:String;
      
      public function Offer(param1:CatalogPageMessageOfferData, param2:ICatalogPage)
      {
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         super();
         _offerId = param1.offerId;
         var_1261 = param1.localizationId;
         var_860 = param1.priceInCredits;
         var_861 = param1.priceInPixels;
         var_387 = param2;
         var _loc3_:Array = new Array();
         for each(_loc4_ in param1.products)
         {
            _loc5_ = param2.viewer.catalog.getProductData(param1.localizationId);
            _loc6_ = param2.viewer.catalog.getFurnitureData(_loc4_.furniClassId,_loc4_.productType);
            _loc7_ = new Product(_loc4_,_loc5_,_loc6_);
            _loc3_.push(_loc7_);
         }
         analyzePricingModel(_loc3_);
         analyzePriceType();
         createProductContainer(_loc3_);
      }
      
      public function get pricingModel() : String
      {
         return var_420;
      }
      
      public function get page() : ICatalogPage
      {
         return var_387;
      }
      
      public function set previewCallbackId(param1:int) : void
      {
         var_1995 = param1;
      }
      
      public function get productContainer() : IProductContainer
      {
         return var_421;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get priceInPixels() : int
      {
         return var_861;
      }
      
      public function dispose() : void
      {
         _offerId = 0;
         var_1261 = "";
         var_860 = 0;
         var_861 = 0;
         var_387 = null;
         if(var_421 != null)
         {
            var_421.dispose();
            var_421 = null;
         }
      }
      
      public function get previewCallbackId() : int
      {
         return var_1995;
      }
      
      public function get priceInCredits() : int
      {
         return var_860;
      }
      
      private function analyzePricingModel(param1:Array) : void
      {
         var _loc2_:* = null;
         if(param1.length == 1)
         {
            _loc2_ = param1[0];
            if(_loc2_.productCount == 1)
            {
               var_420 = const_363;
            }
            else
            {
               var_420 = const_464;
            }
         }
         else if(param1.length > 1)
         {
            var_420 = const_396;
         }
         else
         {
            var_420 = const_1197;
         }
      }
      
      public function get priceType() : String
      {
         return var_586;
      }
      
      private function createProductContainer(param1:Array) : void
      {
         switch(var_420)
         {
            case const_363:
               var_421 = new SingleProductContainer(this,param1);
               break;
            case const_464:
               var_421 = new MultiProductContainer(this,param1);
               break;
            case const_396:
               var_421 = new BundleProductContainer(this,param1);
               break;
            default:
               Logger.log("[Offer] Unknown pricing model" + var_420);
         }
      }
      
      public function get localizationId() : String
      {
         return var_1261;
      }
      
      private function analyzePriceType() : void
      {
         if(var_860 > 0 && var_861 > 0)
         {
            var_586 = const_486;
         }
         else if(var_860 > 0)
         {
            var_586 = const_339;
         }
         else if(var_861 > 0)
         {
            var_586 = const_477;
         }
         else
         {
            var_586 = const_869;
         }
      }
   }
}
