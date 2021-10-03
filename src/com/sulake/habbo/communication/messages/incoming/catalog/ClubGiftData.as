package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ClubGiftData
   {
       
      
      private var var_2180:int;
      
      private var var_2179:Boolean;
      
      private var _offerId:int;
      
      private var var_1680:Boolean;
      
      public function ClubGiftData(param1:IMessageDataWrapper)
      {
         super();
         _offerId = param1.readInteger();
         var_2179 = param1.readBoolean();
         var_2180 = param1.readInteger();
         var_1680 = param1.readBoolean();
      }
      
      public function get isSelectable() : Boolean
      {
         return var_1680;
      }
      
      public function get monthsRequired() : int
      {
         return var_2180;
      }
      
      public function get isVip() : Boolean
      {
         return var_2179;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
   }
}
