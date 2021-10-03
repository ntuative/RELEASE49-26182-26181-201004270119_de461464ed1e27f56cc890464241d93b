package com.sulake.habbo.communication.messages.parser.inventory.avatareffect
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class AvatarEffectActivatedMessageParser implements IMessageParser
   {
       
      
      private var var_1215:int;
      
      private var _type:int;
      
      public function AvatarEffectActivatedMessageParser()
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
         var_1215 = 0;
         return true;
      }
      
      public function method_1(param1:IMessageDataWrapper) : Boolean
      {
         _type = param1.readInteger();
         var_1215 = param1.readInteger();
         return true;
      }
      
      public function get duration() : int
      {
         return var_1215;
      }
   }
}
