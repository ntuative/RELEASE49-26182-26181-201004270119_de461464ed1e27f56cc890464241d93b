package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceCanMakeOfferResultParser implements IMessageParser
   {
       
      
      private var _tokenCount:int;
      
      private var _result:int;
      
      public function MarketplaceCanMakeOfferResultParser()
      {
         super();
      }
      
      public function method_1(param1:IMessageDataWrapper) : Boolean
      {
         _result = param1.readInteger();
         _tokenCount = param1.readInteger();
         return true;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get tokenCount() : int
      {
         return _tokenCount;
      }
      
      public function get resultCode() : int
      {
         return _result;
      }
   }
}
