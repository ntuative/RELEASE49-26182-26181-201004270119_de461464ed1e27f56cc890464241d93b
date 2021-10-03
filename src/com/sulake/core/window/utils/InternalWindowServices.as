package com.sulake.core.window.utils
{
   import com.sulake.core.window.IWindowContext;
   import flash.display.DisplayObject;
   
   public class InternalWindowServices implements IInternalWindowServices
   {
       
      
      private var var_121:DisplayObject;
      
      private var var_2338:uint;
      
      private var var_912:IWindowToolTipAgentService;
      
      private var var_913:IWindowMouseScalingService;
      
      private var _windowContext:IWindowContext;
      
      private var var_915:IWindowFocusManagerService;
      
      private var var_916:IWindowMouseListenerService;
      
      private var var_914:IWindowMouseDraggingService;
      
      public function InternalWindowServices(param1:IWindowContext, param2:DisplayObject)
      {
         super();
         var_2338 = 0;
         var_121 = param2;
         _windowContext = param1;
         var_914 = new WindowMouseDragger(param2);
         var_913 = new WindowMouseScaler(param2);
         var_916 = new WindowMouseListener(param2);
         var_915 = new FocusManager(param2);
         var_912 = new WindowToolTipAgent(param2);
      }
      
      public function getMouseScalingService() : IWindowMouseScalingService
      {
         return var_913;
      }
      
      public function getFocusManagerService() : IWindowFocusManagerService
      {
         return var_915;
      }
      
      public function getToolTipAgentService() : IWindowToolTipAgentService
      {
         return var_912;
      }
      
      public function dispose() : void
      {
         if(var_914 != null)
         {
            var_914.dispose();
            var_914 = null;
         }
         if(var_913 != null)
         {
            var_913.dispose();
            var_913 = null;
         }
         if(var_916 != null)
         {
            var_916.dispose();
            var_916 = null;
         }
         if(var_915 != null)
         {
            var_915.dispose();
            var_915 = null;
         }
         if(var_912 != null)
         {
            var_912.dispose();
            var_912 = null;
         }
         _windowContext = null;
      }
      
      public function getMouseListenerService() : IWindowMouseListenerService
      {
         return var_916;
      }
      
      public function getMouseDraggingService() : IWindowMouseDraggingService
      {
         return var_914;
      }
   }
}
