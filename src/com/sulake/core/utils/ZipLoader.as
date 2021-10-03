package com.sulake.core.utils
{
   import deng.fzip.FZip;
   import deng.fzip.FZipErrorEvent;
   import flash.display.LoaderInfo;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.net.URLRequest;
   import flash.system.LoaderContext;
   import flash.utils.getQualifiedClassName;
   
   public class ZipLoader extends LibraryLoader
   {
       
      
      private var var_1205:uint = 0;
      
      private var var_1206:uint = 0;
      
      private var var_99:FZip;
      
      private var var_1204:Array;
      
      private var var_1817:uint = 0;
      
      private var var_829:int = 0;
      
      private var var_2386:Array;
      
      public function ZipLoader(param1:Boolean)
      {
         super(param1);
         var_1204 = new Array();
      }
      
      override protected function removeEventListeners() : void
      {
         if(var_99)
         {
            var_99.removeEventListener(Event.COMPLETE,onComplete);
            var_99.removeEventListener(IOErrorEvent.IO_ERROR,onIOError);
            var_99.removeEventListener(ProgressEvent.PROGRESS,onProgress);
            var_99.removeEventListener(HTTPStatusEvent.HTTP_STATUS,onHTTPStatus);
            var_99.removeEventListener(FZipErrorEvent.const_123,onParseError);
         }
      }
      
      private function onIOError(param1:IOErrorEvent) : void
      {
         debug("Load event IO ERROR for file \"undefined\"");
         if(!handleHttpStatus(var_164))
         {
            failure("IO Error, load operation failed for file \"undefined\": " + param1.text);
            removeEventListeners();
         }
      }
      
      override public function get bytesLoaded() : uint
      {
         return var_1206;
      }
      
      private function onParseError(param1:FZipErrorEvent) : void
      {
         debug("Load event parse error for file \"undefined\"");
         if(!handleHttpStatus(var_164))
         {
            failure("Parse Error, load operation failed for file \"undefined\": " + param1.text);
            removeEventListeners();
         }
      }
      
      override protected function loadEventHandler(param1:Event) : void
      {
      }
      
      override public function get bytesTotal() : uint
      {
         return var_1205;
      }
      
      public function get resources() : Array
      {
         return var_1204;
      }
      
      private function onLoaderComplete(param1:Event) : void
      {
         var loaderInfo:LoaderInfo = null;
         var name:String = null;
         var event:Event = param1;
         try
         {
            loaderInfo = event.target as LoaderInfo;
            name = getQualifiedClassName(var_15.content);
            var_1204.push(var_15.contentLoaderInfo.applicationDomain.getDefinition(name));
            ++var_829;
            if(var_1204.length == var_1817)
            {
               var_15.contentLoaderInfo.removeEventListener(Event.COMPLETE,onLoaderComplete);
               var_15.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,onIOError);
               removeEventListeners();
               dispatchEvent(new LibraryLoaderEvent(LibraryLoaderEvent.LIBRARY_LOADER_EVENT_COMPLETE,0,var_1205,var_1206));
            }
            else
            {
               var_15.loadBytes(var_99.getFileAt(var_829).content);
            }
         }
         catch(e:Error)
         {
            failure("Crashed on ZipLoader.onLoaderComplete: \"undefined\": " + e.message);
         }
      }
      
      private function onProgress(param1:ProgressEvent) : void
      {
         var_1205 = param1.bytesTotal;
         var_1206 = param1.bytesLoaded;
         debug("Load event PROGRESS for file \"undefined\"");
         dispatchEvent(new LibraryLoaderEvent(LibraryLoaderEvent.LIBRARY_LOADER_EVENT_PROGRESS,0,var_1205,var_1206));
      }
      
      override public function load(param1:URLRequest, param2:LoaderContext = null, param3:int = 1) : void
      {
         ErrorReportStorage.addDebugData("Library url","Library url " + param1.url);
         var_68 = param1;
         _name = parseNameFromUrl(var_68.url);
         var_293 = param3;
         if(var_99)
         {
            var_99.close();
         }
         ErrorReportStorage.addDebugData("Library name","Library name " + _name);
         var_99 = new FZip();
         var_99.addEventListener(Event.COMPLETE,onComplete);
         var_99.addEventListener(IOErrorEvent.IO_ERROR,onIOError);
         var_99.addEventListener(ProgressEvent.PROGRESS,onProgress);
         var_99.addEventListener(HTTPStatusEvent.HTTP_STATUS,onHTTPStatus);
         var_99.addEventListener(FZipErrorEvent.const_123,onParseError);
         var_99.load(var_68);
      }
      
      override protected function handleHttpStatus(param1:int) : Boolean
      {
         if(param1 == 0 || param1 >= 400)
         {
            if(var_293 > 0)
            {
               if(var_99)
               {
                  var_99.close();
               }
               addRequestCounterToUrlRequest(var_68,const_1031 - var_293);
               var_99.load(var_68);
               --var_293;
               return true;
            }
            failure("HTTP Error " + param1 + " \"" + var_68.url + "\"");
            removeEventListeners();
         }
         return false;
      }
      
      private function onComplete(param1:Event) : void
      {
         var event:Event = param1;
         var_829 = 0;
         var_1817 = var_99.getFileCount();
         debug("Load event COMPLETE for file \"undefined\"");
         removeEventListeners();
         try
         {
            if(var_15)
            {
               var_15.contentLoaderInfo.addEventListener(Event.COMPLETE,onLoaderComplete);
               var_15.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,onIOError);
               var_15.loadBytes(var_99.getFileAt(var_829).content);
            }
         }
         catch(e:Error)
         {
            debug("Failed to extract files from library \"undefined\"");
            if(!handleHttpStatus(var_164))
            {
               failure("Crashed on ZipLoader.onComplete: \"undefined\": " + e.message);
            }
         }
      }
      
      private function onHTTPStatus(param1:HTTPStatusEvent) : void
      {
         var_164 = param1.status;
         debug("Load event STATUS " + var_164 + " for file \"" + var_68.url + "\"");
      }
   }
}
