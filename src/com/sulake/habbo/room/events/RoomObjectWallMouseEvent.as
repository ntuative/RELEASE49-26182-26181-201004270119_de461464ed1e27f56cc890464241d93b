package com.sulake.habbo.room.events
{
   import com.sulake.room.events.RoomObjectMouseEvent;
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomObjectWallMouseEvent extends RoomObjectMouseEvent
   {
       
      
      private var _direction:Number;
      
      private var var_1473:Vector3d = null;
      
      private var var_1475:Vector3d = null;
      
      private var var_1474:Vector3d = null;
      
      private var var_84:Number;
      
      private var _y:Number;
      
      public function RoomObjectWallMouseEvent(param1:String, param2:int, param3:String, param4:IVector3d, param5:IVector3d, param6:IVector3d, param7:Number, param8:Number, param9:Number, param10:Boolean = false, param11:Boolean = false)
      {
         super(param1,param2,param3,param10,param11);
         var_1474 = new Vector3d();
         var_1474.assign(param4);
         var_1475 = new Vector3d();
         var_1475.assign(param5);
         var_1473 = new Vector3d();
         var_1473.assign(param6);
         var_84 = param7;
         _y = param8;
         _direction = param9;
      }
      
      public function get direction() : Number
      {
         return _direction;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get wallHeight() : IVector3d
      {
         return var_1473;
      }
      
      public function get x() : Number
      {
         return var_84;
      }
      
      public function get wallWidth() : IVector3d
      {
         return var_1475;
      }
      
      public function get wallLocation() : IVector3d
      {
         return var_1474;
      }
   }
}
