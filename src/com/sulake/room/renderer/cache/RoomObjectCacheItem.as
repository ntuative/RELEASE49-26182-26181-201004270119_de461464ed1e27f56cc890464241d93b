package com.sulake.room.renderer.cache
{
   public class RoomObjectCacheItem
   {
       
      
      private var var_622:RoomObjectLocationCacheItem = null;
      
      private var var_171:RoomObjectSortableSpriteCacheItem = null;
      
      public function RoomObjectCacheItem(param1:String)
      {
         super();
         var_622 = new RoomObjectLocationCacheItem(param1);
         var_171 = new RoomObjectSortableSpriteCacheItem();
      }
      
      public function get location() : RoomObjectLocationCacheItem
      {
         return var_622;
      }
      
      public function dispose() : void
      {
         if(var_622 != null)
         {
            var_622.dispose();
            var_622 = null;
         }
         if(var_171 != null)
         {
            var_171.dispose();
            var_171 = null;
         }
      }
      
      public function get sprites() : RoomObjectSortableSpriteCacheItem
      {
         return var_171;
      }
   }
}
