package com.sulake.habbo.navigator
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.ITextFieldWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowKeyboardEvent;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.ui.Keyboard;
   
   public class TextFieldManager
   {
       
      
      private var var_2341:Boolean;
      
      private var var_1587:int;
      
      private var var_2343:String = "";
      
      private var var_72:ITextFieldWindow;
      
      private var var_2342:uint;
      
      private var _orgTextBackgroundColor:uint;
      
      private var _navigator:HabboNavigator;
      
      private var var_1142:String = "";
      
      private var var_159:IWindowContainer;
      
      private var var_315:Boolean;
      
      private var var_1353:Function;
      
      public function TextFieldManager(param1:HabboNavigator, param2:ITextFieldWindow, param3:int = 1000, param4:Function = null, param5:String = null)
      {
         super();
         _navigator = param1;
         var_72 = param2;
         var_1587 = param3;
         var_1353 = param4;
         if(param5 != null)
         {
            var_315 = true;
            var_1142 = param5;
            var_72.text = param5;
         }
         Util.setProcDirectly(var_72,onInputClick);
         var_72.addEventListener(WindowKeyboardEvent.const_147,checkEnterPress);
         var_72.addEventListener(WindowEvent.const_118,checkMaxLen);
         this.var_2341 = var_72.textBackground;
         this._orgTextBackgroundColor = var_72.textBackgroundColor;
         this.var_2342 = var_72.textColor;
      }
      
      private function checkEnterPress(param1:Event) : void
      {
         var _loc2_:IWindow = IWindow(param1.target);
         if(!(param1 is WindowKeyboardEvent))
         {
            return;
         }
         var _loc3_:WindowKeyboardEvent = WindowKeyboardEvent(param1);
         if(_loc3_.charCode == Keyboard.ENTER)
         {
            if(var_1353 != null)
            {
               var_1353();
            }
         }
      }
      
      public function goBackToInitialState() : void
      {
         clearErrors();
         if(var_1142 != null)
         {
            var_72.text = var_1142;
            var_315 = true;
         }
         else
         {
            var_72.text = "";
            var_315 = false;
         }
      }
      
      public function get input() : ITextFieldWindow
      {
         return var_72;
      }
      
      public function restoreBackground() : void
      {
         var_72.textBackground = this.var_2341;
         var_72.textBackgroundColor = this._orgTextBackgroundColor;
         var_72.textColor = this.var_2342;
      }
      
      private function onInputClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowEvent.const_232)
         {
            return;
         }
         if(!var_315)
         {
            return;
         }
         var_72.text = var_2343;
         var_315 = false;
         this.restoreBackground();
      }
      
      public function clearErrors() : void
      {
         this.restoreBackground();
         if(this.var_159 != null)
         {
            var_159.visible = false;
         }
      }
      
      public function displayError(param1:String) : void
      {
         var_72.textBackground = true;
         var_72.textBackgroundColor = 4294021019;
         var_72.textColor = 4278190080;
         if(this.var_159 == null)
         {
            this.var_159 = IWindowContainer(_navigator.getXmlWindow("nav_error_popup"));
            _navigator.refreshButton(this.var_159,"popup_arrow_down",true,null,0);
            IWindowContainer(var_72.parent).addChild(this.var_159);
         }
         var _loc2_:ITextWindow = ITextWindow(this.var_159.findChildByName("error_text"));
         _loc2_.text = param1;
         _loc2_.width = _loc2_.textWidth + 5;
         var_159.findChildByName("border").width = _loc2_.width + 15;
         var_159.width = _loc2_.width + 15;
         var _loc3_:Point = new Point();
         var_72.getLocalPosition(_loc3_);
         this.var_159.x = _loc3_.x;
         this.var_159.y = _loc3_.y - this.var_159.height + 3;
         var _loc4_:IWindow = var_159.findChildByName("popup_arrow_down");
         _loc4_.x = this.var_159.width / 2 - _loc4_.width / 2;
         var_159.x += (0 - 0) / 2;
         this.var_159.visible = true;
      }
      
      public function getText() : String
      {
         if(var_315)
         {
            return var_2343;
         }
         return var_72.text;
      }
      
      private function isInputValid() : Boolean
      {
         return !var_315 && Util.trim(getText()).length > 2;
      }
      
      public function setText(param1:String) : void
      {
         var_315 = false;
         var_72.text = param1;
      }
      
      public function checkMandatory(param1:String) : Boolean
      {
         if(!isInputValid())
         {
            displayError(param1);
            return false;
         }
         restoreBackground();
         return true;
      }
      
      private function checkMaxLen(param1:Event) : void
      {
         var _loc2_:String = "null";
         if(_loc2_.length > var_1587)
         {
            var_72.text = _loc2_.substring(0,var_1587);
         }
      }
   }
}
