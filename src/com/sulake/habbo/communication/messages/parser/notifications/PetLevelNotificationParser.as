package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetLevelNotificationParser implements IMessageParser
   {
       
      
      private var var_306:String;
      
      private var var_1658:int;
      
      private var var_2182:String;
      
      private var var_1030:int;
      
      private var var_1325:int;
      
      public function PetLevelNotificationParser()
      {
         super();
      }
      
      public function get petId() : int
      {
         return var_1325;
      }
      
      public function method_1(param1:IMessageDataWrapper) : Boolean
      {
         var_1325 = param1.readInteger();
         var_2182 = param1.readString();
         var_1658 = param1.readInteger();
         var_306 = param1.readString();
         var_1030 = param1.readInteger();
         return true;
      }
      
      public function get petName() : String
      {
         return var_2182;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get figure() : String
      {
         return var_306;
      }
      
      public function get petType() : int
      {
         return var_1030;
      }
      
      public function get level() : int
      {
         return var_1658;
      }
   }
}
