package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ClubOfferData
   {
       
      
      private var var_1811:int;
      
      private var var_1138:int;
      
      private var var_1815:int;
      
      private var _offerId:int;
      
      private var var_1816:int;
      
      private var var_1810:int;
      
      private var var_1813:Boolean;
      
      private var var_1814:int;
      
      private var var_1812:Boolean;
      
      private var var_1213:String;
      
      public function ClubOfferData(param1:IMessageDataWrapper)
      {
         super();
         _offerId = param1.readInteger();
         var_1213 = param1.readString();
         var_1138 = param1.readInteger();
         var_1812 = param1.readBoolean();
         var_1813 = param1.readBoolean();
         var_1815 = param1.readInteger();
         var_1814 = param1.readInteger();
         var_1816 = param1.readInteger();
         var_1811 = param1.readInteger();
         var_1810 = param1.readInteger();
      }
      
      public function get year() : int
      {
         return var_1816;
      }
      
      public function get month() : int
      {
         return var_1811;
      }
      
      public function get price() : int
      {
         return var_1138;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get periods() : int
      {
         return var_1815;
      }
      
      public function get daysLeftAfterPurchase() : int
      {
         return var_1814;
      }
      
      public function get upgrade() : Boolean
      {
         return var_1812;
      }
      
      public function get day() : int
      {
         return var_1810;
      }
      
      public function get vip() : Boolean
      {
         return var_1813;
      }
      
      public function get productCode() : String
      {
         return var_1213;
      }
   }
}
