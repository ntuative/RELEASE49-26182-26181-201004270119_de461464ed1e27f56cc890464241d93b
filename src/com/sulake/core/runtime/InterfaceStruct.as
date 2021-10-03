package com.sulake.core.runtime
{
   import flash.utils.getQualifiedClassName;
   
   final class InterfaceStruct implements IDisposable
   {
       
      
      private var var_392:uint;
      
      private var var_972:IUnknown;
      
      private var var_1152:String;
      
      private var var_973:IID;
      
      function InterfaceStruct(param1:IID, param2:IUnknown)
      {
         super();
         var_973 = param1;
         var_1152 = getQualifiedClassName(var_973);
         var_972 = param2;
         var_392 = 0;
      }
      
      public function get iid() : IID
      {
         return var_973;
      }
      
      public function get disposed() : Boolean
      {
         return var_972 == null;
      }
      
      public function get references() : uint
      {
         return var_392;
      }
      
      public function release() : uint
      {
         return references > 0 ? uint(--var_392) : uint(0);
      }
      
      public function get unknown() : IUnknown
      {
         return var_972;
      }
      
      public function get iis() : String
      {
         return var_1152;
      }
      
      public function reserve() : uint
      {
         return ++var_392;
      }
      
      public function dispose() : void
      {
         var_973 = null;
         var_1152 = null;
         var_972 = null;
         var_392 = 0;
      }
   }
}
