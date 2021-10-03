package com.sulake.habbo.widget.events
{
   public class RoomWidgetHabboClubUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_236:String = "RWBIUE_HABBO_CLUB";
       
      
      private var var_1892:Boolean = false;
      
      private var var_1894:int = 0;
      
      private var var_1891:int = 0;
      
      private var var_1679:int;
      
      private var var_1893:int = 0;
      
      public function RoomWidgetHabboClubUpdateEvent(param1:int, param2:int, param3:int, param4:Boolean, param5:int, param6:Boolean = false, param7:Boolean = false)
      {
         super(const_236,param6,param7);
         var_1893 = param1;
         var_1891 = param2;
         var_1894 = param3;
         var_1892 = param4;
         var_1679 = param5;
      }
      
      public function get clubLevel() : int
      {
         return var_1679;
      }
      
      public function get pastPeriods() : int
      {
         return var_1894;
      }
      
      public function get periodsLeft() : int
      {
         return var_1891;
      }
      
      public function get daysLeft() : int
      {
         return var_1893;
      }
      
      public function get allowClubDances() : Boolean
      {
         return var_1892;
      }
   }
}
