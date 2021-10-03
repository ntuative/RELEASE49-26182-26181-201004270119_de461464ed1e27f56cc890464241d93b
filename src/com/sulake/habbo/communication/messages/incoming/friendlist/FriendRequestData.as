package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendRequestData
   {
       
      
      private var var_2202:int;
      
      private var var_2201:String;
      
      private var var_1043:int;
      
      public function FriendRequestData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1043 = param1.readInteger();
         this.var_2201 = param1.readString();
         this.var_2202 = int(param1.readString());
      }
      
      public function get requestId() : int
      {
         return this.var_1043;
      }
      
      public function get requesterUserId() : int
      {
         return this.var_2202;
      }
      
      public function get requesterName() : String
      {
         return this.var_2201;
      }
   }
}
