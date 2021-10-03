package com.sulake.habbo.communication.messages.parser.moderation
{
   import flash.utils.getTimer;
   
   public class IssueMessageData
   {
      
      public static const const_144:int = 1;
      
      public static const const_1398:int = 3;
      
      public static const const_405:int = 2;
       
      
      private var var_2030:int;
      
      private var var_1963:int;
      
      private var var_2025:int;
      
      private var var_1964:int;
      
      private var var_33:int;
      
      private var var_445:int;
      
      private var var_1328:int;
      
      private var var_1969:int;
      
      private var var_991:int;
      
      private var _roomResources:String;
      
      private var var_1722:int;
      
      private var var_2027:int;
      
      private var var_2028:String;
      
      private var var_1971:String;
      
      private var var_2031:int = 0;
      
      private var var_1177:String;
      
      private var _message:String;
      
      private var var_2019:int;
      
      private var var_2029:String;
      
      private var var_1211:int;
      
      private var var_675:String;
      
      private var var_2026:String;
      
      private var var_1481:int;
      
      public function IssueMessageData()
      {
         super();
      }
      
      public function set reportedUserId(param1:int) : void
      {
         var_991 = param1;
      }
      
      public function set temporalPriority(param1:int) : void
      {
         var_2031 = param1;
      }
      
      public function get reporterUserId() : int
      {
         return var_2027;
      }
      
      public function set roomName(param1:String) : void
      {
         var_675 = param1;
      }
      
      public function set chatRecordId(param1:int) : void
      {
         var_1722 = param1;
      }
      
      public function get state() : int
      {
         return var_33;
      }
      
      public function get roomResources() : String
      {
         return _roomResources;
      }
      
      public function set roomResources(param1:String) : void
      {
         _roomResources = param1;
      }
      
      public function get roomName() : String
      {
         return var_675;
      }
      
      public function get message() : String
      {
         return _message;
      }
      
      public function set worldId(param1:int) : void
      {
         var_1964 = param1;
      }
      
      public function set state(param1:int) : void
      {
         var_33 = param1;
      }
      
      public function get unitPort() : int
      {
         return var_1963;
      }
      
      public function get priority() : int
      {
         return var_2030 + var_2031;
      }
      
      public function set issueId(param1:int) : void
      {
         var_1969 = param1;
      }
      
      public function get pickerUserName() : String
      {
         return var_1971;
      }
      
      public function getOpenTime() : String
      {
         var _loc1_:int = (getTimer() - var_1481) / 1000;
         var _loc2_:int = _loc1_ % 60;
         var _loc3_:int = _loc1_ / 60;
         var _loc4_:int = _loc3_ % 60;
         var _loc5_:int = _loc3_ / 60;
         var _loc6_:String = _loc2_ < 10 ? "0" + _loc2_ : "" + _loc2_;
         var _loc7_:String = _loc4_ < 10 ? "0" + _loc4_ : "" + _loc4_;
         var _loc8_:String = _loc5_ < 10 ? "0" + _loc5_ : "" + _loc5_;
         return _loc8_ + ":" + _loc7_ + ":" + _loc6_;
      }
      
      public function get categoryId() : int
      {
         return var_1211;
      }
      
      public function set reporterUserId(param1:int) : void
      {
         var_2027 = param1;
      }
      
      public function get roomType() : int
      {
         return var_1328;
      }
      
      public function set flatType(param1:String) : void
      {
         var_2028 = param1;
      }
      
      public function get chatRecordId() : int
      {
         return var_1722;
      }
      
      public function set message(param1:String) : void
      {
         _message = param1;
      }
      
      public function get worldId() : int
      {
         return var_1964;
      }
      
      public function set flatOwnerName(param1:String) : void
      {
         var_2026 = param1;
      }
      
      public function set reportedUserName(param1:String) : void
      {
         var_1177 = param1;
      }
      
      public function get issueId() : int
      {
         return var_1969;
      }
      
      public function set priority(param1:int) : void
      {
         var_2030 = param1;
      }
      
      public function set unitPort(param1:int) : void
      {
         var_1963 = param1;
      }
      
      public function get flatType() : String
      {
         return var_2028;
      }
      
      public function set reportedCategoryId(param1:int) : void
      {
         var_2025 = param1;
      }
      
      public function set pickerUserName(param1:String) : void
      {
         var_1971 = param1;
      }
      
      public function set pickerUserId(param1:int) : void
      {
         var_2019 = param1;
      }
      
      public function get reportedUserName() : String
      {
         return var_1177;
      }
      
      public function set roomType(param1:int) : void
      {
         var_1328 = param1;
      }
      
      public function get reportedCategoryId() : int
      {
         return var_2025;
      }
      
      public function set flatId(param1:int) : void
      {
         var_445 = param1;
      }
      
      public function set categoryId(param1:int) : void
      {
         var_1211 = param1;
      }
      
      public function set timeStamp(param1:int) : void
      {
         var_1481 = param1;
      }
      
      public function get pickerUserId() : int
      {
         return var_2019;
      }
      
      public function set reporterUserName(param1:String) : void
      {
         var_2029 = param1;
      }
      
      public function get timeStamp() : int
      {
         return var_1481;
      }
      
      public function get reportedUserId() : int
      {
         return var_991;
      }
      
      public function get flatId() : int
      {
         return var_445;
      }
      
      public function get flatOwnerName() : String
      {
         return var_2026;
      }
      
      public function get reporterUserName() : String
      {
         return var_2029;
      }
   }
}
