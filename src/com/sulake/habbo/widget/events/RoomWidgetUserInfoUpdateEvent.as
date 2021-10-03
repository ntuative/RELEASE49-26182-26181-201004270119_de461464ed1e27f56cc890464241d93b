package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetUserInfoUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_214:String = "RWUIUE_PEER";
      
      public static const const_219:String = "RWUIUE_OWN_USER";
      
      public static const TRADE_REASON_NO_OWN_RIGHT:int = 1;
      
      public static const BOT:String = "RWUIUE_BOT";
      
      public static const const_1189:String = "BOT";
      
      public static const const_1012:int = 2;
      
      public static const const_1200:int = 0;
      
      public static const const_927:int = 3;
       
      
      private var var_306:String = "";
      
      private var var_1252:String = "";
      
      private var var_2073:Boolean = false;
      
      private var var_1940:int = 0;
      
      private var var_2070:int = 0;
      
      private var var_2068:Boolean = false;
      
      private var var_1251:String = "";
      
      private var var_2065:Boolean = false;
      
      private var var_864:int = 0;
      
      private var var_2064:Boolean = true;
      
      private var var_1098:int = 0;
      
      private var var_2069:Boolean = false;
      
      private var var_1237:Boolean = false;
      
      private var var_2067:Boolean = false;
      
      private var var_2074:int = 0;
      
      private var var_2071:Boolean = false;
      
      private var _image:BitmapData = null;
      
      private var var_250:Array;
      
      private var var_1236:Boolean = false;
      
      private var _name:String = "";
      
      private var var_1938:int = 0;
      
      private var var_2066:Boolean = false;
      
      private var var_2072:int = 0;
      
      private var var_2063:String = "";
      
      public function RoomWidgetUserInfoUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         var_250 = [];
         super(param1,param2,param3);
      }
      
      public function get userRoomId() : int
      {
         return var_2070;
      }
      
      public function set userRoomId(param1:int) : void
      {
         var_2070 = param1;
      }
      
      public function get canBeAskedAsFriend() : Boolean
      {
         return var_2073;
      }
      
      public function get canBeKicked() : Boolean
      {
         return var_2064;
      }
      
      public function set canBeKicked(param1:Boolean) : void
      {
         var_2064 = param1;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function set amIAnyRoomController(param1:Boolean) : void
      {
         var_2065 = param1;
      }
      
      public function get motto() : String
      {
         return var_1252;
      }
      
      public function set isIgnored(param1:Boolean) : void
      {
         var_2069 = param1;
      }
      
      public function get isRoomOwner() : Boolean
      {
         return var_1237;
      }
      
      public function set name(param1:String) : void
      {
         _name = param1;
      }
      
      public function set motto(param1:String) : void
      {
         var_1252 = param1;
      }
      
      public function get amIOwner() : Boolean
      {
         return var_2066;
      }
      
      public function get groupBadgeId() : String
      {
         return var_2063;
      }
      
      public function set isRoomOwner(param1:Boolean) : void
      {
         var_1237 = param1;
      }
      
      public function get hasFlatControl() : Boolean
      {
         return var_2071;
      }
      
      public function set carryItem(param1:int) : void
      {
         var_2074 = param1;
      }
      
      public function get badges() : Array
      {
         return var_250;
      }
      
      public function get amIController() : Boolean
      {
         return var_2068;
      }
      
      public function set amIController(param1:Boolean) : void
      {
         var_2068 = param1;
      }
      
      public function set amIOwner(param1:Boolean) : void
      {
         var_2066 = param1;
      }
      
      public function set image(param1:BitmapData) : void
      {
         _image = param1;
      }
      
      public function set canTradeReason(param1:int) : void
      {
         var_2072 = param1;
      }
      
      public function set groupBadgeId(param1:String) : void
      {
         var_2063 = param1;
      }
      
      public function set realName(param1:String) : void
      {
         var_1251 = param1;
      }
      
      public function get amIAnyRoomController() : Boolean
      {
         return var_2065;
      }
      
      public function set figure(param1:String) : void
      {
         var_306 = param1;
      }
      
      public function get carryItem() : int
      {
         return var_2074;
      }
      
      public function get isSpectatorMode() : Boolean
      {
         return var_1236;
      }
      
      public function get isIgnored() : Boolean
      {
         return var_2069;
      }
      
      public function set respectLeft(param1:int) : void
      {
         var_864 = param1;
      }
      
      public function get image() : BitmapData
      {
         return _image;
      }
      
      public function get canTradeReason() : int
      {
         return var_2072;
      }
      
      public function get realName() : String
      {
         return var_1251;
      }
      
      public function get figure() : String
      {
         return var_306;
      }
      
      public function set webID(param1:int) : void
      {
         var_1938 = param1;
      }
      
      public function set badges(param1:Array) : void
      {
         var_250 = param1;
      }
      
      public function set canTrade(param1:Boolean) : void
      {
         var_2067 = param1;
      }
      
      public function set hasFlatControl(param1:Boolean) : void
      {
         var_2071 = param1;
      }
      
      public function get respectLeft() : int
      {
         return var_864;
      }
      
      public function get webID() : int
      {
         return var_1938;
      }
      
      public function set groupId(param1:int) : void
      {
         var_1098 = param1;
      }
      
      public function get xp() : int
      {
         return var_1940;
      }
      
      public function set canBeAskedAsFriend(param1:Boolean) : void
      {
         var_2073 = param1;
      }
      
      public function get groupId() : int
      {
         return var_1098;
      }
      
      public function get canTrade() : Boolean
      {
         return var_2067;
      }
      
      public function set isSpectatorMode(param1:Boolean) : void
      {
         var_1236 = param1;
      }
      
      public function set xp(param1:int) : void
      {
         var_1940 = param1;
      }
   }
}
