package com.sulake.habbo.session
{
   public class UserData implements IUserData
   {
       
      
      private var var_306:String = "";
      
      private var var_1941:String = "";
      
      private var var_1939:int = 0;
      
      private var var_1940:int = 0;
      
      private var _type:int = 0;
      
      private var var_1942:String = "";
      
      private var var_596:String = "";
      
      private var _id:int = -1;
      
      private var _name:String = "";
      
      private var var_1938:int = 0;
      
      public function UserData(param1:int)
      {
         super();
         _id = param1;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function set name(param1:String) : void
      {
         _name = param1;
      }
      
      public function set groupStatus(param1:int) : void
      {
         var_1939 = param1;
      }
      
      public function set groupID(param1:String) : void
      {
         var_1942 = param1;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function set figure(param1:String) : void
      {
         var_306 = param1;
      }
      
      public function set sex(param1:String) : void
      {
         var_596 = param1;
      }
      
      public function get groupStatus() : int
      {
         return var_1939;
      }
      
      public function set webID(param1:int) : void
      {
         var_1938 = param1;
      }
      
      public function get groupID() : String
      {
         return var_1942;
      }
      
      public function set custom(param1:String) : void
      {
         var_1941 = param1;
      }
      
      public function get figure() : String
      {
         return var_306;
      }
      
      public function get sex() : String
      {
         return var_596;
      }
      
      public function get custom() : String
      {
         return var_1941;
      }
      
      public function get webID() : int
      {
         return var_1938;
      }
      
      public function set xp(param1:int) : void
      {
         var_1940 = param1;
      }
      
      public function set type(param1:int) : void
      {
         _type = param1;
      }
      
      public function get xp() : int
      {
         return var_1940;
      }
   }
}
