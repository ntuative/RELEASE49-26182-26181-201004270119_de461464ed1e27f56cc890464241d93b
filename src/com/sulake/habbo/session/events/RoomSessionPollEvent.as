package com.sulake.habbo.session.events
{
   import com.sulake.habbo.session.IRoomSession;
   
   public class RoomSessionPollEvent extends RoomSessionEvent
   {
      
      public static const const_131:String = "RSPE_POLL_CONTENT";
      
      public static const const_137:String = "RSPE_POLL_OFFER";
      
      public static const const_65:String = "RSPE_POLL_ERROR";
       
      
      private var var_1072:Array = null;
      
      private var var_1298:String = "";
      
      private var var_1340:String;
      
      private var var_1297:String = "";
      
      private var var_1071:int = 0;
      
      private var _id:int = -1;
      
      public function RoomSessionPollEvent(param1:String, param2:IRoomSession, param3:int)
      {
         _id = param3;
         super(param1,param2);
      }
      
      public function get questionArray() : Array
      {
         return var_1072;
      }
      
      public function get startMessage() : String
      {
         return var_1298;
      }
      
      public function get summary() : String
      {
         return var_1340;
      }
      
      public function set startMessage(param1:String) : void
      {
         var_1298 = param1;
      }
      
      public function set numQuestions(param1:int) : void
      {
         var_1071 = param1;
      }
      
      public function set summary(param1:String) : void
      {
         var_1340 = param1;
      }
      
      public function get numQuestions() : int
      {
         return var_1071;
      }
      
      public function set endMessage(param1:String) : void
      {
         var_1297 = param1;
      }
      
      public function get endMessage() : String
      {
         return var_1297;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function set questionArray(param1:Array) : void
      {
         var_1072 = param1;
      }
   }
}
