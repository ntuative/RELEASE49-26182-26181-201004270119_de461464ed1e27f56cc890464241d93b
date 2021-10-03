package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChatlineData
   {
       
      
      private var var_1459:String;
      
      private var var_2191:int;
      
      private var var_2190:int;
      
      private var var_2189:int;
      
      private var var_2188:String;
      
      public function ChatlineData(param1:IMessageDataWrapper)
      {
         super();
         var_2191 = param1.readInteger();
         var_2189 = param1.readInteger();
         var_2190 = param1.readInteger();
         var_2188 = param1.readString();
         var_1459 = param1.readString();
      }
      
      public function get msg() : String
      {
         return var_1459;
      }
      
      public function get hour() : int
      {
         return var_2191;
      }
      
      public function get minute() : int
      {
         return var_2189;
      }
      
      public function get chatterName() : String
      {
         return var_2188;
      }
      
      public function get chatterId() : int
      {
         return var_2190;
      }
   }
}
