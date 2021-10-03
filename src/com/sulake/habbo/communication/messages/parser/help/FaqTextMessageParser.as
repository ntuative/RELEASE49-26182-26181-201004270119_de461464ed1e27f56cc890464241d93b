package com.sulake.habbo.communication.messages.parser.help
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class FaqTextMessageParser implements IMessageParser
   {
       
      
      private var var_1256:int;
      
      private var var_1255:String;
      
      public function FaqTextMessageParser()
      {
         super();
      }
      
      public function get questionId() : int
      {
         return var_1256;
      }
      
      public function method_1(param1:IMessageDataWrapper) : Boolean
      {
         var_1256 = param1.readInteger();
         var_1255 = param1.readString();
         return true;
      }
      
      public function get answerText() : String
      {
         return var_1255;
      }
      
      public function flush() : Boolean
      {
         var_1256 = -1;
         var_1255 = null;
         return true;
      }
   }
}
