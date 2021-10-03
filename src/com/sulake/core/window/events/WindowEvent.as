package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowEvent extends Event
   {
      
      public static const const_268:String = "WE_CHILD_RESIZED";
      
      public static const const_1337:String = "WE_CLOSE";
      
      public static const const_1279:String = "WE_DESTROY";
      
      public static const const_118:String = "WE_CHANGE";
      
      public static const const_1362:String = "WE_RESIZE";
      
      public static const WINDOW_EVENT_MESSAGE:String = "WE_MESSAGE";
      
      public static const const_1546:String = "WE_PARENT_RESIZE";
      
      public static const const_94:String = "WE_UPDATE";
      
      public static const const_1159:String = "WE_MAXIMIZE";
      
      public static const const_415:String = "WE_DESTROYED";
      
      public static const const_879:String = "WE_UNSELECT";
      
      public static const const_1298:String = "WE_MAXIMIZED";
      
      public static const const_1471:String = "WE_UNLOCKED";
      
      public static const const_373:String = "WE_CHILD_REMOVED";
      
      public static const const_168:String = "WE_OK";
      
      public static const const_48:String = "WE_RESIZED";
      
      public static const const_1226:String = "WE_ACTIVATE";
      
      public static const const_275:String = "WE_ENABLED";
      
      public static const const_469:String = "WE_CHILD_RELOCATED";
      
      public static const const_1281:String = "WE_CREATE";
      
      public static const const_692:String = "WE_SELECT";
      
      public static const const_160:String = "";
      
      public static const const_1597:String = "WE_LOCKED";
      
      public static const const_1570:String = "WE_PARENT_RELOCATE";
      
      public static const const_1516:String = "WE_CHILD_REMOVE";
      
      public static const const_1525:String = "WE_CHILD_RELOCATE";
      
      public static const const_1579:String = "WE_LOCK";
      
      public static const const_232:String = "WE_FOCUSED";
      
      public static const const_742:String = "WE_UNSELECTED";
      
      public static const const_853:String = "WE_DEACTIVATED";
      
      public static const const_1266:String = "WE_MINIMIZED";
      
      public static const const_1609:String = "WE_ARRANGED";
      
      public static const const_1552:String = "WE_UNLOCK";
      
      public static const const_1486:String = "WE_ATTACH";
      
      public static const const_1354:String = "WE_OPEN";
      
      public static const const_1199:String = "WE_RESTORE";
      
      public static const const_1510:String = "WE_PARENT_RELOCATED";
      
      public static const const_1350:String = "WE_RELOCATE";
      
      public static const const_1619:String = "WE_CHILD_RESIZE";
      
      public static const const_1620:String = "WE_ARRANGE";
      
      public static const const_1305:String = "WE_OPENED";
      
      public static const const_1291:String = "WE_CLOSED";
      
      public static const const_1476:String = "WE_DETACHED";
      
      public static const const_1585:String = "WE_UPDATED";
      
      public static const const_1393:String = "WE_UNFOCUSED";
      
      public static const const_451:String = "WE_RELOCATED";
      
      public static const const_1206:String = "WE_DEACTIVATE";
      
      public static const const_213:String = "WE_DISABLED";
      
      public static const const_676:String = "WE_CANCEL";
      
      public static const const_727:String = "WE_ENABLE";
      
      public static const const_1332:String = "WE_ACTIVATED";
      
      public static const const_1367:String = "WE_FOCUS";
      
      public static const const_1625:String = "WE_DETACH";
      
      public static const const_1314:String = "WE_RESTORED";
      
      public static const const_1402:String = "WE_UNFOCUS";
      
      public static const const_59:String = "WE_SELECTED";
      
      public static const const_1170:String = "WE_PARENT_RESIZED";
      
      public static const const_1324:String = "WE_CREATED";
      
      public static const const_1554:String = "WE_ATTACHED";
      
      public static const const_1331:String = "WE_MINIMIZE";
      
      public static const WINDOW_EVENT_DISABLE:String = "WE_DISABLE";
       
      
      protected var _type:String = "";
      
      protected var var_1614:IWindow;
      
      protected var _window:IWindow;
      
      protected var var_1387:Boolean;
      
      public function WindowEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false, param5:Boolean = false)
      {
         _type = param1;
         _window = param2;
         var_1614 = param3;
         var_1387 = false;
         super(param1,param4,param5);
      }
      
      public function isWindowOperationPrevented() : Boolean
      {
         return var_1387;
      }
      
      public function get related() : IWindow
      {
         return var_1614;
      }
      
      public function get window() : IWindow
      {
         return _window;
      }
      
      public function set type(param1:String) : void
      {
         _type = param1;
      }
      
      override public function get type() : String
      {
         return _type;
      }
      
      override public function toString() : String
      {
         return formatToString("WindowEvent","type","bubbles","cancelable","window");
      }
      
      override public function clone() : Event
      {
         return new WindowEvent(_type,window,related,bubbles,cancelable);
      }
      
      public function preventWindowOperation() : void
      {
         if(cancelable)
         {
            var_1387 = true;
            stopImmediatePropagation();
            return;
         }
         throw new Error("Attempted to prevent window operation that is not canceable!");
      }
   }
}
