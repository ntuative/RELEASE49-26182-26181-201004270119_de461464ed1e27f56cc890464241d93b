package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserUpdateMessageData
   {
       
      
      private var _y:Number = 0;
      
      private var var_83:Number = 0;
      
      private var var_240:int = 0;
      
      private var var_2241:int = 0;
      
      private var var_2238:Number = 0;
      
      private var var_2240:Number = 0;
      
      private var var_2243:Number = 0;
      
      private var var_2239:Number = 0;
      
      private var var_2242:Boolean = false;
      
      private var var_84:Number = 0;
      
      private var _id:int = 0;
      
      private var var_198:Array;
      
      public function UserUpdateMessageData(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:Array)
      {
         var_198 = [];
         super();
         _id = param1;
         var_84 = param2;
         _y = param3;
         var_83 = param4;
         var_2239 = param5;
         var_240 = param6;
         var_2241 = param7;
         var_2238 = param8;
         var_2240 = param9;
         var_2243 = param10;
         var_2242 = param11;
         var_198 = param12;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get z() : Number
      {
         return var_83;
      }
      
      public function get dir() : int
      {
         return var_240;
      }
      
      public function get localZ() : Number
      {
         return var_2239;
      }
      
      public function get isMoving() : Boolean
      {
         return var_2242;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get dirHead() : int
      {
         return var_2241;
      }
      
      public function get targetX() : Number
      {
         return var_2238;
      }
      
      public function get targetY() : Number
      {
         return var_2240;
      }
      
      public function get targetZ() : Number
      {
         return var_2243;
      }
      
      public function get x() : Number
      {
         return var_84;
      }
      
      public function get actions() : Array
      {
         return var_198.slice();
      }
   }
}
