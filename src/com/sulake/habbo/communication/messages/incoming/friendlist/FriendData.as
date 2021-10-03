package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendData
   {
       
      
      private var var_306:String;
      
      private var var_1253:String;
      
      private var var_1252:String;
      
      private var var_1211:int;
      
      private var var_560:int;
      
      private var var_1251:String;
      
      private var _name:String;
      
      private var var_1254:Boolean;
      
      private var var_727:Boolean;
      
      private var _id:int;
      
      public function FriendData(param1:IMessageDataWrapper)
      {
         super();
         this._id = param1.readInteger();
         this._name = param1.readString();
         this.var_560 = param1.readInteger();
         this.var_727 = param1.readBoolean();
         this.var_1254 = param1.readBoolean();
         this.var_306 = param1.readString();
         this.var_1211 = param1.readInteger();
         this.var_1252 = param1.readString();
         this.var_1253 = param1.readString();
         this.var_1251 = param1.readString();
      }
      
      public function get gender() : int
      {
         return var_560;
      }
      
      public function get realName() : String
      {
         return var_1251;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get motto() : String
      {
         return var_1252;
      }
      
      public function get categoryId() : int
      {
         return var_1211;
      }
      
      public function get online() : Boolean
      {
         return var_727;
      }
      
      public function get followingAllowed() : Boolean
      {
         return var_1254;
      }
      
      public function get lastAccess() : String
      {
         return var_1253;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get figure() : String
      {
         return var_306;
      }
   }
}
