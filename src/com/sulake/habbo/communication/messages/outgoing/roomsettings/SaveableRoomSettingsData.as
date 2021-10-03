package com.sulake.habbo.communication.messages.outgoing.roomsettings
{
   public class SaveableRoomSettingsData
   {
       
      
      private var _password:String;
      
      private var var_1755:int;
      
      private var var_1746:int;
      
      private var var_1756:Boolean;
      
      private var var_1759:Boolean;
      
      private var var_1758:Array;
      
      private var var_1761:Boolean;
      
      private var var_1211:int;
      
      private var _name:String;
      
      private var _roomId:int;
      
      private var var_644:Array;
      
      private var var_1131:String;
      
      public function SaveableRoomSettingsData()
      {
         super();
      }
      
      public function get doorMode() : int
      {
         return var_1746;
      }
      
      public function get description() : String
      {
         return var_1131;
      }
      
      public function get allowFoodConsume() : Boolean
      {
         return var_1759;
      }
      
      public function get maximumVisitors() : int
      {
         return var_1755;
      }
      
      public function set description(param1:String) : void
      {
         var_1131 = param1;
      }
      
      public function get password() : String
      {
         return _password;
      }
      
      public function set allowPets(param1:Boolean) : void
      {
         var_1761 = param1;
      }
      
      public function set maximumVisitors(param1:int) : void
      {
         var_1755 = param1;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get categoryId() : int
      {
         return var_1211;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function get controllers() : Array
      {
         return var_1758;
      }
      
      public function get tags() : Array
      {
         return var_644;
      }
      
      public function get allowPets() : Boolean
      {
         return var_1761;
      }
      
      public function set doorMode(param1:int) : void
      {
         var_1746 = param1;
      }
      
      public function set name(param1:String) : void
      {
         _name = param1;
      }
      
      public function set allowWalkThrough(param1:Boolean) : void
      {
         var_1756 = param1;
      }
      
      public function set tags(param1:Array) : void
      {
         var_644 = param1;
      }
      
      public function set roomId(param1:int) : void
      {
         _roomId = param1;
      }
      
      public function set controllers(param1:Array) : void
      {
         var_1758 = param1;
      }
      
      public function set categoryId(param1:int) : void
      {
         var_1211 = param1;
      }
      
      public function get allowWalkThrough() : Boolean
      {
         return var_1756;
      }
      
      public function set password(param1:String) : void
      {
         _password = param1;
      }
      
      public function set allowFoodConsume(param1:Boolean) : void
      {
         var_1759 = param1;
      }
   }
}
