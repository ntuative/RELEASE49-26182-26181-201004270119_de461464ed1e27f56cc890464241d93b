package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowType;
   import flash.utils.Dictionary;
   
   public class TypeCodeTable extends WindowType
   {
       
      
      public function TypeCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["background"] = const_653;
         param1["bitmap"] = const_641;
         param1["border"] = const_706;
         param1["border_notify"] = const_1319;
         param1["button"] = const_463;
         param1["button_thick"] = const_690;
         param1["button_icon"] = const_1174;
         param1["button_group_left"] = const_609;
         param1["button_group_center"] = const_574;
         param1["button_group_right"] = const_683;
         param1["canvas"] = const_594;
         param1["checkbox"] = const_698;
         param1["closebutton"] = const_806;
         param1["container"] = const_331;
         param1["container_button"] = const_663;
         param1["display_object_wrapper"] = const_597;
         param1["dropmenu"] = const_380;
         param1["dropmenu_item"] = const_442;
         param1["frame"] = const_325;
         param1["frame_notify"] = const_1219;
         param1["header"] = const_575;
         param1["icon"] = const_880;
         param1["itemgrid"] = const_931;
         param1["itemgrid_horizontal"] = const_359;
         param1["itemgrid_vertical"] = const_644;
         param1["itemlist"] = const_872;
         param1["itemlist_horizontal"] = const_306;
         param1["itemlist_vertical"] = const_308;
         param1["maximizebox"] = const_1139;
         param1["menu"] = const_1335;
         param1["menu_item"] = WINDOW_TYPE_MENU_ITEM;
         param1["submenu"] = const_934;
         param1["minimizebox"] = const_1365;
         param1["notify"] = const_1303;
         param1["null"] = const_678;
         param1["password"] = const_614;
         param1["radiobutton"] = const_639;
         param1["region"] = const_371;
         param1["restorebox"] = const_1385;
         param1["scaler"] = const_732;
         param1["scaler_horizontal"] = const_1401;
         param1["scaler_vertical"] = const_1165;
         param1["scrollbar_horizontal"] = const_433;
         param1["scrollbar_vertical"] = const_615;
         param1["scrollbar_slider_button_up"] = const_815;
         param1["scrollbar_slider_button_down"] = const_1018;
         param1["scrollbar_slider_button_left"] = const_916;
         param1["scrollbar_slider_button_right"] = const_907;
         param1["scrollbar_slider_bar_horizontal"] = const_837;
         param1["scrollbar_slider_bar_vertical"] = const_1013;
         param1["scrollbar_slider_track_horizontal"] = const_877;
         param1["scrollbar_slider_track_vertical"] = const_895;
         param1["scrollable_itemlist"] = const_1351;
         param1["scrollable_itemlist_vertical"] = const_406;
         param1["scrollable_itemlist_horizontal"] = const_844;
         param1["selector"] = const_529;
         param1["selector_list"] = const_553;
         param1["submenu"] = const_934;
         param1["tab_button"] = const_587;
         param1["tab_container_button"] = const_1005;
         param1["tab_context"] = const_408;
         param1["tab_content"] = const_933;
         param1["tab_selector"] = WINDOW_TYPE_TAB_SELECTOR;
         param1["text"] = const_519;
         param1["input"] = const_628;
         param1["toolbar"] = const_1231;
         param1["tooltip"] = const_316;
         if(param2 != null)
         {
            for(_loc3_ in param1)
            {
               if(param2[param1[_loc3_]] != null)
               {
                  Logger.log("Overlapping window type code " + _loc3_ + "!");
               }
               param2[param1[_loc3_]] = _loc3_;
            }
         }
      }
   }
}
