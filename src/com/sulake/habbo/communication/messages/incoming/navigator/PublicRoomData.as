package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class PublicRoomData implements IDisposable
   {
       
      
      private var var_1963:int;
      
      private var var_1960:String;
      
      private var var_1964:int;
      
      private var _disposed:Boolean;
      
      private var var_1962:int;
      
      private var var_1961:String;
      
      private var var_1280:int;
      
      public function PublicRoomData(param1:IMessageDataWrapper)
      {
         super();
         var_1961 = param1.readString();
         var_1963 = param1.readInteger();
         var_1964 = param1.readInteger();
         var_1960 = param1.readString();
         var_1962 = param1.readInteger();
         var_1280 = param1.readInteger();
      }
      
      public function get maxUsers() : int
      {
         return var_1962;
      }
      
      public function get worldId() : int
      {
         return var_1964;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
      }
      
      public function get unitPropertySet() : String
      {
         return var_1961;
      }
      
      public function get unitPort() : int
      {
         return var_1963;
      }
      
      public function get castLibs() : String
      {
         return var_1960;
      }
      
      public function get nodeId() : int
      {
         return var_1280;
      }
   }
}
