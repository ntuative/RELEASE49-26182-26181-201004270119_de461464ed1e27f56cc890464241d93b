package com.sulake.habbo.widget.messages
{
   public class RoomWidgetRoomTagSearchMessage extends RoomWidgetMessage
   {
      
      public static const const_598:String = "RWRTSM_ROOM_TAG_SEARCH";
       
      
      private var var_1621:String = "";
      
      public function RoomWidgetRoomTagSearchMessage(param1:String)
      {
         super(const_598);
         var_1621 = param1;
      }
      
      public function get tag() : String
      {
         return var_1621;
      }
   }
}
