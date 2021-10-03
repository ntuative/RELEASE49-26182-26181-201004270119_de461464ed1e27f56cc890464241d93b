package com.sulake.habbo.communication.messages.parser.room.session
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class CantConnectMessageParser implements IMessageParser
   {
      
      public static const const_1467:int = 2;
      
      public static const const_1185:int = 4;
      
      public static const const_1321:int = 1;
      
      public static const const_1341:int = 3;
       
      
      private var var_1074:int = 0;
      
      private var var_892:String = "";
      
      public function CantConnectMessageParser()
      {
         super();
      }
      
      public function get reason() : int
      {
         return var_1074;
      }
      
      public function method_1(param1:IMessageDataWrapper) : Boolean
      {
         var_1074 = param1.readInteger();
         if(var_1074 == 3)
         {
            var_892 = param1.readString();
         }
         else
         {
            var_892 = "";
         }
         return true;
      }
      
      public function flush() : Boolean
      {
         var_1074 = 0;
         var_892 = "";
         return true;
      }
      
      public function get parameter() : String
      {
         return var_892;
      }
   }
}
