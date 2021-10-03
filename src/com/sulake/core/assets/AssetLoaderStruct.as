package com.sulake.core.assets
{
   import com.sulake.core.assets.loaders.IAssetLoader;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.events.EventDispatcher;
   
   public class AssetLoaderStruct extends EventDispatcher implements IDisposable
   {
       
      
      private var var_657:IAssetLoader;
      
      private var var_1173:String;
      
      public function AssetLoaderStruct(param1:String, param2:IAssetLoader)
      {
         super();
         var_1173 = param1;
         var_657 = param2;
      }
      
      public function get assetLoader() : IAssetLoader
      {
         return var_657;
      }
      
      override public function dispose() : void
      {
         if(!disposed)
         {
            if(var_657 != null)
            {
               if(true)
               {
                  var_657.dispose();
                  var_657 = null;
               }
            }
            super.dispose();
         }
      }
      
      public function get assetName() : String
      {
         return var_1173;
      }
   }
}
