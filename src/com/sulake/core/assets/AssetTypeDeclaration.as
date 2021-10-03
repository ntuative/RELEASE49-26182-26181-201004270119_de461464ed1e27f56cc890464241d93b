package com.sulake.core.assets
{
   public class AssetTypeDeclaration
   {
       
      
      private var var_1729:Class;
      
      private var var_1730:Class;
      
      private var var_1728:String;
      
      private var var_1164:Array;
      
      public function AssetTypeDeclaration(param1:String, param2:Class, param3:Class, ... rest)
      {
         super();
         var_1728 = param1;
         var_1730 = param2;
         var_1729 = param3;
         if(rest == null)
         {
            var_1164 = new Array();
         }
         else
         {
            var_1164 = rest;
         }
      }
      
      public function get loaderClass() : Class
      {
         return var_1729;
      }
      
      public function get assetClass() : Class
      {
         return var_1730;
      }
      
      public function get mimeType() : String
      {
         return var_1728;
      }
      
      public function get fileTypes() : Array
      {
         return var_1164;
      }
   }
}
