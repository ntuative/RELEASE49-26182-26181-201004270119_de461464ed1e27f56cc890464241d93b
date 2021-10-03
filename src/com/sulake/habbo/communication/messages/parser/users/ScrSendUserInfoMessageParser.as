package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ScrSendUserInfoMessageParser implements IMessageParser
   {
      
      public static const const_1297:int = 2;
      
      public static const const_1531:int = 1;
       
      
      private var var_1628:int;
      
      private var var_1632:int;
      
      private var var_1630:Boolean;
      
      private var var_1631:int;
      
      private var var_1209:String;
      
      private var var_1629:Boolean;
      
      private var var_1633:int;
      
      public function ScrSendUserInfoMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get daysToPeriodEnd() : int
      {
         return var_1632;
      }
      
      public function get isVIP() : Boolean
      {
         return var_1630;
      }
      
      public function get periodsSubscribedAhead() : int
      {
         return var_1633;
      }
      
      public function get memberPeriods() : int
      {
         return var_1631;
      }
      
      public function get productName() : String
      {
         return var_1209;
      }
      
      public function get hasEverBeenMember() : Boolean
      {
         return var_1629;
      }
      
      public function get responseType() : int
      {
         return var_1628;
      }
      
      public function method_1(param1:IMessageDataWrapper) : Boolean
      {
         var_1209 = param1.readString();
         var_1632 = param1.readInteger();
         var_1631 = param1.readInteger();
         var_1633 = param1.readInteger();
         var_1628 = param1.readInteger();
         var_1629 = param1.readBoolean();
         var_1630 = param1.readBoolean();
         return true;
      }
   }
}
