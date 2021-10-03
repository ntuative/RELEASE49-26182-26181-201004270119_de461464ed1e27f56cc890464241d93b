package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class UserNameChangedMessageParser implements IMessageParser
   {
       
      
      private var var_1217:String;
      
      private var var_1218:int;
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var _id:int;
      
      public function UserNameChangedMessageParser()
      {
         super();
      }
      
      public function method_1(param1:IMessageDataWrapper) : Boolean
      {
         var_1218 = param1.readInteger();
         _id = param1.readInteger();
         var_1217 = param1.readString();
         return true;
      }
      
      public function flush() : Boolean
      {
         var_1218 = -1;
         _id = -1;
         var_1217 = "";
         return true;
      }
      
      public function get newName() : String
      {
         return var_1217;
      }
      
      public function get webId() : int
      {
         return var_1218;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function get roomCategory() : int
      {
         return _roomCategory;
      }
      
      public function get id() : int
      {
         return _id;
      }
   }
}
