package com.sulake.core.window.utils
{
   import com.sulake.core.utils.Map;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.getQualifiedClassName;
   
   public class PropertyStruct
   {
      
      public static const const_703:String = "Rectangle";
      
      public static const const_63:String = "Boolean";
      
      public static const const_737:String = "Number";
      
      public static const const_67:String = "int";
      
      public static const STRING:String = "String";
      
      public static const const_622:String = "Point";
      
      public static const const_835:String = "Array";
      
      public static const const_849:String = "uint";
      
      public static const const_366:String = "hex";
      
      public static const const_901:String = "Map";
       
      
      private var var_612:String;
      
      private var var_182:Object;
      
      private var var_2334:Boolean;
      
      private var _type:String;
      
      private var var_2113:Boolean;
      
      public function PropertyStruct(param1:String, param2:Object, param3:String, param4:Boolean)
      {
         super();
         var_612 = param1;
         var_182 = param2;
         _type = param3;
         var_2113 = param4;
         var_2334 = param3 == const_901 || param3 == const_835 || param3 == const_622 || param3 == const_703;
      }
      
      public function get type() : String
      {
         return _type;
      }
      
      public function toString() : String
      {
         switch(_type)
         {
            case const_366:
               return "0x" + uint(var_182).toString(16);
            case const_63:
               return Boolean(var_182) == true ? "true" : "false";
            case const_622:
               return "Point(" + Point(var_182).x + ", " + Point(var_182).y + ")";
            case const_703:
               return "Rectangle(" + Rectangle(var_182).x + ", " + Rectangle(var_182).y + ", " + Rectangle(var_182).width + ", " + Rectangle(var_182).height + ")";
            default:
               return String(value);
         }
      }
      
      public function toXMLString() : String
      {
         var _loc1_:* = null;
         var _loc2_:int = 0;
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         switch(_type)
         {
            case const_901:
               _loc3_ = var_182 as Map;
               _loc1_ = "<var key=\"" + var_612 + "\">\r<value>\r<" + _type + ">\r";
               _loc2_ = 0;
               while(_loc2_ < _loc3_.length)
               {
                  _loc1_ += "<var key=\"" + _loc3_.getKey(_loc2_) + "\" value=\"" + _loc3_.getWithIndex(_loc2_) + "\" type=\"" + getQualifiedClassName(_loc3_.getWithIndex(_loc2_)) + "\" />\r";
                  _loc2_++;
               }
               _loc1_ += "</" + _type + ">\r</value>\r</var>";
               break;
            case const_835:
               _loc4_ = var_182 as Array;
               _loc1_ = "<var key=\"" + var_612 + "\">\r<value>\r<" + _type + ">\r";
               _loc2_ = 0;
               while(_loc2_ < _loc4_.length)
               {
                  _loc1_ += "<var key=\"" + String(_loc2_) + "\" value=\"" + _loc4_[_loc2_] + "\" type=\"" + getQualifiedClassName(_loc4_[_loc2_]) + "\" />\r";
                  _loc2_++;
               }
               _loc1_ += "</" + _type + ">\r</value>\r</var>";
               break;
            case const_622:
               _loc5_ = var_182 as Point;
               _loc1_ = "<var key=\"" + var_612 + "\">\r<value>\r<" + _type + ">\r";
               _loc1_ += "<var key=\"x\" value=\"" + _loc5_.x + "\" type=\"" + const_67 + "\" />\r";
               _loc1_ += "<var key=\"y\" value=\"" + _loc5_.y + "\" type=\"" + const_67 + "\" />\r";
               _loc1_ += "</" + _type + ">\r</value>\r</var>";
               break;
            case const_703:
               _loc6_ = var_182 as Rectangle;
               _loc1_ = "<var key=\"" + var_612 + "\">\r<value>\r<" + _type + ">\r";
               _loc1_ += "<var key=\"x\" value=\"" + _loc6_.x + "\" type=\"" + const_67 + "\" />\r";
               _loc1_ += "<var key=\"y\" value=\"" + _loc6_.y + "\" type=\"" + const_67 + "\" />\r";
               _loc1_ += "<var key=\"width\" value=\"" + _loc6_.width + "\" type=\"" + const_67 + "\" />\r";
               _loc1_ += "<var key=\"height\" value=\"" + _loc6_.height + "\" type=\"" + const_67 + "\" />\r";
               _loc1_ += "</" + _type + ">\r</value>\r</var>";
               break;
            case const_366:
               _loc1_ = "<var key=\"" + var_612 + "\" value=\"" + "0x" + uint(var_182).toString(16) + "\" type=\"" + _type + "\" />";
               break;
            default:
               _loc1_ = "<var key=\"" + var_612 + "\" value=\"" + var_182 + "\" type=\"" + _type + "\" />";
         }
         return _loc1_;
      }
      
      public function get value() : Object
      {
         return var_182;
      }
      
      public function get valid() : Boolean
      {
         return var_2113;
      }
      
      public function get key() : String
      {
         return var_612;
      }
   }
}
