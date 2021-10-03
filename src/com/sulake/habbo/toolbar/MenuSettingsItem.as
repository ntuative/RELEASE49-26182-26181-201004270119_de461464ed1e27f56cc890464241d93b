package com.sulake.habbo.toolbar
{
   public class MenuSettingsItem
   {
       
      
      private var var_2051:Array;
      
      private var var_1774:String;
      
      private var var_2052:Boolean;
      
      public function MenuSettingsItem(param1:String, param2:Array = null, param3:Boolean = false)
      {
         super();
         var_1774 = param1;
         var_2051 = param2;
         var_2052 = param3;
      }
      
      public function get menuId() : String
      {
         return var_1774;
      }
      
      public function get yieldList() : Array
      {
         return var_2051;
      }
      
      public function get lockToIcon() : Boolean
      {
         return var_2052;
      }
   }
}
