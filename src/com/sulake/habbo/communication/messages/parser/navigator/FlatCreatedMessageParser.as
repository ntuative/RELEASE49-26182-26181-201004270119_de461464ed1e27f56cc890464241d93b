package com.sulake.habbo.communication.messages.parser.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class FlatCreatedMessageParser implements IMessageParser
   {
       
      
      private var var_1685:String;
      
      private var var_445:int;
      
      public function FlatCreatedMessageParser()
      {
         super();
      }
      
      public function get flatName() : String
      {
         return var_1685;
      }
      
      public function method_1(param1:IMessageDataWrapper) : Boolean
      {
         this.var_445 = param1.readInteger();
         this.var_1685 = param1.readString();
         Logger.log("FLAT CREATED: " + this.var_445 + ", " + this.var_1685);
         return true;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get flatId() : int
      {
         return var_445;
      }
   }
}
