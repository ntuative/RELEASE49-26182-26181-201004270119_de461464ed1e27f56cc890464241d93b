package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class ItemMessageData
   {
       
      
      private var var_83:Number = 0;
      
      private var _data:String = "";
      
      private var var_1570:int = 0;
      
      private var var_33:int = 0;
      
      private var _type:int = 0;
      
      private var _y:Number = 0;
      
      private var var_2138:Boolean = false;
      
      private var var_2377:String = "";
      
      private var _id:int = 0;
      
      private var var_209:Boolean = false;
      
      private var var_240:String = "";
      
      private var var_2139:int = 0;
      
      private var var_2140:int = 0;
      
      private var var_1841:int = 0;
      
      private var var_1837:int = 0;
      
      public function ItemMessageData(param1:int, param2:int, param3:Boolean)
      {
         super();
         _id = param1;
         _type = param2;
         var_2138 = param3;
      }
      
      public function set y(param1:Number) : void
      {
         if(!var_209)
         {
            _y = param1;
         }
      }
      
      public function get isOldFormat() : Boolean
      {
         return var_2138;
      }
      
      public function set type(param1:int) : void
      {
         if(!var_209)
         {
            _type = param1;
         }
      }
      
      public function get dir() : String
      {
         return var_240;
      }
      
      public function get state() : int
      {
         return var_33;
      }
      
      public function set localX(param1:Number) : void
      {
         if(!var_209)
         {
            var_1841 = param1;
         }
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function set wallX(param1:Number) : void
      {
         if(!var_209)
         {
            var_2139 = param1;
         }
      }
      
      public function set wallY(param1:Number) : void
      {
         if(!var_209)
         {
            var_2140 = param1;
         }
      }
      
      public function set dir(param1:String) : void
      {
         if(!var_209)
         {
            var_240 = param1;
         }
      }
      
      public function get data() : String
      {
         return _data;
      }
      
      public function set localY(param1:Number) : void
      {
         if(!var_209)
         {
            var_1837 = param1;
         }
      }
      
      public function set state(param1:int) : void
      {
         if(!var_209)
         {
            var_33 = param1;
         }
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get localX() : Number
      {
         return var_1841;
      }
      
      public function set data(param1:String) : void
      {
         if(!var_209)
         {
            _data = param1;
         }
      }
      
      public function get wallX() : Number
      {
         return var_2139;
      }
      
      public function get wallY() : Number
      {
         return var_2140;
      }
      
      public function get localY() : Number
      {
         return var_1837;
      }
      
      public function setReadOnly() : void
      {
         var_209 = true;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get z() : Number
      {
         return var_83;
      }
      
      public function set z(param1:Number) : void
      {
         if(!var_209)
         {
            var_83 = param1;
         }
      }
   }
}
