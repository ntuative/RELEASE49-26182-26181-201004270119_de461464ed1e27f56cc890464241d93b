package com.sulake.habbo.communication.messages.outgoing.moderator
{
   import com.sulake.core.communication.messages.IMessageComposer;
   import com.sulake.core.runtime.IDisposable;
   
   public class ModeratorActionMessageComposer implements IMessageComposer, IDisposable
   {
      
      public static const const_1377:int = 1;
      
      public static const const_1326:int = 4;
      
      public static const const_1593:int = 2;
      
      public static const const_1194:int = 1;
      
      public static const const_1257:int = 0;
      
      public static const const_1501:int = 0;
      
      public static const const_1220:int = 3;
       
      
      private var var_30:Array;
      
      public function ModeratorActionMessageComposer(param1:int, param2:int, param3:String, param4:String, param5:String, param6:int = 0)
      {
         var_30 = new Array();
         super();
         this.var_30.push(param1);
         this.var_30.push(param2);
         this.var_30.push(param3);
         this.var_30.push(param4);
         this.var_30.push(param5);
         this.var_30.push(param6);
         this.var_30.push(false);
         this.var_30.push(false);
      }
      
      public function get disposed() : Boolean
      {
         return false;
      }
      
      public function getMessageArray() : Array
      {
         return this.var_30;
      }
      
      public function dispose() : void
      {
         this.var_30 = null;
      }
   }
}
