package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class GiftWrappingConfigurationParser implements IMessageParser
   {
       
      
      private var var_1505:Array;
      
      private var var_1979:Boolean;
      
      private var var_631:Array;
      
      private var var_1980:int;
      
      private var var_632:Array;
      
      public function GiftWrappingConfigurationParser()
      {
         super();
      }
      
      public function method_1(param1:IMessageDataWrapper) : Boolean
      {
         var _loc2_:int = 0;
         var_1505 = [];
         var_632 = [];
         var_631 = [];
         var_1979 = param1.readBoolean();
         var_1980 = param1.readInteger();
         var _loc3_:int = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            var_1505.push(param1.readInteger());
            _loc2_++;
         }
         _loc3_ = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            var_632.push(param1.readInteger());
            _loc2_++;
         }
         _loc3_ = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            var_631.push(param1.readInteger());
            _loc2_++;
         }
         return true;
      }
      
      public function get ribbonTypes() : Array
      {
         return var_631;
      }
      
      public function get stuffTypes() : Array
      {
         return var_1505;
      }
      
      public function get wrappingPrice() : int
      {
         return var_1980;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get boxTypes() : Array
      {
         return var_632;
      }
      
      public function get isWrappingEnabled() : Boolean
      {
         return var_1979;
      }
   }
}
