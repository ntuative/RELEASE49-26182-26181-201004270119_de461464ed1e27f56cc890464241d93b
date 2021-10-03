package com.sulake.habbo.widget.messages
{
   public class RoomWidgetFurniActionMessage extends RoomWidgetMessage
   {
      
      public static const const_247:String = "RWFAM_MOVE";
      
      public static const const_577:String = "RWFUAM_ROTATE";
      
      public static const const_713:String = "RWFAM_PICKUP";
       
      
      private var var_1659:int = 0;
      
      private var var_2077:int = 0;
      
      public function RoomWidgetFurniActionMessage(param1:String, param2:int, param3:int)
      {
         super(param1);
         var_1659 = param2;
         var_2077 = param3;
      }
      
      public function get furniId() : int
      {
         return var_1659;
      }
      
      public function get furniCategory() : int
      {
         return var_2077;
      }
   }
}
