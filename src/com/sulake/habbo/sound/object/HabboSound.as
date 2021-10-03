package com.sulake.habbo.sound.object
{
   import com.sulake.habbo.sound.IHabboSound;
   import flash.events.Event;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class HabboSound implements IHabboSound
   {
       
      
      private var var_1047:SoundChannel = null;
      
      private var var_873:Boolean;
      
      private var var_1046:Sound = null;
      
      private var var_691:Number;
      
      public function HabboSound(param1:Sound)
      {
         super();
         var_1046 = param1;
         var_1046.addEventListener(Event.COMPLETE,onComplete);
         var_691 = 1;
         var_873 = false;
      }
      
      public function get finished() : Boolean
      {
         return !var_873;
      }
      
      public function stop() : Boolean
      {
         var_1047.stop();
         return true;
      }
      
      public function play() : Boolean
      {
         var_873 = false;
         var_1047 = var_1046.play(0);
         this.volume = var_691;
         return true;
      }
      
      public function set position(param1:Number) : void
      {
      }
      
      public function get volume() : Number
      {
         return var_691;
      }
      
      public function get ready() : Boolean
      {
         return true;
      }
      
      public function get position() : Number
      {
         return var_1047.position;
      }
      
      public function get length() : Number
      {
         return var_1046.length;
      }
      
      public function set volume(param1:Number) : void
      {
         var_691 = param1;
         if(var_1047 != null)
         {
            var_1047.soundTransform = new SoundTransform(var_691);
         }
      }
      
      private function onComplete(param1:Event) : void
      {
         var_873 = true;
      }
   }
}
