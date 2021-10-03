package com.sulake.habbo.communication.messages.parser.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PublicSpaceCastLibsMessageParser implements IMessageParser
   {
       
      
      private var var_1963:int;
      
      private var var_1960:String;
      
      private var var_1280:int;
      
      public function PublicSpaceCastLibsMessageParser()
      {
         super();
      }
      
      public function get unitPort() : int
      {
         return var_1963;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get castLibs() : String
      {
         return var_1960;
      }
      
      public function method_1(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1280 = param1.readInteger();
         this.var_1960 = param1.readString();
         this.var_1963 = param1.readInteger();
         return true;
      }
      
      public function get nodeId() : int
      {
         return var_1280;
      }
   }
}
