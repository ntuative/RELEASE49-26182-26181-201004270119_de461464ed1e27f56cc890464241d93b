package com.sulake.habbo.communication.messages.incoming.inventory.trading
{
   public class ItemDataStructure
   {
       
      
      private var var_1059:String;
      
      private var var_1724:int;
      
      private var var_2152:int;
      
      private var var_1570:int;
      
      private var var_2151:int;
      
      private var _category:int;
      
      private var var_2399:int;
      
      private var var_2147:int;
      
      private var var_2150:int;
      
      private var var_2149:int;
      
      private var var_2153:int;
      
      private var var_2148:Boolean;
      
      private var var_1386:String;
      
      public function ItemDataStructure(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:int, param8:int, param9:int, param10:int, param11:int, param12:Boolean)
      {
         super();
         var_1724 = param1;
         var_1059 = param2;
         var_2152 = param3;
         var_2149 = param4;
         _category = param5;
         var_1386 = param6;
         var_1570 = param7;
         var_2150 = param8;
         var_2147 = param9;
         var_2153 = param10;
         var_2151 = param11;
         var_2148 = param12;
      }
      
      public function get itemTypeID() : int
      {
         return var_2149;
      }
      
      public function get extra() : int
      {
         return var_1570;
      }
      
      public function get stuffData() : String
      {
         return var_1386;
      }
      
      public function get groupable() : Boolean
      {
         return var_2148;
      }
      
      public function get creationMonth() : int
      {
         return var_2153;
      }
      
      public function get roomItemID() : int
      {
         return var_2152;
      }
      
      public function get itemType() : String
      {
         return var_1059;
      }
      
      public function get itemID() : int
      {
         return var_1724;
      }
      
      public function get songID() : int
      {
         return var_1570;
      }
      
      public function get timeToExpiration() : int
      {
         return var_2150;
      }
      
      public function get creationYear() : int
      {
         return var_2151;
      }
      
      public function get creationDay() : int
      {
         return var_2147;
      }
      
      public function get category() : int
      {
         return _category;
      }
   }
}
