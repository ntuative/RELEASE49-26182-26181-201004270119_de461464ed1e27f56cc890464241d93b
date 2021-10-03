package com.sulake.habbo.widget.messages
{
   public class RoomWidgetUserActionMessage extends RoomWidgetMessage
   {
      
      public static const const_558:String = "RWUAM_RESPECT_USER";
      
      public static const const_613:String = "RWUAM_GIVE_RIGHTS";
      
      public static const const_567:String = "RWUAM_START_TRADING";
      
      public static const const_711:String = "RWUAM_TAKE_RIGHTS";
      
      public static const const_634:String = "RWUAM_WHISPER_USER";
      
      public static const const_605:String = "RWUAM_IGNORE_USER";
      
      public static const const_416:String = "RWUAM_REQUEST_PET_UPDATE";
      
      public static const const_716:String = "RWUAM_BAN_USER";
      
      public static const const_523:String = "RWUAM_UNIGNORE_USER";
      
      public static const const_485:String = "RWUAM_KICK_USER";
      
      public static const const_701:String = "RWUAM_SEND_FRIEND_REQUEST";
      
      public static const const_510:String = " RWUAM_RESPECT_PET";
      
      public static const const_404:String = "RWUAM_KICK_BOT";
      
      public static const const_1214:String = "RWUAM_TRAIN_PET";
      
      public static const const_627:String = "RWUAM_PICKUP_PET";
      
      public static const const_734:String = "RWUAM_OPEN_HOME_PAGE";
      
      public static const const_735:String = "RWUAM_REPORT";
       
      
      private var _userId:int = 0;
      
      public function RoomWidgetUserActionMessage(param1:String, param2:int = 0)
      {
         super(param1);
         _userId = param2;
      }
      
      public function get userId() : int
      {
         return _userId;
      }
   }
}
