package com.sulake.habbo.widget.messages
{
   public class RoomWidgetSelectOutfitMessage extends RoomWidgetMessage
   {
      
      public static const const_968:String = "select_outfit";
       
      
      private var var_2195:int;
      
      public function RoomWidgetSelectOutfitMessage(param1:int)
      {
         super(const_968);
         var_2195 = param1;
      }
      
      public function get outfitId() : int
      {
         return var_2195;
      }
   }
}
