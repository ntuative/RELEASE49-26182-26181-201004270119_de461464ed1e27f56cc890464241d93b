package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserMessageData
   {
      
      public static const const_1344:String = "F";
      
      public static const const_863:String = "M";
       
      
      private var var_84:Number = 0;
      
      private var var_306:String = "";
      
      private var var_2162:int = 0;
      
      private var var_1941:String = "";
      
      private var var_1939:int = 0;
      
      private var var_1940:int = 0;
      
      private var var_1942:String = "";
      
      private var var_596:String = "";
      
      private var _id:int = 0;
      
      private var var_209:Boolean = false;
      
      private var var_240:int = 0;
      
      private var var_2161:String = "";
      
      private var _name:String = "";
      
      private var var_1938:int = 0;
      
      private var _y:Number = 0;
      
      private var var_83:Number = 0;
      
      public function UserMessageData(param1:int)
      {
         super();
         _id = param1;
      }
      
      public function get z() : Number
      {
         return var_83;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get dir() : int
      {
         return var_240;
      }
      
      public function set dir(param1:int) : void
      {
         if(!var_209)
         {
            var_240 = param1;
         }
      }
      
      public function set name(param1:String) : void
      {
         if(!var_209)
         {
            _name = param1;
         }
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get userType() : int
      {
         return var_2162;
      }
      
      public function set groupStatus(param1:int) : void
      {
         if(!var_209)
         {
            var_1939 = param1;
         }
      }
      
      public function get subType() : String
      {
         return var_2161;
      }
      
      public function set groupID(param1:String) : void
      {
         if(!var_209)
         {
            var_1942 = param1;
         }
      }
      
      public function set subType(param1:String) : void
      {
         if(!var_209)
         {
            var_2161 = param1;
         }
      }
      
      public function set xp(param1:int) : void
      {
         if(!var_209)
         {
            var_1940 = param1;
         }
      }
      
      public function set figure(param1:String) : void
      {
         if(!var_209)
         {
            var_306 = param1;
         }
      }
      
      public function set userType(param1:int) : void
      {
         if(!var_209)
         {
            var_2162 = param1;
         }
      }
      
      public function set sex(param1:String) : void
      {
         if(!var_209)
         {
            var_596 = param1;
         }
      }
      
      public function get groupStatus() : int
      {
         return var_1939;
      }
      
      public function get groupID() : String
      {
         return var_1942;
      }
      
      public function set webID(param1:int) : void
      {
         if(!var_209)
         {
            var_1938 = param1;
         }
      }
      
      public function set custom(param1:String) : void
      {
         if(!var_209)
         {
            var_1941 = param1;
         }
      }
      
      public function setReadOnly() : void
      {
         var_209 = true;
      }
      
      public function get sex() : String
      {
         return var_596;
      }
      
      public function get figure() : String
      {
         return var_306;
      }
      
      public function get webID() : int
      {
         return var_1938;
      }
      
      public function get custom() : String
      {
         return var_1941;
      }
      
      public function set y(param1:Number) : void
      {
         if(!var_209)
         {
            _y = param1;
         }
      }
      
      public function set z(param1:Number) : void
      {
         if(!var_209)
         {
            var_83 = param1;
         }
      }
      
      public function set x(param1:Number) : void
      {
         if(!var_209)
         {
            var_84 = param1;
         }
      }
      
      public function get x() : Number
      {
         return var_84;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get xp() : int
      {
         return var_1940;
      }
   }
}
