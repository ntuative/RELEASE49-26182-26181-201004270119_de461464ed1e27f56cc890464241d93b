package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowParam;
   import flash.utils.Dictionary;
   
   public class ParamCodeTable extends WindowParam
   {
       
      
      public function ParamCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["null"] = const_110;
         param1["bound_to_parent_rect"] = const_88;
         param1["child_window"] = const_925;
         param1["embedded_controller"] = const_342;
         param1["resize_to_accommodate_children"] = const_66;
         param1["input_event_processor"] = const_49;
         param1["internal_event_handling"] = const_562;
         param1["mouse_dragging_target"] = const_228;
         param1["mouse_dragging_trigger"] = const_297;
         param1["mouse_scaling_target"] = const_257;
         param1["mouse_scaling_trigger"] = const_467;
         param1["horizontal_mouse_scaling_trigger"] = const_216;
         param1["vertical_mouse_scaling_trigger"] = const_238;
         param1["observe_parent_input_events"] = const_833;
         param1["optimize_region_to_layout_size"] = const_441;
         param1["parent_window"] = const_964;
         param1["relative_horizontal_scale_center"] = const_178;
         param1["relative_horizontal_scale_fixed"] = const_112;
         param1["relative_horizontal_scale_move"] = const_327;
         param1["relative_horizontal_scale_strech"] = const_276;
         param1["relative_scale_center"] = const_821;
         param1["relative_scale_fixed"] = const_602;
         param1["relative_scale_move"] = const_905;
         param1["relative_scale_strech"] = const_908;
         param1["relative_vertical_scale_center"] = const_184;
         param1["relative_vertical_scale_fixed"] = const_136;
         param1["relative_vertical_scale_move"] = const_296;
         param1["relative_vertical_scale_strech"] = const_258;
         param1["on_resize_align_left"] = const_526;
         param1["on_resize_align_right"] = const_387;
         param1["on_resize_align_center"] = const_437;
         param1["on_resize_align_top"] = const_535;
         param1["on_resize_align_bottom"] = const_434;
         param1["on_resize_align_middle"] = const_374;
         param1["on_accommodate_align_left"] = const_915;
         param1["on_accommodate_align_right"] = const_476;
         param1["on_accommodate_align_center"] = const_551;
         param1["on_accommodate_align_top"] = const_875;
         param1["on_accommodate_align_bottom"] = WINDOW_PARAM_ON_ACCOMMODATE_ALIGN_BOTTOM;
         param1["on_accommodate_align_middle"] = const_515;
         param1["route_input_events_to_parent"] = const_482;
         param1["use_parent_graphic_context"] = const_35;
         param1["draggable_with_mouse"] = const_944;
         param1["scalable_with_mouse"] = const_994;
         param1["reflect_horizontal_resize_to_parent"] = const_412;
         param1["reflect_vertical_resize_to_parent"] = WINDOW_PARAM_REFLECT_VERTICAL_RESIZE_TO_PARENT;
         param1["reflect_resize_to_parent"] = const_239;
         if(param2 != null)
         {
            for(_loc3_ in param1)
            {
               if(param2[param1[_loc3_]] != null)
               {
                  if(param1[_loc3_] != 0)
                  {
                     Logger.log("Conflictiong flags in window params: \"" + _loc3_ + "\"!");
                  }
               }
               param2[param1[_loc3_]] = _loc3_;
            }
         }
      }
   }
}
