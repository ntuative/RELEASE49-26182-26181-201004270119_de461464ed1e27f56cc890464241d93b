package com.sulake.habbo.tracking
{
   import com.sulake.core.communication.connection.IConnection;
   import com.sulake.core.utils.debug.GarbageMonitor;
   import com.sulake.habbo.communication.messages.outgoing.tracking.PerformanceLogMessageComposer;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import flash.external.ExternalInterface;
   import flash.system.Capabilities;
   import flash.system.System;
   import flash.utils.getTimer;
   
   public class PerformanceTracker
   {
       
      
      private var var_1565:GarbageMonitor = null;
      
      private var var_1317:int = 0;
      
      private var var_1330:Boolean = false;
      
      private var var_2129:String = "";
      
      private var var_1566:String = "";
      
      private var var_374:Number = 0;
      
      private var var_1319:int = 10;
      
      private var var_2335:Array;
      
      private var var_647:int = 0;
      
      private var var_1320:int = 60;
      
      private var var_1081:int = 0;
      
      private var var_1082:int = 0;
      
      private var var_2165:String = "";
      
      private var var_2131:Number = 0;
      
      private var var_1318:int = 1000;
      
      private var var_2130:Boolean = true;
      
      private var var_2132:Number = 0.15;
      
      private var var_150:IHabboConfigurationManager = null;
      
      private var var_2133:String = "";
      
      private var var_1316:int = 0;
      
      private var _connection:IConnection = null;
      
      public function PerformanceTracker()
      {
         var_2335 = [];
         super();
         var_1566 = Capabilities.version;
         var_2129 = Capabilities.os;
         var_1330 = Capabilities.isDebugger;
         var_2133 = !true ? ExternalInterface.call("window.navigator.userAgent.toString") : "unknown";
         var_1565 = new GarbageMonitor();
         updateGarbageMonitor();
         var_1317 = getTimer();
      }
      
      private function updateGarbageMonitor() : Object
      {
         var _loc2_:* = null;
         var _loc1_:Array = var_1565.list;
         if(_loc1_ == null || _loc1_.length == 0)
         {
            _loc2_ = new GarbageTester("tester");
            var_1565.insert(_loc2_,"tester");
            return _loc2_;
         }
         return null;
      }
      
      public function dispose() : void
      {
      }
      
      public function get averageUpdateInterval() : int
      {
         return var_374;
      }
      
      private function differenceInPercents(param1:Number, param2:Number) : Number
      {
         if(param1 == param2)
         {
            return 0;
         }
         var _loc3_:Number = param1;
         var _loc4_:Number = param2;
         if(param2 > param1)
         {
            _loc3_ = param2;
            _loc4_ = param1;
         }
         return 100 * (1 - _loc4_ / _loc3_);
      }
      
      public function set reportInterval(param1:int) : void
      {
         var_1320 = param1;
      }
      
      public function set connection(param1:IConnection) : void
      {
         _connection = param1;
      }
      
      public function get flashVersion() : String
      {
         return var_1566;
      }
      
      public function update(param1:uint) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Boolean = false;
         var _loc6_:Number = NaN;
         var _loc2_:Object = updateGarbageMonitor();
         if(_loc2_ != null)
         {
            ++var_1082;
            Logger.log("Garbage collection");
         }
         var _loc3_:Boolean = false;
         if(param1 > var_1318)
         {
            ++var_1081;
            _loc3_ = true;
         }
         else
         {
            ++var_647;
            if(var_647 <= 1)
            {
               var_374 = param1;
            }
            else
            {
               _loc4_ = Number(var_647);
               var_374 = var_374 * (_loc4_ - 1) / _loc4_ + Number(param1) / _loc4_;
            }
         }
         if(getTimer() - var_1317 > var_1320 * 1000 && var_1316 < var_1319)
         {
            Logger.log("*** Performance tracker: average frame rate " + 1000 / var_374);
            _loc5_ = true;
            if(var_2130 && var_1316 > 0)
            {
               _loc6_ = differenceInPercents(var_2131,var_374);
               if(_loc6_ < var_2132)
               {
                  _loc5_ = false;
               }
            }
            var_1317 = getTimer();
            if(_loc5_ || _loc3_)
            {
               var_2131 = var_374;
               if(sendReport())
               {
                  ++var_1316;
               }
            }
         }
      }
      
      public function set reportLimit(param1:int) : void
      {
         var_1319 = param1;
      }
      
      public function set slowUpdateLimit(param1:int) : void
      {
         var_1318 = param1;
      }
      
      private function sendReport() : Boolean
      {
         var _loc1_:* = null;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(_connection != null)
         {
            _loc1_ = null;
            _loc2_ = getTimer() / 1000;
            _loc3_ = -1;
            _loc4_ = 0;
            _loc1_ = new PerformanceLogMessageComposer(_loc2_,var_2133,var_1566,var_2129,var_2165,var_1330,_loc4_,_loc3_,var_1082,var_374,var_1081);
            _connection.send(_loc1_);
            var_1082 = 0;
            var_374 = 0;
            var_647 = 0;
            var_1081 = 0;
            return true;
         }
         return false;
      }
      
      public function set configuration(param1:IHabboConfigurationManager) : void
      {
         var_150 = param1;
         var_1320 = int(var_150.getKey("performancetest.interval","60"));
         var_1318 = int(var_150.getKey("performancetest.slowupdatelimit","1000"));
         var_1319 = int(var_150.getKey("performancetest.reportlimit","10"));
         var_2132 = Number(var_150.getKey("performancetest.distribution.deviancelimit.percent","10"));
         var_2130 = Boolean(int(var_150.getKey("performancetest.distribution.enabled","1")));
      }
   }
}
