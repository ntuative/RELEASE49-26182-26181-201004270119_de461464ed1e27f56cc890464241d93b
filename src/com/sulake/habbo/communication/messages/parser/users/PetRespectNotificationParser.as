package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.parser.inventory.pets.PetData;
   
   public class PetRespectNotificationParser implements IMessageParser
   {
       
      
      private var var_1681:int;
      
      private var var_1147:PetData;
      
      private var var_1682:int;
      
      public function PetRespectNotificationParser()
      {
         super();
      }
      
      public function get respect() : int
      {
         return var_1681;
      }
      
      public function get petData() : PetData
      {
         return var_1147;
      }
      
      public function flush() : Boolean
      {
         var_1147 = null;
         return true;
      }
      
      public function get petOwnerId() : int
      {
         return var_1682;
      }
      
      public function method_1(param1:IMessageDataWrapper) : Boolean
      {
         var_1681 = param1.readInteger();
         var_1682 = param1.readInteger();
         var_1147 = new PetData(param1);
         return true;
      }
   }
}
