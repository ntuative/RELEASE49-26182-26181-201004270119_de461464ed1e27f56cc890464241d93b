package com.sulake.habbo.session.events
{
   import com.sulake.habbo.session.IRoomSession;
   
   public class RoomSessionVoteEvent extends RoomSessionEvent
   {
      
      public static const const_127:String = "RSPE_VOTE_RESULT";
      
      public static const const_132:String = "RSPE_VOTE_QUESTION";
       
      
      private var var_1193:int = 0;
      
      private var var_1096:String = "";
      
      private var var_737:Array;
      
      private var var_995:Array;
      
      public function RoomSessionVoteEvent(param1:String, param2:IRoomSession, param3:String, param4:Array, param5:Array = null, param6:int = 0, param7:Boolean = false, param8:Boolean = false)
      {
         var_995 = [];
         var_737 = [];
         super(param1,param2,param7,param8);
         var_1096 = param3;
         var_995 = param4;
         var_737 = param5;
         if(var_737 == null)
         {
            var_737 = [];
         }
         var_1193 = param6;
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
