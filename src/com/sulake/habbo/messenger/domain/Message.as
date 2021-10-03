package com.sulake.habbo.messenger.domain
{
   public class Message
   {
      
      public static const const_675:int = 2;
      
      public static const const_859:int = 6;
      
      public static const const_647:int = 1;
      
      public static const const_611:int = 3;
      
      public static const const_852:int = 4;
      
      public static const const_731:int = 5;
       
      
      private var var_2227:String;
      
      private var var_1026:int;
      
      private var var_1907:String;
      
      private var _type:int;
      
      public function Message(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         _type = param1;
         var_1026 = param2;
         var_1907 = param3;
         var_2227 = param4;
      }
      
      public function get time() : String
      {
         return var_2227;
      }
      
      public function get senderId() : int
      {
         return var_1026;
      }
      
      public function get messageText() : String
      {
         return var_1907;
      }
      
      public function get type() : int
      {
         return _type;
      }
   }
}
