package com.sulake.habbo.toolbar
{
   public class StateItem
   {
       
      
      private var var_1241:Boolean;
      
      private var var_1692:String;
      
      private var _frames:XMLList;
      
      private var var_963:String = "-1";
      
      private var var_645:String;
      
      private var var_175:int = 120;
      
      private var var_1151:String = "-1";
      
      private var var_1150:String;
      
      private var var_1693:Boolean;
      
      private var var_1424:String = "-1";
      
      private var _id:String;
      
      public function StateItem(param1:XML, param2:String)
      {
         super();
         _id = param1.@id;
         if(param1.attribute("loop").length() > 0)
         {
            var_1241 = Boolean(param1.@loop);
         }
         if(param1.attribute("bounce").length() > 0)
         {
            var_1693 = Boolean(param1.@loop);
         }
         if(param1.attribute("timer").length() > 0)
         {
            var_175 = int(param1.@timer);
         }
         if(param1.attribute("namebase").length() > 0)
         {
            var_1150 = param1.@namebase;
         }
         else
         {
            var_1150 = param2;
         }
         if(param1.attribute("state_over").length() > 0)
         {
            var_963 = param1.@state_over;
         }
         if(param1.attribute("nextState").length() > 0)
         {
            var_1151 = param1.@nextState;
         }
         else
         {
            var_1151 = _id;
         }
         if(param1.attribute("state_default").length() > 0)
         {
            var_1424 = param1.@state_default;
         }
         if(param1.attribute("tooltip").length() > 0)
         {
            var_1692 = param1.@tooltip;
         }
         if(param1.attribute("background").length() > 0)
         {
            var_645 = param1.@background;
         }
         var _loc3_:XMLList = param1.elements("frame");
         if(_loc3_.length() > 0)
         {
            _frames = _loc3_;
         }
      }
      
      public function get hasStateOver() : Boolean
      {
         return var_963 != "-1";
      }
      
      public function get bounce() : Boolean
      {
         return var_1693;
      }
      
      public function get defaultState() : String
      {
         return var_1424;
      }
      
      public function get hasDefaultState() : Boolean
      {
         return var_1424 != "-1";
      }
      
      public function get tooltip() : String
      {
         return var_1692;
      }
      
      public function get id() : String
      {
         return _id;
      }
      
      public function get timer() : int
      {
         return var_175;
      }
      
      public function get loop() : Boolean
      {
         return var_1241;
      }
      
      public function get nextState() : String
      {
         return var_1151;
      }
      
      public function get frames() : XMLList
      {
         return _frames;
      }
      
      public function get background() : String
      {
         return var_645;
      }
      
      public function get stateOver() : String
      {
         return var_963;
      }
      
      public function get nameBase() : String
      {
         return var_1150;
      }
   }
}
