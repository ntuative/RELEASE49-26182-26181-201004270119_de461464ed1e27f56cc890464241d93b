package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowNotifyEvent extends WindowEvent
   {
      
      public static const const_1229:String = "WN_CREATED";
      
      public static const const_834:String = "WN_DISABLE";
      
      public static const const_945:String = "WN_DEACTIVATED";
      
      public static const const_883:String = "WN_OPENED";
      
      public static const const_951:String = "WN_CLOSED";
      
      public static const const_920:String = "WN_DESTROY";
      
      public static const const_1522:String = "WN_ARRANGED";
      
      public static const const_480:String = "WN_PARENT_RESIZED";
      
      public static const const_981:String = "WN_ENABLE";
      
      public static const const_971:String = "WN_RELOCATE";
      
      public static const const_824:String = "WN_FOCUS";
      
      public static const const_1024:String = "WN_PARENT_RELOCATED";
      
      public static const const_456:String = "WN_PARAM_UPDATED";
      
      public static const const_561:String = "WN_PARENT_ACTIVATED";
      
      public static const const_167:String = "WN_RESIZED";
      
      public static const const_862:String = "WN_CLOSE";
      
      public static const const_898:String = "WN_PARENT_REMOVED";
      
      public static const const_260:String = "WN_CHILD_RELOCATED";
      
      public static const const_593:String = "WN_ENABLED";
      
      public static const const_263:String = "WN_CHILD_RESIZED";
      
      public static const const_943:String = "WN_MINIMIZED";
      
      public static const const_608:String = "WN_DISABLED";
      
      public static const const_221:String = "WN_CHILD_ACTIVATED";
      
      public static const const_436:String = "WN_STATE_UPDATED";
      
      public static const const_603:String = "WN_UNSELECTED";
      
      public static const const_389:String = "WN_STYLE_UPDATED";
      
      public static const const_1517:String = "WN_UPDATE";
      
      public static const const_420:String = "WN_PARENT_ADDED";
      
      public static const const_576:String = "WN_RESIZE";
      
      public static const const_661:String = "WN_CHILD_REMOVED";
      
      public static const const_1499:String = "";
      
      public static const const_976:String = "WN_RESTORED";
      
      public static const const_311:String = "WN_SELECTED";
      
      public static const const_851:String = "WN_MINIMIZE";
      
      public static const const_1016:String = "WN_FOCUSED";
      
      public static const const_1163:String = "WN_LOCK";
      
      public static const const_329:String = "WN_CHILD_ADDED";
      
      public static const const_963:String = "WN_UNFOCUSED";
      
      public static const const_431:String = "WN_RELOCATED";
      
      public static const const_814:String = "WN_DEACTIVATE";
      
      public static const const_1277:String = "WN_CRETAE";
      
      public static const const_888:String = "WN_RESTORE";
      
      public static const const_345:String = "WN_ACTVATED";
      
      public static const const_1259:String = "WN_LOCKED";
      
      public static const const_455:String = "WN_SELECT";
      
      public static const const_1026:String = "WN_MAXIMIZE";
      
      public static const const_850:String = "WN_OPEN";
      
      public static const const_677:String = "WN_UNSELECT";
      
      public static const const_1478:String = "WN_ARRANGE";
      
      public static const const_1180:String = "WN_UNLOCKED";
      
      public static const const_1556:String = "WN_UPDATED";
      
      public static const const_935:String = "WN_ACTIVATE";
      
      public static const const_1251:String = "WN_UNLOCK";
      
      public static const const_940:String = "WN_MAXIMIZED";
      
      public static const const_881:String = "WN_DESTROYED";
      
      public static const const_975:String = "WN_UNFOCUS";
       
      
      public function WindowNotifyEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false)
      {
         super(param1,param2,param3,false,param4);
      }
      
      override public function toString() : String
      {
         return formatToString("WindowNotifyEvent","type","cancelable");
      }
      
      override public function clone() : Event
      {
         return new WindowNotifyEvent(type,_window,var_1614,cancelable);
      }
   }
}
