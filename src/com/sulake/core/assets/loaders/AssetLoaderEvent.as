package com.sulake.core.assets.loaders
{
   import flash.events.Event;
   
   public class AssetLoaderEvent extends Event
   {
      
      public static const const_868:String = "AssetLoaderEventUnload";
      
      public static const const_47:String = "AssetLoaderEventError";
      
      public static const const_946:String = "AssetLoaderEventOpen";
      
      public static const const_911:String = "AssetLoaderEventProgress";
      
      public static const const_903:String = "AssetLoaderEventStatus";
      
      public static const const_37:String = "AssetLoaderEventComplete";
       
      
      private var var_164:int;
      
      public function AssetLoaderEvent(param1:String, param2:int)
      {
         var_164 = param2;
         super(param1,false,false);
      }
      
      public function get status() : int
      {
         return var_164;
      }
      
      override public function clone() : Event
      {
         return new AssetLoaderEvent(type,var_164);
      }
   }
}
