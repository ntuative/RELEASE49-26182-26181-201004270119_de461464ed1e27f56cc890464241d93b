package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ModeratorUserInfoData
   {
       
      
      private var var_1864:int;
      
      private var var_1869:int;
      
      private var var_1865:int;
      
      private var _userName:String;
      
      private var var_1867:int;
      
      private var var_1866:int;
      
      private var var_1868:int;
      
      private var _userId:int;
      
      private var var_727:Boolean;
      
      public function ModeratorUserInfoData(param1:IMessageDataWrapper)
      {
         super();
         _userId = param1.readInteger();
         _userName = param1.readString();
         var_1866 = param1.readInteger();
         var_1867 = param1.readInteger();
         var_727 = param1.readBoolean();
         var_1865 = param1.readInteger();
         var_1869 = param1.readInteger();
         var_1864 = param1.readInteger();
         var_1868 = param1.readInteger();
      }
      
      public function get banCount() : int
      {
         return var_1868;
      }
      
      public function get userId() : int
      {
         return _userId;
      }
      
      public function get online() : Boolean
      {
         return var_727;
      }
      
      public function get minutesSinceLastLogin() : int
      {
         return var_1867;
      }
      
      public function get abusiveCfhCount() : int
      {
         return var_1869;
      }
      
      public function get cautionCount() : int
      {
         return var_1864;
      }
      
      public function get cfhCount() : int
      {
         return var_1865;
      }
      
      public function get minutesSinceRegistration() : int
      {
         return var_1866;
      }
      
      public function get userName() : String
      {
         return _userName;
      }
   }
}
