package com.sulake.habbo.notifications
{
   import com.sulake.core.assets.IAsset;
   import com.sulake.core.assets.XmlAsset;
   import com.sulake.core.runtime.IUpdateReceiver;
   import com.sulake.core.utils.Map;
   import com.sulake.core.window.ICoreWindowManager;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.IDesktopWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.session.events.BadgeImageReadyEvent;
   import com.sulake.habbo.toolbar.IHabboToolbar;
   import com.sulake.habbo.window.IHabboWindowManager;
   import flash.display.BitmapData;
   import flash.geom.Point;
   
   public class HabboNotificationItemView implements IUpdateReceiver
   {
      
      private static const const_347:int = 0;
      
      private static const const_348:Number = 50;
      
      public static const const_555:int = 70;
      
      private static const const_748:int = 2;
      
      public static const const_483:int = 4;
      
      private static const const_749:int = 3;
      
      private static const const_407:int = 1;
       
      
      private var var_1132:Boolean = false;
      
      private var var_558:int;
      
      private var _window:IWindow;
      
      private var var_1405:int;
      
      private var var_389:Number;
      
      private var var_1782:Map;
      
      private var var_33:int;
      
      private var var_964:uint;
      
      private var var_1133:int;
      
      private var var_782:uint;
      
      private var var_388:Map;
      
      private var var_781:uint;
      
      private var var_222:HabboNotificationItem;
      
      private var var_193:IHabboToolbar;
      
      public function HabboNotificationItemView(param1:IAsset, param2:IHabboWindowManager, param3:Map, param4:Map, param5:IHabboToolbar)
      {
         super();
         var_1782 = param3;
         var_388 = param4;
         var _loc6_:XmlAsset = param1 as XmlAsset;
         if(_loc6_ == null)
         {
            return;
         }
         _window = ICoreWindowManager(param2).buildFromXML(_loc6_.content as XML,1);
         _window.tags.push("notificationview");
         _window.context.getDesktopWindow().addEventListener(WindowEvent.const_48,onRoomViewResized);
         _window.procedure = onWindowEvent;
         _window.blend = 0;
         _window.visible = false;
         var _loc7_:ITextWindow = IWindowContainer(_window).findChildByTag("notification_text") as ITextWindow;
         if(_loc7_ != null)
         {
            var_1133 = 0 - _loc7_.rectangle.bottom;
         }
         else
         {
            var_1133 = 15;
         }
         var_1405 = _window.height;
         var_558 = 4;
         var_389 = 0;
         var_33 = const_347;
         var_193 = param5;
      }
      
      private function startDisplay() : void
      {
         var_964 = 0;
         var_33 = const_748;
      }
      
      private function setNotificationText(param1:String) : void
      {
         var _loc2_:ITextWindow = IWindowContainer(_window).findChildByTag("notification_text") as ITextWindow;
         if(_loc2_ == null || param1 == null)
         {
            return;
         }
         _window.height = 0;
         _loc2_.text = param1;
         _loc2_.height = _loc2_.textHeight + var_1133;
         if(_window.height < var_1405)
         {
            _window.height = var_1405;
         }
      }
      
      private function startFadeIn() : void
      {
         var_782 = 0;
         var_33 = const_407;
         _window.visible = true;
      }
      
      private function setNotificationIcon(param1:BitmapData) : void
      {
         var _loc3_:* = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc2_:IBitmapWrapperWindow = IWindowContainer(_window).findChildByTag("notification_icon") as IBitmapWrapperWindow;
         if(_loc2_ == null)
         {
            return;
         }
         if(param1 == null)
         {
            _loc2_.bitmap = null;
            return;
         }
         if(param1.width < _loc2_.width && param1.height < _loc2_.height)
         {
            _loc3_ = new BitmapData(_loc2_.width,_loc2_.height,true,0);
            _loc5_ = (_loc2_.width - param1.width) / 2;
            _loc6_ = (_loc2_.height - param1.height) / 2;
            _loc3_.copyPixels(param1,param1.rect,new Point(_loc5_,_loc6_));
         }
         else if(param1.width < param1.height)
         {
            _loc3_ = new BitmapData(param1.height,param1.height,true,0);
            _loc4_ = (param1.height * _loc2_.width - param1.width * _loc2_.width) / 2 / _loc2_.width;
            _loc3_.copyPixels(param1,param1.rect,new Point(_loc4_,0));
         }
         else if(param1.width > param1.height)
         {
            _loc3_ = new BitmapData(param1.width,param1.width,true,0);
            _loc4_ = (param1.width * _loc2_.height - param1.height * _loc2_.height) / 2 / _loc2_.height;
            _loc3_.copyPixels(param1,param1.rect,new Point(0,_loc4_));
         }
         else
         {
            _loc3_ = new BitmapData(param1.width,param1.height);
            _loc3_.copyPixels(param1,param1.rect,new Point(0,0));
         }
         _loc2_.bitmap = _loc3_;
      }
      
      private function startFadeOut() : void
      {
         var_781 = 0;
         var_33 = const_749;
      }
      
      public function update(param1:uint) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         switch(var_33)
         {
            case const_347:
               break;
            case const_407:
               var_782 += param1;
               _loc2_ = Number(var_782) / Number(var_388["time_fade_in"]);
               if(var_782 > int(var_388["time_fade_in"]))
               {
                  startDisplay();
               }
               adjustBlend(_loc2_);
               break;
            case const_748:
               var_964 += param1;
               if(var_964 > int(var_388["time_display"]) && !var_1132)
               {
                  startFadeOut();
               }
               break;
            case const_749:
               var_781 += param1;
               _loc3_ = 1 - Number(var_781) / Number(var_388["time_fade_out"]);
               adjustBlend(_loc3_);
               if(var_781 > int(var_388["time_fade_in"]))
               {
                  startIdling();
               }
         }
      }
      
      private function startIdling() : void
      {
         var_33 = const_347;
         _window.visible = false;
      }
      
      public function reposition(param1:int = -1) : void
      {
         if(_window == null)
         {
            return;
         }
         if(var_193 == null)
         {
            return;
         }
         var _loc2_:IDesktopWindow = _window.context.getDesktopWindow();
         if(_loc2_ == null)
         {
            return;
         }
         if(param1 != -1)
         {
            var_558 = param1;
         }
         var _loc3_:int = var_193.orientation == "TOP" ? int(const_348) : 0;
         var _loc4_:int = var_193.orientation == "BOTTOM" ? int(_loc2_.height - const_348) : int(_loc2_.height);
         var _loc5_:int = var_193.orientation == "LEFT" ? int(const_348) : 0;
         var _loc6_:int = var_193.orientation == "RIGHT" ? int(_loc2_.width - const_348) : int(_loc2_.width);
         if(false)
         {
            if(false)
            {
               _window.x = _loc5_ + const_483;
            }
            else
            {
               _window.x = _loc6_ - 0 - const_483;
            }
         }
         else if(false)
         {
            _window.x = _loc5_ + const_483;
         }
         else
         {
            _window.x = _loc6_ - 0 - const_483;
         }
         if(false)
         {
            if(false)
            {
               _window.y = _loc3_ + var_558;
            }
            else
            {
               _window.y = _loc4_ - 0 - var_558;
            }
         }
         else if(false)
         {
            _window.y = _loc3_ + var_558;
         }
         else
         {
            _window.y = _loc4_ - 0 - var_558;
         }
      }
      
      public function onWindowEvent(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1 == null)
         {
            return;
         }
         if(param1.type == WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER)
         {
            var_1132 = true;
            Logger.log("notifications - hover on");
         }
         else if(param1.type == WindowMouseEvent.const_33)
         {
            var_1132 = false;
            Logger.log("notifications - hover off");
         }
         else if(param1.type == WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            if(var_222 != null)
            {
               var_222.ExecuteUiLinks();
            }
         }
      }
      
      public function replaceIcon(param1:BadgeImageReadyEvent) : void
      {
         if(param1.badgeId != var_222.style.iconSrc)
         {
            return;
         }
         if(param1.badgeImage != null)
         {
            setNotificationIcon(param1.badgeImage);
         }
      }
      
      private function onRoomViewResized(param1:WindowEvent) : void
      {
         reposition();
      }
      
      public function get ready() : Boolean
      {
         return var_33 == const_347;
      }
      
      public function get disposed() : Boolean
      {
         return _window == null;
      }
      
      public function dispose() : void
      {
         if(_window != null)
         {
            _window.dispose();
            _window = null;
         }
      }
      
      public function showItem(param1:HabboNotificationItem) : void
      {
         if(param1 == null)
         {
            return;
         }
         var _loc2_:String = param1.content;
         setNotificationText(_loc2_);
         var _loc3_:BitmapData = param1.style.icon;
         setNotificationIcon(_loc3_);
         var_222 = param1;
         reposition();
         startFadeIn();
      }
      
      private function adjustBlend(param1:Number) : void
      {
         var_389 = param1;
         if(var_389 > 1)
         {
            var_389 = 1;
         }
         if(var_389 < 0)
         {
            var_389 = 0;
         }
         _window.blend = var_389;
      }
      
      public function get verticalPosition() : int
      {
         return var_558;
      }
   }
}
