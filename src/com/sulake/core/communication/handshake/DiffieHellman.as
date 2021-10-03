package com.sulake.core.communication.handshake
{
   import com.hurlant.math.BigInteger;
   import com.sulake.core.utils.ErrorReportStorage;
   
   public class DiffieHellman implements IKeyExchange
   {
       
      
      private var var_1283:BigInteger;
      
      private var var_611:BigInteger;
      
      private var var_1527:BigInteger;
      
      private var var_1528:BigInteger;
      
      private var var_2033:BigInteger;
      
      private var var_2032:BigInteger;
      
      public function DiffieHellman(param1:BigInteger, param2:BigInteger)
      {
         super();
         var_1283 = param1;
         var_1527 = param2;
      }
      
      public function getSharedKey(param1:uint = 16) : String
      {
         return var_2033.toRadix(param1);
      }
      
      public function generateSharedKey(param1:String, param2:uint = 16) : String
      {
         var_1528 = new BigInteger();
         var_1528.fromRadix(param1,param2);
         var_2033 = var_1528.modPow(var_611,var_1283);
         return getSharedKey(param2);
      }
      
      public function getPublicKey(param1:uint = 16) : String
      {
         return var_2032.toRadix(param1);
      }
      
      public function init(param1:String, param2:uint = 16) : Boolean
      {
         ErrorReportStorage.addDebugData("DiffieHellman","Prime: " + var_1283.toString() + ",generator: " + var_1527.toString() + ",secret: " + param1);
         var_611 = new BigInteger();
         var_611.fromRadix(param1,param2);
         var_2032 = var_1527.modPow(var_611,var_1283);
         return true;
      }
   }
}
