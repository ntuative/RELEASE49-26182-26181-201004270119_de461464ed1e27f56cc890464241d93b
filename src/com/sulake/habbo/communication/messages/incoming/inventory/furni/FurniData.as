package com.sulake.habbo.communication.messages.incoming.inventory.furni
{
   public class FurniData
   {
       
      
      private var var_1386:String;
      
      private var var_1059:String;
      
      private var var_2203:Boolean;
      
      private var var_1570:int;
      
      private var var_1947:int;
      
      private var var_2204:Boolean;
      
      private var var_1415:String = "";
      
      private var var_1950:Boolean;
      
      private var _category:int;
      
      private var _objId:int;
      
      private var var_1243:int;
      
      private var var_1951:Boolean;
      
      private var var_1641:int = -1;
      
      private var var_1670:int;
      
      public function FurniData(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean, param11:int)
      {
         super();
         var_1947 = param1;
         var_1059 = param2;
         _objId = param3;
         var_1243 = param4;
         _category = param5;
         var_1386 = param6;
         var_2203 = param7;
         var_1950 = param8;
         var_1951 = param9;
         var_2204 = param10;
         var_1670 = param11;
      }
      
      public function get slotId() : String
      {
         return var_1415;
      }
      
      public function get extra() : int
      {
         return var_1570;
      }
      
      public function get classId() : int
      {
         return var_1243;
      }
      
      public function get category() : int
      {
         return _category;
      }
      
      public function get isSellable() : Boolean
      {
         return var_2204;
      }
      
      public function get isGroupable() : Boolean
      {
         return var_2203;
      }
      
      public function get stripId() : int
      {
         return var_1947;
      }
      
      public function get stuffData() : String
      {
         return var_1386;
      }
      
      public function get songId() : int
      {
         return var_1641;
      }
      
      public function setExtraData(param1:String, param2:int) : void
      {
         var_1415 = param1;
         var_1570 = param2;
      }
      
      public function get itemType() : String
      {
         return var_1059;
      }
      
      public function get objId() : int
      {
         return _objId;
      }
      
      public function get expiryTime() : int
      {
         return var_1670;
      }
      
      public function get isTradeable() : Boolean
      {
         return var_1951;
      }
      
      public function get isRecyclable() : Boolean
      {
         return var_1950;
      }
   }
}
