package com.sulake.habbo.inventory.purse
{
   public class Purse
   {
       
      
      private var var_1781:Boolean = false;
      
      private var var_1779:int = 0;
      
      private var var_1453:int = 0;
      
      private var var_1780:int = 0;
      
      private var var_1630:Boolean = false;
      
      private var var_1599:int = 0;
      
      private var var_1452:int = 0;
      
      public function Purse()
      {
         super();
      }
      
      public function set creditBalance(param1:int) : void
      {
         var_1599 = Math.max(0,param1);
      }
      
      public function get clubPastPeriods() : int
      {
         return var_1779;
      }
      
      public function get clubHasEverBeenMember() : Boolean
      {
         return var_1781;
      }
      
      public function set clubHasEverBeenMember(param1:Boolean) : void
      {
         var_1781 = param1;
      }
      
      public function get isVIP() : Boolean
      {
         return var_1630;
      }
      
      public function set clubPastPeriods(param1:int) : void
      {
         var_1779 = Math.max(0,param1);
      }
      
      public function set clubDays(param1:int) : void
      {
         var_1453 = Math.max(0,param1);
      }
      
      public function get creditBalance() : int
      {
         return var_1599;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         var_1630 = param1;
      }
      
      public function set pixelBalance(param1:int) : void
      {
         var_1780 = Math.max(0,param1);
      }
      
      public function get clubDays() : int
      {
         return var_1453;
      }
      
      public function get pixelBalance() : int
      {
         return var_1780;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         var_1452 = Math.max(0,param1);
      }
      
      public function get clubPeriods() : int
      {
         return var_1452;
      }
   }
}
