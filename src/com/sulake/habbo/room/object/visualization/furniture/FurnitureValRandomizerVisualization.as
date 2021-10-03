package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureValRandomizerVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1067:int = 31;
      
      private static const const_1065:int = 32;
      
      private static const const_504:int = 30;
      
      private static const const_777:int = 20;
      
      private static const const_503:int = 10;
       
      
      private var var_620:Boolean = false;
      
      private var var_243:Array;
      
      public function FurnitureValRandomizerVisualization()
      {
         var_243 = new Array();
         super();
         super.setAnimation(const_504);
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == 0)
         {
            var_620 = true;
            var_243 = new Array();
            var_243.push(const_1067);
            var_243.push(const_1065);
            return;
         }
         if(param1 > 0 && param1 <= const_503)
         {
            if(var_620)
            {
               var_620 = false;
               var_243 = new Array();
               if(_direction == 2)
               {
                  var_243.push(const_777 + 5 - param1);
                  var_243.push(const_503 + 5 - param1);
               }
               else
               {
                  var_243.push(const_777 + param1);
                  var_243.push(const_503 + param1);
               }
               var_243.push(const_504);
               return;
            }
            super.setAnimation(const_504);
         }
      }
      
      override protected function updateAnimation(param1:Number) : Boolean
      {
         if(super.getLastFramePlayed(11))
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
