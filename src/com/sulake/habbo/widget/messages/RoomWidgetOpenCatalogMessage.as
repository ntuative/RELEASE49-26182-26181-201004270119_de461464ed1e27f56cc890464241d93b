package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenCatalogMessage extends RoomWidgetMessage
   {
      
      public static const const_1004:String = "RWOCM_CLUB_MAIN";
      
      public static const const_709:String = "RWGOI_MESSAGE_OPEN_CATALOG";
       
      
      private var var_1771:String = "";
      
      public function RoomWidgetOpenCatalogMessage(param1:String)
      {
         super(const_709);
         var_1771 = param1;
      }
      
      public function get pageKey() : String
      {
         return var_1771;
      }
   }
}
