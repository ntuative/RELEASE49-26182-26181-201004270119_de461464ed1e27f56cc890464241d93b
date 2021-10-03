package com.sulake.habbo.session.events
{
   import flash.events.Event;
   
   public class HabboSessionFigureUpdatedEvent extends Event
   {
      
      public static const const_710:String = "HABBO_SESSION_FIGURE_UPDATE";
       
      
      private var var_560:String;
      
      private var var_306:String;
      
      private var _userId:int;
      
      public function HabboSessionFigureUpdatedEvent(param1:int, param2:String, param3:String, param4:Boolean = false, param5:Boolean = false)
      {
         super(const_710,param4,param5);
         _userId = param1;
         var_306 = param2;
         var_560 = param3;
      }
      
      public function get gender() : String
      {
         return var_560;
      }
      
      public function get figure() : String
      {
         return var_306;
      }
      
      public function get userId() : int
      {
         return _userId;
      }
   }
}
