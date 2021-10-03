package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FlatCategory
   {
       
      
      private var var_352:Boolean;
      
      private var var_1280:int;
      
      private var var_1542:String;
      
      public function FlatCategory(param1:IMessageDataWrapper)
      {
         super();
         var_1280 = param1.readInteger();
         var_1542 = param1.readString();
         var_352 = param1.readBoolean();
      }
      
      public function get visible() : Boolean
      {
         return var_352;
      }
      
      public function get nodeName() : String
      {
         return var_1542;
      }
      
      public function get nodeId() : int
      {
         return var_1280;
      }
   }
}
