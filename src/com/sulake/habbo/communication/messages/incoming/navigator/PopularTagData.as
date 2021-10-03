package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class PopularTagData
   {
       
      
      private var var_1652:int;
      
      private var var_2115:String;
      
      public function PopularTagData(param1:IMessageDataWrapper)
      {
         super();
         var_2115 = param1.readString();
         var_1652 = param1.readInteger();
      }
      
      public function get tagName() : String
      {
         return var_2115;
      }
      
      public function get userCount() : int
      {
         return var_1652;
      }
   }
}
