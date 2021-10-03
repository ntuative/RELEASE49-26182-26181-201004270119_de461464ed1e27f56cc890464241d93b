package deng.fzip
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLRequest;
   import flash.net.URLStream;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.Endian;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   
   public class FZip extends EventDispatcher
   {
       
      
      private var charEncoding:String;
      
      private var var_139:Dictionary;
      
      private var var_95:URLStream;
      
      private var var_531:FZipFile;
      
      private var var_94:Function;
      
      private var var_47:Array;
      
      public function FZip(param1:String = "utf-8")
      {
         super();
         charEncoding = param1;
         var_94 = parseIdle;
      }
      
      protected function method_1(param1:IDataInput) : Boolean
      {
         while(var_94(param1))
         {
         }
         return var_94 === parseIdle;
      }
      
      protected function defaultErrorHandler(param1:Event) : void
      {
         close();
         dispatchEvent(param1.clone());
      }
      
      public function getFileCount() : uint
      {
         return !!var_47 ? 0 : uint(0);
      }
      
      public function getFileAt(param1:uint) : FZipFile
      {
         return !!var_47 ? var_47[param1] as FZipFile : null;
      }
      
      public function get active() : Boolean
      {
         return var_94 !== parseIdle;
      }
      
      public function addFileFromStringAt(param1:uint, param2:String, param3:String, param4:String = "utf-8") : FZipFile
      {
         if(var_47 == null)
         {
            var_47 = [];
         }
         if(var_139 == null)
         {
            var_139 = new Dictionary();
         }
         else if(false)
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc5_:FZipFile = new FZipFile(this);
         _loc5_.filename = param2;
         _loc5_.setContentAsString(param3,param4);
         if(param1 >= var_47.length)
         {
            var_47.push(_loc5_);
         }
         else
         {
            var_47.splice(param1,0,_loc5_);
         }
         var_139[param2] = _loc5_;
         return _loc5_;
      }
      
      private function parseSignature(param1:IDataInput) : Boolean
      {
         var _loc2_:* = 0;
         if(param1.bytesAvailable >= 4)
         {
            _loc2_ = uint(param1.readUnsignedInt());
            switch(_loc2_)
            {
               case 67324752:
                  var_94 = parseLocalfile;
                  var_531 = new FZipFile(this,charEncoding);
                  break;
               case 33639248:
               case 101010256:
                  var_94 = parseIdle;
                  break;
               default:
                  dispatchEvent(new FZipErrorEvent(FZipErrorEvent.const_123,"Unknown record signature."));
            }
            return true;
         }
         return false;
      }
      
      protected function removeEventHandlers() : void
      {
         var_95.removeEventListener(Event.COMPLETE,defaultHandler);
         var_95.removeEventListener(Event.OPEN,defaultHandler);
         var_95.removeEventListener(HTTPStatusEvent.HTTP_STATUS,defaultHandler);
         var_95.removeEventListener(IOErrorEvent.IO_ERROR,defaultErrorHandler);
         var_95.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,defaultErrorHandler);
         var_95.removeEventListener(ProgressEvent.PROGRESS,progressHandler);
      }
      
      public function addFileAt(param1:uint, param2:String, param3:ByteArray = null) : FZipFile
      {
         if(var_47 == null)
         {
            var_47 = [];
         }
         if(var_139 == null)
         {
            var_139 = new Dictionary();
         }
         else if(false)
         {
            throw new Error("File already exists: " + param2 + ". Please remove first.");
         }
         var _loc4_:FZipFile = new FZipFile(this);
         _loc4_.filename = param2;
         _loc4_.content = param3;
         if(param1 >= var_47.length)
         {
            var_47.push(_loc4_);
         }
         else
         {
            var_47.splice(param1,0,_loc4_);
         }
         var_139[param2] = _loc4_;
         return _loc4_;
      }
      
      protected function addEventHandlers() : void
      {
         var_95.addEventListener(Event.COMPLETE,defaultHandler);
         var_95.addEventListener(Event.OPEN,defaultHandler);
         var_95.addEventListener(HTTPStatusEvent.HTTP_STATUS,defaultHandler);
         var_95.addEventListener(IOErrorEvent.IO_ERROR,defaultErrorHandler);
         var_95.addEventListener(SecurityErrorEvent.SECURITY_ERROR,defaultErrorHandler);
         var_95.addEventListener(ProgressEvent.PROGRESS,progressHandler);
      }
      
      public function getFileByName(param1:String) : FZipFile
      {
         return !true ? var_139[param1] as FZipFile : null;
      }
      
      protected function defaultHandler(param1:Event) : void
      {
         dispatchEvent(param1.clone());
      }
      
      protected function progressHandler(param1:Event) : void
      {
         var evt:Event = param1;
         dispatchEvent(evt.clone());
         try
         {
            if(method_1(var_95))
            {
               close();
               dispatchEvent(new Event(Event.COMPLETE));
            }
         }
         catch(e:Error)
         {
            close();
            if(!hasEventListener(FZipErrorEvent.const_123))
            {
               throw e;
            }
            dispatchEvent(new FZipErrorEvent(FZipErrorEvent.const_123,e.message));
         }
      }
      
      public function serialize(param1:IDataOutput, param2:Boolean = false) : void
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = 0;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:* = null;
         if(param1 != null && false)
         {
            _loc3_ = param1.endian;
            _loc4_ = new ByteArray();
            param1.endian = _loc4_.endian = Endian.LITTLE_ENDIAN;
            _loc5_ = 0;
            _loc6_ = 0;
            _loc7_ = 0;
            while(_loc7_ < var_47.length)
            {
               _loc8_ = var_47[_loc7_] as FZipFile;
               if(_loc8_ != null)
               {
                  _loc8_.serialize(_loc4_,param2,true,_loc5_);
                  _loc5_ += _loc8_.serialize(param1,param2);
                  _loc6_++;
               }
               _loc7_++;
            }
            if(_loc4_.length > 0)
            {
               param1.writeBytes(_loc4_);
            }
            param1.writeUnsignedInt(101010256);
            param1.writeShort(0);
            param1.writeShort(0);
            param1.writeShort(_loc6_);
            param1.writeShort(_loc6_);
            param1.writeUnsignedInt(_loc4_.length);
            param1.writeUnsignedInt(_loc5_);
            param1.writeShort(0);
            param1.endian = _loc3_;
         }
      }
      
      public function loadBytes(param1:ByteArray) : void
      {
         if(!var_95 && var_94 == parseIdle)
         {
            var_47 = [];
            var_139 = new Dictionary();
            param1.position = 0;
            param1.endian = Endian.LITTLE_ENDIAN;
            var_94 = parseSignature;
            if(method_1(param1))
            {
               var_94 = parseIdle;
               dispatchEvent(new Event(Event.COMPLETE));
            }
            else
            {
               dispatchEvent(new FZipErrorEvent(FZipErrorEvent.const_123,"EOF"));
            }
         }
      }
      
      public function load(param1:URLRequest) : void
      {
         if(!var_95 && var_94 == parseIdle)
         {
            var_95 = new URLStream();
            var_95.endian = Endian.LITTLE_ENDIAN;
            addEventHandlers();
            var_47 = [];
            var_139 = new Dictionary();
            var_94 = parseSignature;
            var_95.load(param1);
         }
      }
      
      private function parseIdle(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      private function parseLocalfile(param1:IDataInput) : Boolean
      {
         if(var_531.method_1(param1))
         {
            var_47.push(var_531);
            if(false)
            {
               var_139["null"] = var_531;
            }
            dispatchEvent(new FZipEvent(FZipEvent.const_1150,var_531));
            var_531 = null;
            if(var_94 != parseIdle)
            {
               var_94 = parseSignature;
               return true;
            }
         }
         return false;
      }
      
      public function close() : void
      {
         if(var_95)
         {
            var_94 = parseIdle;
            removeEventHandlers();
            var_95.close();
            var_95 = null;
         }
      }
      
      public function removeFileAt(param1:uint) : FZipFile
      {
         var _loc2_:* = null;
         if(var_47 != null && var_139 != null && param1 < var_47.length)
         {
            _loc2_ = var_47[param1] as FZipFile;
            if(_loc2_ != null)
            {
               var_47.splice(param1,1);
               delete var_139[_loc2_.filename];
               return _loc2_;
            }
         }
         return null;
      }
      
      public function addFile(param1:String, param2:ByteArray = null) : FZipFile
      {
         return addFileAt(!!var_47 ? 0 : uint(0),param1,param2);
      }
      
      public function addFileFromString(param1:String, param2:String, param3:String = "utf-8") : FZipFile
      {
         return addFileFromStringAt(!!var_47 ? 0 : uint(0),param1,param2,param3);
      }
   }
}
