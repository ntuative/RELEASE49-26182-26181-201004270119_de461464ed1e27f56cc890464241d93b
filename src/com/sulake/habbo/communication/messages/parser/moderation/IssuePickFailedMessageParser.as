package com.sulake.habbo.communication.messages.parser.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class IssuePickFailedMessageParser implements IMessageParser
   {
       
      
      private var var_1971:String;
      
      private var var_1970:int;
      
      private var var_1969:int;
      
      public function IssuePickFailedMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function method_1(param1:IMessageDataWrapper) : Boolean
      {
         var_1969 = param1.readInteger();
         var_1970 = param1.readInteger();
         var_1971 = param1.readString();
         return true;
      }
      
      public function get issueId() : int
      {
         return var_1969;
      }
      
      public function get pickerUserId() : int
      {
         return var_1970;
      }
      
      public function get pickerUserName() : String
      {
         return var_1971;
      }
   }
}
