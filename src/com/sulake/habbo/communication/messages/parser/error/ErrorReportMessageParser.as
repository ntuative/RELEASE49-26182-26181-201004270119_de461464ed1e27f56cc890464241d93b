package com.sulake.habbo.communication.messages.parser.error
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ErrorReportMessageParser implements IMessageParser
   {
       
      
      private var var_1265:int;
      
      private var var_1127:int;
      
      private var var_1266:String;
      
      public function ErrorReportMessageParser()
      {
         super();
      }
      
      public function get messageId() : int
      {
         return var_1265;
      }
      
      public function flush() : Boolean
      {
         var_1127 = 0;
         var_1265 = 0;
         var_1266 = null;
         return true;
      }
      
      public function get errorCode() : int
      {
         return var_1127;
      }
      
      public function method_1(param1:IMessageDataWrapper) : Boolean
      {
         var_1265 = param1.readInteger();
         var_1127 = param1.readInteger();
         var_1266 = param1.readString();
         return true;
      }
      
      public function get timestamp() : String
      {
         return var_1266;
      }
   }
}
