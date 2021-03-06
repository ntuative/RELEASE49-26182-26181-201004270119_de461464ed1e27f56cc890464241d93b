package com.sulake.habbo.communication.messages.parser.poll
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class VoteResultMessageParser implements IMessageParser
   {
       
      
      private var var_1193:int;
      
      private var var_1096:String;
      
      private var var_737:Array;
      
      private var var_995:Array;
      
      public function VoteResultMessageParser()
      {
         super();
      }
      
      public function get votes() : Array
      {
         return var_737.slice();
      }
      
      public function flush() : Boolean
      {
         var_1096 = "";
         var_995 = [];
         var_737 = [];
         var_1193 = 0;
         return true;
      }
      
      public function get totalVotes() : int
      {
         return var_1193;
      }
      
      public function get question() : String
      {
         return var_1096;
      }
      
      public function get choices() : Array
      {
         return var_995.slice();
      }
      
      public function method_1(param1:IMessageDataWrapper) : Boolean
      {
         var_1096 = param1.readString();
         var_995 = [];
         var_737 = [];
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            param1.readInteger();
            var_995.push(param1.readString());
            var_737.push(param1.readInteger());
            _loc3_++;
         }
         var_1193 = param1.readInteger();
         return true;
      }
   }
}
