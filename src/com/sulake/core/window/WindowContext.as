package com.sulake.core.window
{
   import com.sulake.core.localization.ICoreLocalizationManager;
   import com.sulake.core.localization.ILocalizable;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.IUpdateReceiver;
   import com.sulake.core.window.components.DesktopController;
   import com.sulake.core.window.components.IDesktopWindow;
   import com.sulake.core.window.components.IScrollableWindow;
   import com.sulake.core.window.components.IScrollbarWindow;
   import com.sulake.core.window.components.SubstituteParentController;
   import com.sulake.core.window.enum.WindowParam;
   import com.sulake.core.window.enum.WindowState;
   import com.sulake.core.window.graphics.IGraphicContextHost;
   import com.sulake.core.window.graphics.IWindowRenderer;
   import com.sulake.core.window.utils.IInternalWindowServices;
   import com.sulake.core.window.utils.IMouseCursor;
   import com.sulake.core.window.utils.IWindowParser;
   import com.sulake.core.window.utils.InternalWindowServices;
   import com.sulake.core.window.utils.KeyboardEventQueue;
   import com.sulake.core.window.utils.MouseCursorControl;
   import com.sulake.core.window.utils.MouseEventQueue;
   import com.sulake.core.window.utils.WindowParser;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class WindowContext implements IWindowContext, IDisposable, IUpdateReceiver
   {
      
      public static var var_947:MouseEventQueue;
      
      public static var var_1611:IMouseCursor;
      
      public static const const_1469:int = 2;
      
      private static var var_1064:Factory;
      
      private static var var_137:IWindowRenderer;
      
      public static var var_1382:KeyboardEventQueue;
      
      public static const const_1539:int = 1;
      
      public static const ERROR_DURING_EVENT_HANDLING:int = 5;
      
      public static const const_1503:int = 0;
      
      public static const const_1567:int = 3;
      
      public static const const_1253:int = 4;
       
      
      protected var var_2295:IWindowFactory;
      
      private var _disposed:Boolean = false;
      
      private var var_729:WindowController;
      
      private var var_718:Date;
      
      protected var var_2294:IWindowParser;
      
      protected var var_954:Error;
      
      protected var var_2296:IInternalWindowServices;
      
      protected var var_96:WindowController;
      
      protected var var_1395:int = -1;
      
      protected var var_89:IDesktopWindow;
      
      private var var_1545:Boolean = false;
      
      protected var var_2374:Boolean = true;
      
      private var var_186:Boolean = false;
      
      protected var var_1115:SubstituteParentController;
      
      private var var_2328:Point;
      
      protected var var_330:DisplayObjectContainer;
      
      private var var_345:IWindowContextStateListener;
      
      private var _name:String;
      
      protected var _localization:ICoreLocalizationManager;
      
      private var var_610:Point;
      
      public function WindowContext(param1:String, param2:IWindowRenderer, param3:IWindowFactory, param4:ICoreLocalizationManager, param5:DisplayObjectContainer, param6:Rectangle, param7:IWindowContextStateListener)
      {
         var_610 = new Point();
         var_2328 = new Point();
         super();
         _name = param1;
         var_137 = param2;
         _localization = param4;
         var_330 = param5;
         var_2296 = new InternalWindowServices(this,param5);
         var_2295 = param3;
         var_2294 = new WindowParser(this);
         var_718 = new Date();
         if(var_1064 == null)
         {
            var_1064 = new Factory();
         }
         if(var_947 == null)
         {
            var_947 = new MouseEventQueue(param5);
         }
         if(var_1382 == null)
         {
            var_1382 = new KeyboardEventQueue(param5);
         }
         if(param6 == null)
         {
            param6 = new Rectangle(0,0,800,600);
         }
         var_89 = new DesktopController("_CONTEXT_DESKTOP_" + _name,this,param6);
         var_330.addChild(var_89.getDisplayObject());
         var_330.doubleClickEnabled = true;
         var_330.addEventListener(Event.RESIZE,stageResizedHandler);
         var_96 = WindowController(var_89);
         var_1115 = new SubstituteParentController(this);
         var_345 = param7;
      }
      
      public function destroy(param1:IWindow) : Boolean
      {
         if(param1 == var_89)
         {
            var_89 = null;
         }
         if(param1.state != WindowState.const_388)
         {
            param1.destroy();
         }
         return true;
      }
      
      public function create(param1:String, param2:String, param3:uint, param4:uint, param5:uint, param6:Rectangle, param7:Function, param8:IWindow, param9:uint, param10:Array = null, param11:Array = null) : IWindow
      {
         var _loc12_:Class = var_1064.getWindowClassByType(param3);
         if(_loc12_ == null)
         {
            handleError(WindowContext.const_1253,new Error("Failed to solve implementation for window \"" + param1 + "\"!"));
            return null;
         }
         if(param8 == null)
         {
            if(param5 & 0)
            {
               param8 = var_1115;
            }
         }
         var _loc13_:IWindow = new _loc12_(param1,param3,param4,param5,this,param6,param8 != null ? param8 : var_89,param7,param10,param11,param9);
         if(param2 && param2.length)
         {
            _loc13_.caption = param2;
         }
         return _loc13_;
      }
      
      public function getDesktopWindow() : IDesktopWindow
      {
         return var_89;
      }
      
      public function render(param1:uint) : void
      {
         var_1545 = true;
         var_137.update(param1);
         var_1545 = false;
      }
      
      public function dispose() : void
      {
         _disposed = true;
         var_330.removeEventListener(Event.RESIZE,stageResizedHandler);
         var_330.removeChild(IGraphicContextHost(var_89).getGraphicContext(true) as DisplayObject);
         var_89.destroy();
         var_89 = null;
         var_1115.destroy();
         var_1115 = null;
         var_1064 = null;
         var_137 = null;
         var_96 = null;
         var_718 = null;
         var_345 = null;
      }
      
      private function stageResizedHandler(param1:Event) : void
      {
         if(var_89 != null && true)
         {
            if(var_330 is Stage)
            {
               var_89.width = Stage(var_330).stageWidth;
               var_89.height = Stage(var_330).stageHeight;
            }
            else
            {
               var_89.width = var_330.width;
               var_89.height = var_330.height;
            }
         }
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function registerLocalizationListener(param1:String, param2:IWindow) : void
      {
         _localization.registerListener(param1,param2 as ILocalizable);
      }
      
      public function invalidate(param1:IWindow, param2:Rectangle, param3:uint) : Boolean
      {
         var_137.addToRenderQueue(WindowController(param1),param2,param3);
         return true;
      }
      
      public function getWindowParser() : IWindowParser
      {
         return var_2294;
      }
      
      public function removeLocalizationListener(param1:String, param2:IWindow) : void
      {
         _localization.removeListener(param1,param2 as ILocalizable);
      }
      
      public function getWindowFactory() : IWindowFactory
      {
         return var_2295;
      }
      
      public function update(param1:uint) : void
      {
         var _loc2_:* = null;
         var _loc3_:int = 0;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var_186 = true;
         if(var_954)
         {
            throw var_954;
         }
         var _loc6_:Point = new Point();
         var _loc7_:MouseEventQueue = WindowContext.var_947;
         _loc7_.begin();
         var_610.x = -1;
         var_610.y = -1;
         while(true)
         {
            _loc2_ = _loc7_.next() as MouseEvent;
            if(_loc2_ == null)
            {
               break;
            }
            if(_loc2_.stageX != var_610.x || _loc2_.stageY != var_610.y)
            {
               var_610.x = _loc2_.stageX;
               var_610.y = _loc2_.stageY;
               _loc5_ = new Array();
               var_89.groupChildrenUnderPoint(var_610,_loc5_);
            }
            _loc3_ = _loc5_ != null ? int(_loc5_.length) : 0;
            if(_loc3_ == 1)
            {
               if(_loc2_.type == MouseEvent.MOUSE_MOVE)
               {
                  if(var_96 != var_89 && true)
                  {
                     var_96.getGlobalPosition(_loc6_);
                     var_96.update(var_96,new MouseEvent(MouseEvent.MOUSE_OUT,false,false,_loc2_.stageX - _loc6_.x,_loc2_.stageY - _loc6_.y,null,_loc2_.altKey,_loc2_.ctrlKey,_loc2_.shiftKey,_loc2_.buttonDown,_loc2_.delta));
                     var_96 = WindowController(var_89);
                  }
               }
            }
            while(--_loc3_ > -1)
            {
               _loc4_ = passMouseEvent(WindowController(_loc5_[_loc3_]),_loc2_);
               if(_loc4_ != null && _loc4_.visible)
               {
                  if(_loc2_.type == MouseEvent.MOUSE_MOVE)
                  {
                     if(_loc4_ != var_96)
                     {
                        if(true)
                        {
                           var_96.getGlobalPosition(_loc6_);
                           var_96.update(var_96,new MouseEvent(MouseEvent.MOUSE_OUT,false,false,_loc2_.stageX - _loc6_.x,_loc2_.stageY - _loc6_.y,null,_loc2_.altKey,_loc2_.ctrlKey,_loc2_.shiftKey,_loc2_.buttonDown,_loc2_.delta));
                        }
                        if(!_loc4_.disposed)
                        {
                           _loc4_.getGlobalPosition(_loc6_);
                           _loc4_.update(_loc4_,new MouseEvent(MouseEvent.MOUSE_OVER,false,false,_loc2_.stageX - _loc6_.x,_loc2_.stageY - _loc6_.y,null,_loc2_.altKey,_loc2_.ctrlKey,_loc2_.shiftKey,_loc2_.buttonDown,_loc2_.delta));
                        }
                        if(!_loc4_.disposed)
                        {
                           var_96 = _loc4_;
                        }
                     }
                  }
                  else if(_loc2_.type == MouseEvent.MOUSE_UP || _loc2_.type == MouseEvent.CLICK)
                  {
                     if(var_96 && true)
                     {
                        if(var_345 != null)
                        {
                           var_345.mouseEventReceived(_loc2_.type,var_96);
                        }
                     }
                  }
                  if(_loc2_.altKey)
                  {
                     if(var_96)
                     {
                        Logger.log("HOVER: undefined");
                     }
                  }
                  if(_loc4_ != var_89)
                  {
                     _loc2_.stopPropagation();
                     _loc7_.remove();
                  }
                  break;
               }
            }
         }
         _loc7_.end();
         var_186 = false;
      }
      
      public function handleError(param1:int, param2:Error) : void
      {
         var_954 = param2;
         var_1395 = param1;
         if(var_2374)
         {
            throw param2;
         }
      }
      
      public function getLastError() : Error
      {
         return var_954;
      }
      
      public function getMouseCursor() : IMouseCursor
      {
         if(var_1611 == null)
         {
            var_1611 = new MouseCursorControl(var_330);
         }
         return var_1611;
      }
      
      public function flushError() : void
      {
         var_954 = null;
         var_1395 = -1;
      }
      
      public function getLastErrorCode() : int
      {
         return var_1395;
      }
      
      private function passMouseEvent(param1:WindowController, param2:MouseEvent) : WindowController
      {
         if(param1.disposed)
         {
            return null;
         }
         if(!param1.testParamFlag(WindowParam.const_49))
         {
            return null;
         }
         if(param1.testStateFlag(WindowState.const_73))
         {
            return null;
         }
         var _loc3_:Point = new Point(param2.stageX,param2.stageY);
         param1.convertPointFromGlobalToLocalSpace(_loc3_);
         var _loc4_:BitmapData = var_137.getDrawBufferForRenderable(param1);
         if(!param1.validateLocalPointIntersection(_loc3_,_loc4_))
         {
            return null;
         }
         if(param1.testParamFlag(WindowParam.const_482))
         {
            if(param1.parent != null)
            {
               return passMouseEvent(WindowController(param1.parent),param2);
            }
         }
         var _loc5_:Boolean = true;
         switch(param2.type)
         {
            case MouseEvent.MOUSE_DOWN:
               var_729 = param1;
               break;
            case MouseEvent.CLICK:
               if(var_729 != param1)
               {
                  _loc5_ = false;
               }
               else
               {
                  var_729 = null;
               }
               break;
            case MouseEvent.DOUBLE_CLICK:
               if(var_729 != param1)
               {
                  _loc5_ = false;
               }
               else
               {
                  var_729 = null;
               }
               break;
            case MouseEvent.MOUSE_WHEEL:
               if(!(param1 is IScrollableWindow) && !(param1 is IScrollbarWindow))
               {
                  return null;
               }
               break;
         }
         if(_loc5_)
         {
            if(!param1.update(param1,param2))
            {
               if(param1.parent)
               {
                  return passMouseEvent(WindowController(param1.parent),param2);
               }
            }
         }
         return param1;
      }
      
      public function findWindowByName(param1:String) : IWindow
      {
         return var_89.findChildByName(param1);
      }
      
      public function getWindowServices() : IInternalWindowServices
      {
         return var_2296;
      }
   }
}
