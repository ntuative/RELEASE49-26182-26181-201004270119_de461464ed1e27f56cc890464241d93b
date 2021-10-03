package com.sulake.habbo.catalog.viewer.widgets.events
{
   import flash.events.Event;
   
   public class CatalogWidgetColoursEvent extends Event
   {
       
      
      private var var_1239:Array;
      
      private var var_1910:String;
      
      private var var_1908:String;
      
      private var var_1909:String;
      
      public function CatalogWidgetColoursEvent(param1:Array, param2:String, param3:String, param4:String, param5:Boolean = false, param6:Boolean = false)
      {
         super(WidgetEvent.CWE_COLOUR_ARRAY,param5,param6);
         var_1239 = param1;
         var_1910 = param2;
         var_1908 = param3;
         var_1909 = param4;
      }
      
      public function get colours() : Array
      {
         return var_1239;
      }
      
      public function get backgroundAssetName() : String
      {
         return var_1910;
      }
      
      public function get colourAssetName() : String
      {
         return var_1908;
      }
      
      public function get chosenColourAssetName() : String
      {
         return var_1909;
      }
   }
}
