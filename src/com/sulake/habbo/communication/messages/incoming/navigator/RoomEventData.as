package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomEventData implements IDisposable
   {
       
      
      private var _disposed:Boolean;
      
      private var var_1721:String;
      
      private var var_445:int;
      
      private var var_1902:String;
      
      private var var_1904:String;
      
      private var var_1903:int;
      
      private var var_1905:String;
      
      private var var_1901:int;
      
      private var var_644:Array;
      
      private var var_960:Boolean;
      
      public function RoomEventData(param1:IMessageDataWrapper)
      {
         var _loc5_:* = null;
         var_644 = new Array();
         super();
         var _loc2_:String = param1.readString();
         if(_loc2_ == "-1")
         {
            Logger.log("Got null room event");
            this.var_960 = false;
            return;
         }
         this.var_960 = true;
         var_1903 = int(_loc2_);
         var_1902 = param1.readString();
         var_445 = int(param1.readString());
         var_1901 = param1.readInteger();
         var_1721 = param1.readString();
         var_1904 = param1.readString();
         var_1905 = param1.readString();
         var _loc3_:int = param1.readInteger();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = param1.readString();
            var_644.push(_loc5_);
            _loc4_++;
         }
      }
      
      public function get eventType() : int
      {
         return var_1901;
      }
      
      public function get eventName() : String
      {
         return var_1721;
      }
      
      public function get eventDescription() : String
      {
         return var_1904;
      }
      
      public function get ownerAvatarName() : String
      {
         return var_1902;
      }
      
      public function get tags() : Array
      {
         return var_644;
      }
      
      public function get creationTime() : String
      {
         return var_1905;
      }
      
      public function get exists() : Boolean
      {
         return var_960;
      }
      
      public function get ownerAvatarId() : int
      {
         return var_1903;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
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
      
      public function get flatId() : int
      {
         return var_445;
      }
   }
}
