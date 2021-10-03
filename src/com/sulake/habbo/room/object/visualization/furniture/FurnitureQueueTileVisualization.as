package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureQueueTileVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1080:int = 1;
      
      private static const const_1065:int = 3;
      
      private static const const_1078:int = 2;
      
      private static const const_1079:int = 15;
       
      
      private var var_871:int;
      
      private var var_243:Array;
      
      public function FurnitureQueueTileVisualization()
      {
         var_243 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == const_1078)
         {
            var_243 = new Array();
            var_243.push(const_1080);
            var_871 = const_1079;
         }
         super.setAnimation(param1);
      }
      
      override protected function updateAnimation(param1:Number) : Boolean
      {
         if(var_871 > 0)
         {
            --var_871;
         }
         if(var_871 == 0)
         {
            if(false)
            {
               super.setAnimation(var_243.shift());
            }
         }
         return super.updateAnimation(param1);
      }
   }
}
