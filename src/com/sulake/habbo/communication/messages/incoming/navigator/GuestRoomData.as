package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class GuestRoomData implements IDisposable
   {
       
      
      private var _disposed:Boolean;
      
      private var var_1652:int;
      
      private var var_2112:String;
      
      private var var_2110:int;
      
      private var var_2109:int;
      
      private var var_723:Boolean;
      
      private var var_1761:Boolean;
      
      private var var_445:int;
      
      private var var_1131:String;
      
      private var var_1746:int;
      
      private var var_1211:int;
      
      private var _ownerName:String;
      
      private var var_675:String;
      
      private var var_2111:int;
      
      private var var_2108:RoomThumbnailData;
      
      private var var_1750:Boolean;
      
      private var var_644:Array;
      
      public function GuestRoomData(param1:IMessageDataWrapper)
      {
         var _loc4_:* = null;
         var_644 = new Array();
         super();
         var_445 = param1.readInteger();
         var_723 = param1.readBoolean();
         var_675 = param1.readString();
         _ownerName = param1.readString();
         var_1746 = param1.readInteger();
         var_1652 = param1.readInteger();
         var_2111 = param1.readInteger();
         var_1131 = param1.readString();
         var_2110 = param1.readInteger();
         var_1750 = param1.readBoolean();
         var_2109 = param1.readInteger();
         var_1211 = param1.readInteger();
         var_2112 = param1.readString();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = param1.readString();
            var_644.push(_loc4_);
            _loc3_++;
         }
         var_2108 = new RoomThumbnailData(param1);
         var_1761 = param1.readBoolean();
      }
      
      public function get maxUserCount() : int
      {
         return var_2111;
      }
      
      public function get roomName() : String
      {
         return var_675;
      }
      
      public function get userCount() : int
      {
         return var_1652;
      }
      
      public function get score() : int
      {
         return var_2109;
      }
      
      public function get eventCreationTime() : String
      {
         return var_2112;
      }
      
      public function get allowTrading() : Boolean
      {
         return var_1750;
      }
      
      public function get tags() : Array
      {
         return var_644;
      }
      
      public function get allowPets() : Boolean
      {
         return var_1761;
      }
      
      public function get event() : Boolean
      {
         return var_723;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         this.var_644 = null;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function get categoryId() : int
      {
         return var_1211;
      }
      
      public function get srchSpecPrm() : int
      {
         return var_2110;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function get thumbnail() : RoomThumbnailData
      {
         return var_2108;
      }
      
      public function get doorMode() : int
      {
         return var_1746;
      }
      
      public function get flatId() : int
      {
         return var_445;
      }
      
      public function get description() : String
      {
         return var_1131;
      }
   }
}
