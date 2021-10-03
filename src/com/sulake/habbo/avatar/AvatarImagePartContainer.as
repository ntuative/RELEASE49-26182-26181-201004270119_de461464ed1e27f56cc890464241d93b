package com.sulake.habbo.avatar
{
   import com.sulake.habbo.avatar.actions.IActionDefinition;
   import com.sulake.habbo.avatar.structure.figure.IPartColor;
   import flash.geom.ColorTransform;
   
   public class AvatarImagePartContainer
   {
       
      
      private var _frames:Array;
      
      private var var_2252:int;
      
      private var var_2251:String;
      
      private var var_1532:IActionDefinition;
      
      private var var_2249:Boolean;
      
      private var _color:IPartColor;
      
      private var var_2250:String;
      
      private var var_2253:String;
      
      private var var_1859:Boolean;
      
      private var var_2254:ColorTransform;
      
      private var var_1825:int;
      
      public function AvatarImagePartContainer(param1:String, param2:String, param3:int, param4:IPartColor, param5:Array, param6:IActionDefinition, param7:Boolean, param8:int, param9:String = "", param10:Boolean = false, param11:Number = 1)
      {
         super();
         var_2251 = param1;
         var_2250 = param2;
         var_2252 = param3;
         _color = param4;
         _frames = param5;
         var_1532 = param6;
         var_1859 = param7;
         var_1825 = param8;
         var_2253 = param9;
         var_2249 = param10;
         var_2254 = new ColorTransform(1,1,1,param11);
      }
      
      public function get isColorable() : Boolean
      {
         return var_1859;
      }
      
      public function get partType() : String
      {
         return var_2250;
      }
      
      public function getFrameIndex(param1:int) : int
      {
         return 0;
      }
      
      public function get paletteMapId() : int
      {
         return var_1825;
      }
      
      public function get isBlendable() : Boolean
      {
         return var_2249;
      }
      
      public function get color() : IPartColor
      {
         return _color;
      }
      
      public function get partId() : int
      {
         return var_2252;
      }
      
      public function get flippedPartType() : String
      {
         return var_2253;
      }
      
      public function get bodyPartId() : String
      {
         return var_2251;
      }
      
      public function get action() : IActionDefinition
      {
         return var_1532;
      }
      
      public function get blendTransform() : ColorTransform
      {
         return var_2254;
      }
   }
}
