package com.sulake.habbo.widget.events
{
   public class RoomWidgetVoteUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_127:String = "RWPUE_VOTE_RESULT";
      
      public static const const_132:String = "RWPUE_VOTE_QUESTION";
       
      
      private var var_1193:int;
      
      private var var_1096:String;
      
      private var var_737:Array;
      
      private var var_995:Array;
      
      public function RoomWidgetVoteUpdateEvent(param1:String, param2:String, param3:Array, param4:Array = null, param5:int = 0, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         var_1096 = param2;
         var_995 = param3;
         var_737 = param4;
         if(var_737 == null)
         {
            var_737 = [];
         }
         var_1193 = param5;
      }
      
      public function get votes() : Array
      {
         return var_737.slice();
      }
      
      public function get totalVotes() : int
      {
         return var_1193;
      }
      
      public function get question() : String
      {
         return var_1096;
      }
      
      public function get choices() : Array
      {
         return var_995.slice();
      }
   }
}
