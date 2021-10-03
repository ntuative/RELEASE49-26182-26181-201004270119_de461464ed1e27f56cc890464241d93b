package com.sulake.habbo.avatar.cache
{
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.avatar.actions.IActiveActionData;
   import flash.utils.getTimer;
   
   public class AvatarImageBodyPartCache
   {
       
      
      private var var_126:Map;
      
      private var var_2099:int;
      
      private var var_731:IActiveActionData;
      
      public function AvatarImageBodyPartCache()
      {
         super();
         var_126 = new Map();
      }
      
      private function debugInfo(param1:String) : void
      {
      }
      
      public function getDirection() : int
      {
         return var_2099;
      }
      
      public function getAction() : IActiveActionData
      {
         return var_731;
      }
      
      public function updateActionCache(param1:IActiveActionData, param2:AvatarImageActionCache) : void
      {
         var_126.add(param1.id,param2);
      }
      
      public function getActionCache(param1:IActiveActionData = null) : AvatarImageActionCache
      {
         if(param1 == null)
         {
            param1 = var_731;
         }
         return var_126.getValue(param1.id) as AvatarImageActionCache;
      }
      
      public function setAction(param1:IActiveActionData) : void
      {
         if(var_731 == null)
         {
            var_731 = param1;
         }
         var _loc2_:AvatarImageActionCache = getActionCache(var_731);
         if(_loc2_ != null)
         {
            _loc2_.setLastAccessTime();
         }
         var_731 = param1;
      }
      
      public function setDirection(param1:int) : void
      {
         var_2099 = param1;
      }
      
      public function disposeActions(param1:int) : void
      {
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:int = 0;
         if(var_126 == null)
         {
            return;
         }
         var _loc2_:int = getTimer();
         var _loc3_:Array = var_126.getKeys();
         for each(_loc4_ in _loc3_)
         {
            _loc5_ = var_126.getValue(_loc4_) as AvatarImageActionCache;
            if(_loc5_ != null)
            {
               _loc6_ = _loc5_.getLastAccessTime();
               if(_loc2_ - _loc6_ >= param1)
               {
                  debugInfo("[Disposing inactive: " + _loc4_ + "]");
                  _loc5_.dispose();
                  var_126.remove(_loc4_);
               }
            }
         }
      }
      
      public function dispose() : void
      {
         if(var_126 == null)
         {
            return;
         }
         Logger.log("[dispose]");
         var_126.dispose();
      }
   }
}
