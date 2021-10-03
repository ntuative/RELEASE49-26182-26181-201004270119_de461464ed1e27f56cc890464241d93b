package com.sulake.habbo.communication.messages.parser.inventory.avatareffect
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class AvatarEffectSelectedMessageParser implements IMessageParser
   {
       
      
      private var _type:int;
      
      public function AvatarEffectSelectedMessageParser()
      {
         super();
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function flush() : Boolean
      {
         _type = 0;
         return true;
      }
      
      public function method_1(param1:IMessageDataWrapper) : Boolean
      {
         _type = param1.readInteger();
         return true;
      }
   }
}
