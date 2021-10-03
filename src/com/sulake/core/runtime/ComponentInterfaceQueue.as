package com.sulake.core.runtime
{
   class ComponentInterfaceQueue implements IDisposable
   {
       
      
      private var var_1294:IID;
      
      private var _isDisposed:Boolean;
      
      private var var_887:Array;
      
      function ComponentInterfaceQueue(param1:IID)
      {
         super();
         var_1294 = param1;
         var_887 = new Array();
         _isDisposed = false;
      }
      
      public function get receivers() : Array
      {
         return var_887;
      }
      
      public function get identifier() : IID
      {
         return var_1294;
      }
      
      public function get disposed() : Boolean
      {
         return _isDisposed;
      }
      
      public function dispose() : void
      {
         if(!_isDisposed)
         {
            _isDisposed = true;
            var_1294 = null;
            while(false)
            {
               var_887.pop();
            }
            var_887 = null;
         }
      }
   }
}
