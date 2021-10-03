package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.mainview.MainViewCtrl;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.EventsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.MyRoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.OfficialTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.RoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.SearchTabPageDecorator;
   
   public class Tabs
   {
      
      public static const const_688:int = 6;
      
      public static const const_224:int = 5;
      
      public static const const_606:int = 2;
      
      public static const const_317:int = 9;
      
      public static const const_336:int = 4;
      
      public static const const_270:int = 2;
      
      public static const const_592:int = 4;
      
      public static const const_218:int = 8;
      
      public static const const_584:int = 7;
      
      public static const const_241:int = 3;
      
      public static const const_333:int = 1;
      
      public static const const_197:int = 5;
      
      public static const const_419:int = 12;
      
      public static const const_303:int = 1;
      
      public static const const_729:int = 11;
      
      public static const const_541:int = 3;
      
      public static const const_1542:int = 10;
       
      
      private var _navigator:HabboNavigator;
      
      private var var_407:Array;
      
      public function Tabs(param1:HabboNavigator)
      {
         super();
         _navigator = param1;
         var_407 = new Array();
         var_407.push(new Tab(_navigator,const_333,const_419,new EventsTabPageDecorator(_navigator),MainViewCtrl.const_454));
         var_407.push(new Tab(_navigator,const_270,const_303,new RoomsTabPageDecorator(_navigator),MainViewCtrl.const_454));
         var_407.push(new Tab(_navigator,const_336,const_729,new OfficialTabPageDecorator(_navigator),MainViewCtrl.const_1019));
         var_407.push(new Tab(_navigator,const_241,const_224,new MyRoomsTabPageDecorator(_navigator),MainViewCtrl.const_454));
         var_407.push(new Tab(_navigator,const_197,const_218,new SearchTabPageDecorator(_navigator),MainViewCtrl.const_543));
         setSelectedTab(const_333);
      }
      
      public function getSelected() : Tab
      {
         var _loc1_:* = null;
         for each(_loc1_ in var_407)
         {
            if(_loc1_.selected)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      public function getTab(param1:int) : Tab
      {
         var _loc2_:* = null;
         for each(_loc2_ in var_407)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      private function clearSelected() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in var_407)
         {
            _loc1_.selected = false;
         }
      }
      
      public function onFrontPage() : Boolean
      {
         return this.getSelected().id == const_336;
      }
      
      public function get tabs() : Array
      {
         return var_407;
      }
      
      public function setSelectedTab(param1:int) : void
      {
         this.clearSelected();
         getTab(param1).selected = true;
      }
   }
}
