package com.sulake.habbo.communication.messages.outgoing.handshake
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class VersionCheckMessageComposer implements IMessageComposer
   {
       
      
      private var var_1945:String;
      
      private var var_1369:String;
      
      private var var_1946:int;
      
      public function VersionCheckMessageComposer(param1:int, param2:String, param3:String)
      {
         super();
         var_1946 = param1;
         var_1369 = param2;
         var_1945 = param3;
      }
      
      public function getMessageArray() : Array
      {
         return [var_1946,var_1369,var_1945];
      }
      
      public function dispose() : void
      {
      }
   }
}
