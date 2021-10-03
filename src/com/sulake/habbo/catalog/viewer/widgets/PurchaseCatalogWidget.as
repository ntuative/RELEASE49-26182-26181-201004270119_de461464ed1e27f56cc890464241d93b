package com.sulake.habbo.catalog.viewer.widgets
{
   import com.sulake.core.assets.XmlAsset;
   import com.sulake.core.localization.ICoreLocalizationManager;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IButtonWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.catalog.HabboCatalog;
   import com.sulake.habbo.catalog.viewer.Offer;
   import com.sulake.habbo.catalog.viewer.widgets.events.SelectProductEvent;
   import com.sulake.habbo.catalog.viewer.widgets.events.SetExtraPurchaseParameterEvent;
   import com.sulake.habbo.catalog.viewer.widgets.events.WidgetEvent;
   
   public class PurchaseCatalogWidget extends CatalogWidget implements ICatalogWidget
   {
       
      
      private var var_1952:XML;
      
      private var var_1504:ITextWindow;
      
      private var var_1502:ITextWindow;
      
      private var var_1954:XML;
      
      private var var_853:IWindowContainer;
      
      private var var_2319:ITextWindow;
      
      private var var_1955:String = "";
      
      private var var_2390:IButtonWindow;
      
      private var var_1956:XML;
      
      private var var_1503:ITextWindow;
      
      private var var_1953:XML;
      
      private var var_854:IButtonWindow;
      
      private var var_75:Offer;
      
      public function PurchaseCatalogWidget(param1:IWindowContainer)
      {
         super(param1);
      }
      
      private function attachStub(param1:String) : void
      {
         var _loc2_:* = null;
         switch(param1)
         {
            case Offer.const_339:
               _loc2_ = page.viewer.catalog.windowManager.buildFromXML(var_1954) as IWindowContainer;
               break;
            case Offer.const_477:
               _loc2_ = page.viewer.catalog.windowManager.buildFromXML(var_1953) as IWindowContainer;
               break;
            case Offer.const_486:
               _loc2_ = page.viewer.catalog.windowManager.buildFromXML(var_1952) as IWindowContainer;
               break;
            case Offer.const_572:
               _loc2_ = page.viewer.catalog.windowManager.buildFromXML(var_1956) as IWindowContainer;
               break;
            default:
               Logger.log("Unknown price-type, can\'t attach...undefined");
         }
         if(_loc2_ != null)
         {
            if(var_853 != null)
            {
               _window.removeChild(var_853);
               var_853.dispose();
            }
            var_853 = _loc2_;
            _window.addChild(_loc2_);
            var_853.x = 0;
            var_853.y = 0;
         }
         var_1503 = _window.findChildByName("ctlg_price_credits") as ITextWindow;
         var_1502 = _window.findChildByName("ctlg_price_pixels") as ITextWindow;
         var_1504 = _window.findChildByName("ctlg_price_credits_pixels") as ITextWindow;
         var_2319 = _window.findChildByName("ctlg_special_txt") as ITextWindow;
         var_854 = window.findChildByName("ctlg_buy_button") as IButtonWindow;
         if(var_854 != null)
         {
            var_854.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,onPurchase);
            var_854.disable();
         }
      }
      
      private function onPurchase(param1:WindowMouseEvent) : void
      {
         if(var_75 != null)
         {
            Logger.log("Init Purchase: undefined undefined");
            (page.viewer.catalog as HabboCatalog).showPurchaseConfirmation(var_75,page,var_1955);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:XmlAsset = page.viewer.catalog.assets.getAssetByName("purchaseWidgetCreditsStub") as XmlAsset;
         if(_loc1_ != null)
         {
            var_1954 = _loc1_.content as XML;
         }
         var _loc2_:XmlAsset = page.viewer.catalog.assets.getAssetByName("purchaseWidgetPixelsStub") as XmlAsset;
         if(_loc2_ != null)
         {
            var_1953 = _loc2_.content as XML;
         }
         var _loc3_:XmlAsset = page.viewer.catalog.assets.getAssetByName("purchaseWidgetCreditsPixelsStub") as XmlAsset;
         if(_loc3_ != null)
         {
            var_1952 = _loc3_.content as XML;
         }
         var _loc4_:XmlAsset = page.viewer.catalog.assets.getAssetByName("purchaseWidgetCreditsOrCreditsAndPixelsStub") as XmlAsset;
         if(_loc4_ != null)
         {
            var_1956 = _loc4_.content as XML;
         }
         events.addEventListener(WidgetEvent.CWE_SELECT_PRODUCT,onSelectProduct);
         events.addEventListener(WidgetEvent.const_812,onSetParameter);
      }
      
      private function onSetParameter(param1:SetExtraPurchaseParameterEvent) : void
      {
         var_1955 = param1.parameter;
      }
      
      private function onSelectProduct(param1:SelectProductEvent) : void
      {
         var _loc2_:ICoreLocalizationManager = (page.viewer.catalog as HabboCatalog).localization;
         var_75 = param1.offer;
         attachStub(var_75.priceType);
         if(var_1503 != null)
         {
            _loc2_.registerParameter("catalog.purchase.price.credits","credits",String(var_75.priceInCredits));
            var_1503.caption = "${catalog.purchase.price.credits}";
         }
         if(var_1502 != null)
         {
            _loc2_.registerParameter("catalog.purchase.price.pixels","pixels",String(var_75.priceInPixels));
            var_1502.caption = "${catalog.purchase.price.pixels}";
         }
         if(var_1504 != null)
         {
            _loc2_.registerParameter("catalog.purchase.price.credits+pixels","credits",String(var_75.priceInCredits));
            _loc2_.registerParameter("catalog.purchase.price.credits+pixels","pixels",String(var_75.priceInPixels));
            var_1504.caption = "${catalog.purchase.price.credits+pixels}";
         }
         if(var_854 != null)
         {
            var_854.enable();
         }
      }
   }
}
