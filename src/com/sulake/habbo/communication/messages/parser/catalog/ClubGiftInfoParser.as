package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageOfferData;
   import com.sulake.habbo.communication.messages.incoming.catalog.ClubGiftData;
   
   public class ClubGiftInfoParser implements IMessageParser
   {
       
      
      private var var_1857:int;
      
      private var var_1007:int;
      
      private var var_595:Array;
      
      private var var_1523:Map;
      
      public function ClubGiftInfoParser()
      {
         super();
      }
      
      public function get giftData() : Map
      {
         return var_1523;
      }
      
      public function get giftsAvailable() : int
      {
         return var_1007;
      }
      
      public function flush() : Boolean
      {
         var_595 = [];
         return true;
      }
      
      public function get daysUntilNextGift() : int
      {
         return var_1857;
      }
      
      public function method_1(param1:IMessageDataWrapper) : Boolean
      {
         var _loc3_:int = 0;
         var _loc4_:* = null;
         var_1857 = param1.readInteger();
         var_1007 = param1.readInteger();
         var_595 = new Array();
         var _loc2_:int = param1.readInteger();
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            var_595.push(new CatalogPageMessageOfferData(param1));
            _loc3_++;
         }
         var_1523 = new Map();
         _loc2_ = param1.readInteger();
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = new ClubGiftData(param1);
            var_1523.add(_loc4_.offerId,_loc4_);
            _loc3_++;
         }
         return true;
      }
      
      public function get offers() : Array
      {
         return var_595;
      }
   }
}
