package com.sulake.habbo.communication.messages.parser.handshake
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class UserObjectMessageParser implements IMessageParser
   {
       
      
      private var _id:int;
      
      private var var_306:String;
      
      private var var_2332:String;
      
      private var var_2329:int;
      
      private var var_2331:int;
      
      private var var_596:String;
      
      private var var_1251:String;
      
      private var _name:String;
      
      private var var_509:int;
      
      private var var_864:int;
      
      private var var_2330:int;
      
      private var var_1983:int;
      
      private var var_2333:String;
      
      public function UserObjectMessageParser()
      {
         super();
      }
      
      public function get directMail() : int
      {
         return this.var_2331;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get realName() : String
      {
         return this.var_1251;
      }
      
      public function get customData() : String
      {
         return this.var_2332;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get petRespectLeft() : int
      {
         return this.var_509;
      }
      
      public function get photoFilm() : int
      {
         return this.var_2329;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get poolFigure() : String
      {
         return this.var_2333;
      }
      
      public function get figure() : String
      {
         return this.var_306;
      }
      
      public function get respectTotal() : int
      {
         return this.var_1983;
      }
      
      public function get sex() : String
      {
         return this.var_596;
      }
      
      public function method_1(param1:IMessageDataWrapper) : Boolean
      {
         this._id = int(param1.readString());
         this._name = param1.readString();
         this.var_306 = param1.readString();
         this.var_596 = param1.readString();
         this.var_2332 = param1.readString();
         this.var_1251 = param1.readString();
         this.var_2330 = param1.readInteger();
         this.var_2333 = param1.readString();
         this.var_2329 = param1.readInteger();
         this.var_2331 = param1.readInteger();
         this.var_1983 = param1.readInteger();
         this.var_864 = param1.readInteger();
         this.var_509 = param1.readInteger();
         return true;
      }
      
      public function get tickets() : int
      {
         return this.var_2330;
      }
      
      public function get respectLeft() : int
      {
         return this.var_864;
      }
   }
}
