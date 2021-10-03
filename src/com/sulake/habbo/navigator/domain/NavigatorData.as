package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.communication.messages.incoming.navigator.FlatCategory;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomSearchResultData;
   import com.sulake.habbo.communication.messages.incoming.navigator.MsgWithRequestId;
   import com.sulake.habbo.communication.messages.incoming.navigator.OfficialRoomsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PopularRoomTagsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.parser.navigator.FavouritesMessageParser;
   import com.sulake.habbo.communication.messages.parser.navigator.NavigatorSettingsMessageParser;
   import com.sulake.habbo.communication.messages.parser.room.engine.RoomEntryInfoMessageParser;
   import com.sulake.habbo.navigator.HabboNavigator;
   import flash.utils.Dictionary;
   
   public class NavigatorData
   {
      
      private static const const_1432:int = 10;
       
      
      private var var_1516:NavigatorSettingsMessageParser;
      
      private var var_1263:int;
      
      private var var_2003:int;
      
      private var var_1997:Boolean;
      
      private var var_1037:Array;
      
      private var var_862:Dictionary;
      
      private var var_1036:Array;
      
      private var var_2321:int;
      
      private var var_2000:int;
      
      private var var_2001:int;
      
      private var var_1998:int;
      
      private var var_587:PublicRoomShortData;
      
      private var var_423:RoomEventData;
      
      private var var_133:MsgWithRequestId;
      
      private var var_2002:Boolean;
      
      private var _navigator:HabboNavigator;
      
      private var var_1999:Boolean;
      
      private var var_200:GuestRoomData;
      
      private var var_708:Boolean;
      
      private var _currentRoomOwner:Boolean;
      
      public function NavigatorData(param1:HabboNavigator)
      {
         var_1037 = new Array();
         var_1036 = new Array();
         var_862 = new Dictionary();
         super();
         _navigator = param1;
      }
      
      public function get createdFlatId() : int
      {
         return var_2003;
      }
      
      public function get eventMod() : Boolean
      {
         return var_1999;
      }
      
      public function startLoading() : void
      {
         this.var_708 = true;
      }
      
      public function isRoomFavourite(param1:int) : Boolean
      {
         return false;
      }
      
      public function set eventMod(param1:Boolean) : void
      {
         var_1999 = param1;
      }
      
      public function set roomEventData(param1:RoomEventData) : void
      {
         if(var_423 != null)
         {
            var_423.dispose();
         }
         var_423 = param1;
      }
      
      public function get popularTagsArrived() : Boolean
      {
         return var_133 != null && var_133 as PopularRoomTagsData != null;
      }
      
      public function get guestRoomSearchArrived() : Boolean
      {
         return var_133 != null && var_133 as GuestRoomSearchResultData != null;
      }
      
      public function get guestRoomSearchResults() : GuestRoomSearchResultData
      {
         return var_133 as GuestRoomSearchResultData;
      }
      
      public function get enteredGuestRoom() : GuestRoomData
      {
         return var_200;
      }
      
      public function get allCategories() : Array
      {
         return var_1037;
      }
      
      public function onRoomExit() : void
      {
         if(var_423 != null)
         {
            var_423.dispose();
            var_423 = null;
         }
         if(var_587 != null)
         {
            var_587.dispose();
            var_587 = null;
         }
         if(var_200 != null)
         {
            var_200.dispose();
            var_200 = null;
         }
         _currentRoomOwner = false;
      }
      
      public function set officialRooms(param1:OfficialRoomsData) : void
      {
         disposeCurrentMsg();
         var_133 = param1;
         var_708 = false;
      }
      
      public function get settings() : NavigatorSettingsMessageParser
      {
         return var_1516;
      }
      
      public function set popularTags(param1:PopularRoomTagsData) : void
      {
         disposeCurrentMsg();
         var_133 = param1;
         var_708 = false;
      }
      
      public function onRoomEnter(param1:RoomEntryInfoMessageParser) : void
      {
         var_587 = null;
         var_200 = null;
         _currentRoomOwner = false;
         if(param1.guestRoom)
         {
            _currentRoomOwner = param1.owner;
         }
         else
         {
            var_587 = param1.publicSpace;
            var_423 = null;
         }
      }
      
      public function get currentRoomOwner() : Boolean
      {
         return _currentRoomOwner;
      }
      
      public function onFavourites(param1:FavouritesMessageParser) : void
      {
         var _loc2_:int = 0;
         this.var_2321 = param1.limit;
         this.var_1263 = param1.favouriteRoomIds.length;
         this.var_862 = new Dictionary();
         for each(_loc2_ in param1.favouriteRoomIds)
         {
            this.var_862[_loc2_] = "yes";
         }
      }
      
      public function get popularTags() : PopularRoomTagsData
      {
         return var_133 as PopularRoomTagsData;
      }
      
      public function get enteredPublicSpace() : PublicRoomShortData
      {
         return var_587;
      }
      
      public function get hotRoomPopupOpen() : Boolean
      {
         return var_1997;
      }
      
      public function set guestRoomSearchResults(param1:GuestRoomSearchResultData) : void
      {
         disposeCurrentMsg();
         var_133 = param1;
         var_708 = false;
      }
      
      public function set avatarId(param1:int) : void
      {
         var_2001 = param1;
      }
      
      public function get canEditRoomSettings() : Boolean
      {
         return var_200 != null && _currentRoomOwner;
      }
      
      public function isLoading() : Boolean
      {
         return this.var_708;
      }
      
      public function get visibleCategories() : Array
      {
         return var_1036;
      }
      
      public function set categories(param1:Array) : void
      {
         var _loc2_:* = null;
         var_1037 = param1;
         var_1036 = new Array();
         for each(_loc2_ in var_1037)
         {
            if(_loc2_.visible)
            {
               var_1036.push(_loc2_);
            }
         }
      }
      
      public function get currentRoomRating() : int
      {
         return var_2000;
      }
      
      public function get publicSpaceNodeId() : int
      {
         return var_1998;
      }
      
      public function set settings(param1:NavigatorSettingsMessageParser) : void
      {
         var_1516 = param1;
      }
      
      private function disposeCurrentMsg() : void
      {
         if(var_133 == null)
         {
            return;
         }
         var_133.dispose();
         var_133 = null;
      }
      
      public function get roomEventData() : RoomEventData
      {
         return var_423;
      }
      
      public function method_10(param1:int, param2:Boolean) : void
      {
         var_862[param1] = !!param2 ? "yes" : null;
         var_1263 += !!param2 ? 1 : -1;
      }
      
      public function get officialRooms() : OfficialRoomsData
      {
         return var_133 as OfficialRoomsData;
      }
      
      public function get avatarId() : int
      {
         return var_2001;
      }
      
      public function isCurrentRoomFavourite() : Boolean
      {
         var _loc1_:int = 0;
         return false;
      }
      
      public function get officialRoomsArrived() : Boolean
      {
         return var_133 != null && var_133 as OfficialRoomsData != null;
      }
      
      public function set hotRoomPopupOpen(param1:Boolean) : void
      {
         var_1997 = param1;
      }
      
      public function set currentRoomRating(param1:int) : void
      {
         var_2000 = param1;
      }
      
      public function set hcMember(param1:Boolean) : void
      {
         var_2002 = param1;
      }
      
      public function set enteredRoom(param1:GuestRoomData) : void
      {
         if(var_200 != null)
         {
            var_200.dispose();
         }
         var_200 = param1;
      }
      
      public function isCurrentRoomHome() : Boolean
      {
         if(var_200 == null)
         {
            return false;
         }
         var _loc1_:int = 0;
         return this.var_1516.homeRoomId == _loc1_;
      }
      
      public function isFavouritesFull() : Boolean
      {
         return var_1263 >= var_2321;
      }
      
      public function set publicSpaceNodeId(param1:int) : void
      {
         var_1998 = param1;
      }
      
      public function get hcMember() : Boolean
      {
         return var_2002;
      }
      
      public function get canAddFavourite() : Boolean
      {
         return var_200 != null && !_currentRoomOwner;
      }
      
      public function set createdFlatId(param1:int) : void
      {
         var_2003 = param1;
      }
   }
}
