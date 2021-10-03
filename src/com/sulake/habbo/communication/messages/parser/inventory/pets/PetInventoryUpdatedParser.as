package com.sulake.habbo.communication.messages.parser.inventory.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetInventoryUpdatedParser implements IMessageParser
   {
       
      
      public function PetInventoryUpdatedParser()
      {
         super();
      }
      
      public function method_1(param1:IMessageDataWrapper) : Boolean
      {
         return true;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
   }
}
