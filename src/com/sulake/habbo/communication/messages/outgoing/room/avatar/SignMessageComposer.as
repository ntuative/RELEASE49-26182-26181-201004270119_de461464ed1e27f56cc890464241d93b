package com.sulake.habbo.communication.messages.outgoing.room.avatar
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class SignMessageComposer implements IMessageComposer
   {
       
      
      private var var_1823:int;
      
      public function SignMessageComposer(param1:int)
      {
         super();
         var_1823 = param1;
      }
      
      public function getMessageArray() : Array
      {
         return [var_1823];
      }
      
      public function dispose() : void
      {
      }
   }
}
