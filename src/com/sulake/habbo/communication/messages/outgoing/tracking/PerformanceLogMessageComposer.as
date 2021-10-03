package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class PerformanceLogMessageComposer implements IMessageComposer
   {
       
      
      private var var_1081:int = 0;
      
      private var var_1330:int = 0;
      
      private var var_2129:String = "";
      
      private var var_1082:int = 0;
      
      private var var_2165:String = "";
      
      private var var_2167:int = 0;
      
      private var var_1566:String = "";
      
      private var var_2163:int = 0;
      
      private var var_2166:int = 0;
      
      private var var_2133:String = "";
      
      private var var_2164:int = 0;
      
      public function PerformanceLogMessageComposer(param1:int, param2:String, param3:String, param4:String, param5:String, param6:Boolean, param7:int, param8:int, param9:int, param10:int, param11:int)
      {
         super();
         var_2163 = param1;
         var_2133 = param2;
         var_1566 = param3;
         var_2129 = param4;
         var_2165 = param5;
         if(param6)
         {
            var_1330 = 1;
         }
         else
         {
            var_1330 = 0;
         }
         var_2167 = param7;
         var_2166 = param8;
         var_1082 = param9;
         var_2164 = param10;
         var_1081 = param11;
      }
      
      public function getMessageArray() : Array
      {
         return [var_2163,var_2133,var_1566,var_2129,var_2165,var_1330,var_2167,var_2166,var_1082,var_2164,var_1081];
      }
      
      public function dispose() : void
      {
      }
   }
}
