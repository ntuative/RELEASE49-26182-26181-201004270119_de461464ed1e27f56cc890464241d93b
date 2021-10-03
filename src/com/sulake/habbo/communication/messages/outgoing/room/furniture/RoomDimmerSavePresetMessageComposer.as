package com.sulake.habbo.communication.messages.outgoing.room.furniture
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class RoomDimmerSavePresetMessageComposer implements IMessageComposer
   {
       
      
      private var var_1798:int;
      
      private var var_1800:int;
      
      private var var_1797:Boolean;
      
      private var var_1801:String;
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_1799:int;
      
      public function RoomDimmerSavePresetMessageComposer(param1:int, param2:int, param3:String, param4:int, param5:Boolean, param6:int = 0, param7:int = 0)
      {
         super();
         _roomId = param6;
         _roomCategory = param7;
         var_1800 = param1;
         var_1798 = param2;
         var_1801 = param3;
         var_1799 = param4;
         var_1797 = param5;
      }
      
      public function getMessageArray() : Array
      {
         return [var_1800,var_1798,var_1801,var_1799,int(var_1797)];
      }
      
      public function dispose() : void
      {
      }
   }
}
