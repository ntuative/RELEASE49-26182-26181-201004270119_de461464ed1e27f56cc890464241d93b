package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageProductData
   {
      
      public static const const_234:String = "e";
      
      public static const const_82:String = "i";
      
      public static const const_85:String = "s";
       
      
      private var var_1079:String;
      
      private var var_1313:String;
      
      private var var_1312:int;
      
      private var var_1958:int;
      
      private var var_1078:int;
      
      public function CatalogPageMessageProductData(param1:IMessageDataWrapper)
      {
         super();
         var_1313 = param1.readString();
         var_1958 = param1.readInteger();
         var_1079 = param1.readString();
         var_1078 = param1.readInteger();
         var_1312 = param1.readInteger();
      }
      
      public function get productCount() : int
      {
         return var_1078;
      }
      
      public function get productType() : String
      {
         return var_1313;
      }
      
      public function get expiration() : int
      {
         return var_1312;
      }
      
      public function get furniClassId() : int
      {
         return var_1958;
      }
      
      public function get extraParam() : String
      {
         return var_1079;
      }
   }
}
