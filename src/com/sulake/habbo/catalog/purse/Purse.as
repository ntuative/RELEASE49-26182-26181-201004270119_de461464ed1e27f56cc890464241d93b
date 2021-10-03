package com.sulake.habbo.catalog.purse
{
   public class Purse implements IPurse
   {
       
      
      private var var_1453:int = 0;
      
      private var var_1802:int = 0;
      
      private var var_1630:Boolean = false;
      
      private var var_1772:int = 0;
      
      private var var_1452:int = 0;
      
      public function Purse()
      {
         super();
      }
      
      public function get clubPeriods() : int
      {
         return var_1452;
      }
      
      public function get clubDays() : int
      {
         return var_1453;
      }
      
      public function set pixels(param1:int) : void
      {
         var_1802 = param1;
      }
      
      public function get pixels() : int
      {
         return var_1802;
      }
      
      public function get hasClubLeft() : Boolean
      {
         return var_1453 > 0 || var_1452 > 0;
      }
      
      public function set clubDays(param1:int) : void
      {
         var_1453 = param1;
      }
      
      public function get credits() : int
      {
         return var_1772;
      }
      
      public function get isVIP() : Boolean
      {
         return var_1630;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         var_1630 = param1;
      }
      
      public function set credits(param1:int) : void
      {
         var_1772 = param1;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         var_1452 = param1;
      }
   }
}
