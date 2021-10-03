package com.sulake.habbo.communication.messages.incoming.navigator
{
   public class NavigationNodeData
   {
       
      
      private var var_1280:int;
      
      private var var_1542:String;
      
      public function NavigationNodeData(param1:int, param2:String)
      {
         super();
         var_1280 = param1;
         var_1542 = param2;
         Logger.log("READ NODE: " + var_1280 + ", " + var_1542);
      }
      
      public function get nodeName() : String
      {
         return var_1542;
      }
      
      public function get nodeId() : int
      {
         return var_1280;
      }
   }
}
