package com.sulake.habbo.inventory.marketplace
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.communication.connection.IConnection;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.habbo.communication.IHabboCommunicationManager;
   import com.sulake.habbo.communication.messages.outgoing.marketplace.BuyMarketplaceTokensMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.marketplace.GetMarketplaceCanMakeOfferComposer;
   import com.sulake.habbo.communication.messages.outgoing.marketplace.GetMarketplaceConfigurationMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.marketplace.GetMarketplaceItemStatsComposer;
   import com.sulake.habbo.communication.messages.outgoing.marketplace.MakeOfferMessageComposer;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import com.sulake.habbo.inventory.HabboInventory;
   import com.sulake.habbo.inventory.IInventoryModel;
   import com.sulake.habbo.inventory.items.FloorItem;
   import com.sulake.habbo.inventory.items.IItem;
   import com.sulake.habbo.localization.IHabboLocalizationManager;
   import com.sulake.habbo.room.IRoomEngine;
   import com.sulake.habbo.window.IHabboWindowManager;
   
   public class MarketplaceModel implements IInventoryModel
   {
       
      
      private var _disposed:Boolean = false;
      
      private var var_1737:int;
      
      private var var_1732:int;
      
      private var _roomEngine:IRoomEngine;
      
      private var _windowManager:IHabboWindowManager;
      
      private var _assets:IAssetLibrary;
      
      private var var_1735:int;
      
      private var var_1440:int;
      
      private var var_1731:int;
      
      private var _view:MarketplaceView;
      
      private var var_48:HabboInventory;
      
      private var var_805:Boolean = false;
      
      private var var_1734:int;
      
      private var var_1146:Boolean;
      
      private var var_1441:int;
      
      private var _communication:IHabboCommunicationManager;
      
      private var var_1733:int;
      
      private var var_1736:int;
      
      private var var_222:IItem;
      
      public function MarketplaceModel(param1:HabboInventory, param2:IHabboWindowManager, param3:IHabboCommunicationManager, param4:IAssetLibrary, param5:IRoomEngine, param6:IHabboLocalizationManager, param7:IHabboConfigurationManager)
      {
         super();
         var_48 = param1;
         _communication = param3;
         _windowManager = param2;
         _assets = param4;
         _roomEngine = param5;
         _view = new MarketplaceView(this,_windowManager,_assets,param5,param6,param7);
      }
      
      public function set offerMaxPrice(param1:int) : void
      {
         var_1734 = param1;
      }
      
      public function makeOffer(param1:int) : void
      {
         if(var_222 == null)
         {
            return;
         }
         var _loc2_:IConnection = _communication.getHabboMainConnection(null);
         if(_loc2_ == null)
         {
            return;
         }
         var _loc3_:int = var_222 is FloorItem ? 1 : 2;
         _loc2_.send(new MakeOfferMessageComposer(param1,_loc3_,var_222.ref));
         releaseItem();
      }
      
      public function set tokenBatchPrice(param1:int) : void
      {
         var_1441 = param1;
      }
      
      public function get offerMinPrice() : int
      {
         return var_1732;
      }
      
      public function getItemStats() : void
      {
         if(var_222 == null)
         {
            return;
         }
         var _loc1_:IConnection = _communication.getHabboMainConnection(null);
         if(_loc1_ == null)
         {
            return;
         }
         var _loc2_:int = var_222 is FloorItem ? 1 : 2;
         var_1736 = _loc2_;
         var_1735 = var_222.type;
         _loc1_.send(new GetMarketplaceItemStatsComposer(_loc2_,var_222.type));
      }
      
      public function get tokenBatchPrice() : int
      {
         return var_1441;
      }
      
      public function proceedOfferMaking(param1:int, param2:int) : void
      {
         var_805 = false;
         switch(param1)
         {
            case 1:
               _view.showMakeOffer(var_222);
               break;
            case 2:
               _view.showAlert("${inventory.marketplace.no_trading_privilege.title}","${inventory.marketplace.no_trading_privilege.info}");
               break;
            case 3:
               _view.showAlert("${inventory.marketplace.no_trading_pass.title}","${inventory.marketplace.no_trading_pass.info}");
               break;
            case 4:
               _view.showBuyTokens(var_1441,var_1440);
         }
      }
      
      public function set averagePricePeriod(param1:int) : void
      {
         var_1731 = param1;
      }
      
      public function dispose() : void
      {
         var_48 = null;
         _communication = null;
         _windowManager = null;
         _assets = null;
         _roomEngine = null;
      }
      
      public function get expirationHours() : int
      {
         return var_1733;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function set offerMinPrice(param1:int) : void
      {
         var_1732 = param1;
      }
      
      public function requestInitialization(param1:int = 0) : void
      {
         var _loc2_:IConnection = _communication.getHabboMainConnection(null);
         if(_loc2_ == null)
         {
            return;
         }
         _loc2_.send(new GetMarketplaceConfigurationMessageComposer());
      }
      
      public function subCategorySwitch(param1:String) : void
      {
      }
      
      public function setAveragePrice(param1:int, param2:int, param3:int) : void
      {
         if(param1 != var_1736 || param2 != var_1735)
         {
            return;
         }
         if(!_view)
         {
            return;
         }
         _view.updateAveragePrice(param3,var_1731);
      }
      
      public function get isEnabled() : Boolean
      {
         return var_1146;
      }
      
      public function releaseItem() : void
      {
         if(var_48 != null && false && var_222 != null)
         {
            var_48.furniModel.removeLockFrom(var_222.id);
            var_222 = null;
         }
      }
      
      public function set expirationHours(param1:int) : void
      {
         var_1733 = param1;
      }
      
      public function get offerMaxPrice() : int
      {
         return var_1734;
      }
      
      public function getWindowContainer() : IWindowContainer
      {
         return null;
      }
      
      public function categorySwitch(param1:String) : void
      {
      }
      
      public function set tokenBatchSize(param1:int) : void
      {
         var_1440 = param1;
      }
      
      public function set commission(param1:int) : void
      {
         var_1737 = param1;
      }
      
      public function endOfferMaking(param1:int) : void
      {
         if(!_view)
         {
            return;
         }
         _view.showResult(param1);
      }
      
      public function buyMarketplaceTokens() : void
      {
         var _loc1_:IConnection = _communication.getHabboMainConnection(null);
         if(_loc1_ == null)
         {
            return;
         }
         _loc1_.send(new BuyMarketplaceTokensMessageComposer());
         var_805 = true;
      }
      
      public function get tokenBatchSize() : int
      {
         return var_1440;
      }
      
      public function startOfferMaking(param1:IItem) : void
      {
         if(var_222 != null || param1 == null)
         {
            return;
         }
         if(var_48 == null)
         {
            return;
         }
         var_222 = param1;
         if(false)
         {
            var_48.furniModel.addLockTo(param1.id);
         }
         var _loc2_:IConnection = _communication.getHabboMainConnection(null);
         if(_loc2_ == null)
         {
            return;
         }
         _loc2_.send(new GetMarketplaceCanMakeOfferComposer());
      }
      
      public function get commission() : int
      {
         return var_1737;
      }
      
      public function closingInventoryView() : void
      {
      }
      
      public function set isEnabled(param1:Boolean) : void
      {
         var_1146 = param1;
      }
      
      public function onNotEnoughCredits() : void
      {
         if(var_805)
         {
            var_805 = false;
            releaseItem();
         }
      }
   }
}
