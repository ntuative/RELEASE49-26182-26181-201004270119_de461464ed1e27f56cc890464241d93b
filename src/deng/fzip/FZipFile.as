package deng.fzip
{
   import deng.utils.ChecksumUtil;
   import flash.events.EventDispatcher;
   import flash.utils.*;
   
   public class FZipFile
   {
      
      public static const const_595:int = 8;
      
      public static const const_1443:int = 10;
      
      public static const const_1195:int = 6;
      
      private static var var_1048:Boolean = describeType(ByteArray).factory.method.(@name == "uncompress").hasComplexContent();
      
      public static const const_1274:int = 0;
      
      public static const const_1573:int = 1;
      
      public static const const_1538:int = 2;
      
      public static const const_1468:int = 3;
      
      public static const const_1494:int = 4;
      
      public static const const_1610:int = 5;
      
      public static const const_1587:int = 9;
      
      public static const const_1592:int = 7;
       
      
      private var var_177:uint = 0;
      
      private var var_1049:uint = 0;
      
      private var var_718:Date;
      
      private var var_2024:int = -1;
      
      private var var_94:Function;
      
      private var var_513:Boolean = false;
      
      private var _eventDispatcher:EventDispatcher;
      
      private var var_2324:int = -1;
      
      private var var_1282:uint = 0;
      
      private var var_2022:String = "";
      
      private var _extraFields:Dictionary;
      
      private var var_874:uint;
      
      private var var_20:ByteArray;
      
      private var var_717:uint;
      
      private var var_1525:Boolean = false;
      
      private var var_2325:int = -1;
      
      private var var_1524:String = "2.0";
      
      private var var_178:Boolean = false;
      
      private var var_2023:Boolean = false;
      
      private var var_368:String;
      
      private var var_590:uint = 0;
      
      private var var_1281:int = 0;
      
      private var var_426:String = "";
      
      private var var_716:int = 8;
      
      private var var_1526:Boolean = false;
      
      public function FZipFile(param1:EventDispatcher, param2:String = "utf-8")
      {
         var_94 = parseFileHead;
         super();
         var_368 = param2;
         _eventDispatcher = param1;
         _extraFields = new Dictionary();
         var_20 = new ByteArray();
         var_20.endian = Endian.BIG_ENDIAN;
      }
      
      public function get sizeUncompressed() : uint
      {
         return var_590;
      }
      
      public function set filename(param1:String) : void
      {
         var_426 = param1;
      }
      
      protected function uncompress() : void
      {
         if(var_178 && false)
         {
            var_20.position = 0;
            if(var_1048)
            {
               var_20.uncompress.apply(var_20,["deflate"]);
            }
            else
            {
               var_20.uncompress();
            }
            var_20.position = 0;
            var_178 = false;
         }
      }
      
      public function get filename() : String
      {
         return var_426;
      }
      
      public function get date() : Date
      {
         return var_718;
      }
      
      function method_1(param1:IDataInput) : Boolean
      {
         while(param1.bytesAvailable && var_94(param1))
         {
         }
         return var_94 === parseFileIdle;
      }
      
      private function parseFileContent(param1:IDataInput) : Boolean
      {
         if(var_1526)
         {
            var_94 = parseFileIdle;
            _eventDispatcher.dispatchEvent(new FZipErrorEvent(FZipErrorEvent.const_123,"Data descriptors are not supported."));
            return false;
         }
         if(var_177 == 0)
         {
            var_94 = parseFileIdle;
         }
         else
         {
            if(param1.bytesAvailable < var_177)
            {
               return false;
            }
            parseContent(param1);
            var_94 = parseFileIdle;
         }
         return true;
      }
      
      public function get versionNumber() : String
      {
         return var_1524;
      }
      
      public function getContentAsString(param1:Boolean = true, param2:String = "utf-8") : String
      {
         var _loc3_:* = null;
         if(var_178)
         {
            uncompress();
         }
         var_20.position = 0;
         if(param2 == "utf-8")
         {
            _loc3_ = var_20.readUTFBytes(var_20.bytesAvailable);
         }
         else
         {
            _loc3_ = var_20.readMultiByte(var_20.bytesAvailable,param2);
         }
         var_20.position = 0;
         if(param1)
         {
            compress();
         }
         return _loc3_;
      }
      
      private function parseFileIdle(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function parseContent(param1:IDataInput) : void
      {
         var _loc2_:* = 0;
         if(var_716 === const_595 && !var_1525)
         {
            if(var_1048)
            {
               param1.readBytes(var_20,0,var_177);
            }
            else
            {
               if(!var_513)
               {
                  _eventDispatcher.dispatchEvent(new FZipErrorEvent(FZipErrorEvent.const_123,"Adler32 checksum not found."));
                  return;
               }
               var_20.writeByte(120);
               _loc2_ = uint(~var_2024 << 6 & 192);
               _loc2_ += 31 - (30720 | _loc2_) % 31;
               var_20.writeByte(_loc2_);
               param1.readBytes(var_20,2,var_177);
               var_20.position = var_20.length;
               var_20.writeUnsignedInt(var_874);
            }
            var_178 = true;
         }
         else
         {
            if(var_716 != const_1274)
            {
               _eventDispatcher.dispatchEvent(new FZipErrorEvent(FZipErrorEvent.const_123,"Compression method " + var_716 + " is not supported."));
               return;
            }
            param1.readBytes(var_20,0,var_177);
            var_178 = false;
         }
         var_20.position = 0;
      }
      
      private function parseFileHead(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= 30)
         {
            parseHead(param1);
            if(var_1049 + var_1282 > 0)
            {
               var_94 = parseFileHeadExt;
            }
            else
            {
               var_94 = parseFileContent;
            }
            return true;
         }
         return false;
      }
      
      public function setContentAsString(param1:String, param2:String = "utf-8") : void
      {
         var_20.length = 0;
         var_20.position = 0;
         var_178 = false;
         if(param1 != null && param1.length > 0)
         {
            if(param2 == "utf-8")
            {
               var_20.writeUTFBytes(param1);
            }
            else
            {
               var_20.writeMultiByte(param1,param2);
            }
            var_717 = ChecksumUtil.CRC32(var_20);
            var_513 = false;
         }
         compress();
      }
      
      public function set date(param1:Date) : void
      {
         var_718 = param1 != null ? param1 : new Date();
      }
      
      public function serialize(param1:IDataOutput, param2:Boolean, param3:Boolean = false, param4:uint = 0) : uint
      {
         var _loc10_:* = null;
         var _loc15_:* = null;
         var _loc16_:Boolean = false;
         if(param1 == null)
         {
            return 0;
         }
         if(param3)
         {
            param1.writeUnsignedInt(33639248);
            param1.writeShort(var_1281 << 8 | 20);
         }
         else
         {
            param1.writeUnsignedInt(67324752);
         }
         param1.writeShort(var_1281 << 8 | 20);
         param1.writeShort(var_368 == "utf-8" ? 2048 : 0);
         param1.writeShort(const_595);
         var _loc5_:Date = var_718 != null ? var_718 : new Date();
         var _loc6_:uint = uint(_loc5_.getSeconds()) | uint(_loc5_.getMinutes()) << 5 | uint(_loc5_.getHours()) << 11;
         var _loc7_:uint = uint(_loc5_.getDate()) | uint(_loc5_.getMonth() + 1) << 5 | uint(_loc5_.getFullYear() - 1980) << 9;
         param1.writeShort(_loc6_);
         param1.writeShort(_loc7_);
         param1.writeUnsignedInt(var_717);
         param1.writeUnsignedInt(var_177);
         param1.writeUnsignedInt(var_590);
         var _loc8_:ByteArray = new ByteArray();
         _loc8_.endian = Endian.LITTLE_ENDIAN;
         if(var_368 == "utf-8")
         {
            _loc8_.writeUTFBytes(var_426);
         }
         else
         {
            _loc8_.writeMultiByte(var_426,var_368);
         }
         var _loc9_:uint = _loc8_.position;
         for(_loc10_ in _extraFields)
         {
            _loc15_ = _extraFields[_loc10_] as ByteArray;
            if(_loc15_ != null)
            {
               _loc8_.writeShort(uint(_loc10_));
               _loc8_.writeShort(uint(_loc15_.length));
               _loc8_.writeBytes(_loc15_);
            }
         }
         if(param2)
         {
            if(!var_513)
            {
               _loc16_ = var_178;
               if(_loc16_)
               {
                  uncompress();
               }
               var_874 = ChecksumUtil.Adler32(var_20,0,var_20.length);
               var_513 = true;
               if(_loc16_)
               {
                  compress();
               }
            }
            _loc8_.writeShort(56026);
            _loc8_.writeShort(4);
            _loc8_.writeUnsignedInt(var_874);
         }
         var _loc11_:uint = _loc8_.position - _loc9_;
         if(param3 && false)
         {
            if(var_368 == "utf-8")
            {
               _loc8_.writeUTFBytes(var_2022);
            }
            else
            {
               _loc8_.writeMultiByte(var_2022,var_368);
            }
         }
         var _loc12_:uint = _loc8_.position - _loc9_ - _loc11_;
         param1.writeShort(_loc9_);
         param1.writeShort(_loc11_);
         if(param3)
         {
            param1.writeShort(_loc12_);
            param1.writeShort(0);
            param1.writeShort(0);
            param1.writeUnsignedInt(0);
            param1.writeUnsignedInt(param4);
         }
         if(_loc9_ + _loc11_ + _loc12_ > 0)
         {
            param1.writeBytes(_loc8_);
         }
         var _loc13_:int = 0;
         if(!param3 && var_177 > 0)
         {
            if(var_1048)
            {
               _loc13_ = 0;
               param1.writeBytes(var_20,0,_loc13_);
            }
            else
            {
               _loc13_ = 4294967290;
               param1.writeBytes(var_20,2,_loc13_);
            }
         }
         var _loc14_:uint = 30 + _loc9_ + _loc11_ + _loc12_ + _loc13_;
         if(param3)
         {
            _loc14_ += 16;
         }
         return _loc14_;
      }
      
      public function get sizeCompressed() : uint
      {
         return var_177;
      }
      
      protected function compress() : void
      {
         if(!var_178)
         {
            if(false)
            {
               var_20.position = 0;
               var_590 = var_20.length;
               if(var_1048)
               {
                  var_20.compress.apply(var_20,["deflate"]);
                  var_177 = var_20.length;
               }
               else
               {
                  var_20.compress();
                  var_177 = -6;
               }
               var_20.position = 0;
               var_178 = true;
            }
            else
            {
               var_177 = 0;
               var_590 = 0;
            }
         }
      }
      
      private function parseFileHeadExt(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= var_1049 + var_1282)
         {
            parseHeadExt(param1);
            var_94 = parseFileContent;
            return true;
         }
         return false;
      }
      
      protected function parseHeadExt(param1:IDataInput) : void
      {
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:* = null;
         if(var_368 == "utf-8")
         {
            var_426 = param1.readUTFBytes(var_1049);
         }
         else
         {
            var_426 = param1.readMultiByte(var_1049,var_368);
         }
         var _loc2_:uint = var_1282;
         while(_loc2_ > 4)
         {
            _loc3_ = uint(param1.readUnsignedShort());
            _loc4_ = uint(param1.readUnsignedShort());
            if(_loc4_ > _loc2_)
            {
               _eventDispatcher.dispatchEvent(new FZipErrorEvent(FZipErrorEvent.const_123,"Parse error in file " + var_426 + ": Extra field data size too big."));
               return;
            }
            if(_loc3_ === 56026 && _loc4_ === 4)
            {
               var_874 = param1.readUnsignedInt();
               var_513 = true;
            }
            else if(_loc4_ > 0)
            {
               _loc5_ = new ByteArray();
               param1.readBytes(_loc5_,0,_loc4_);
               _extraFields[_loc3_] = _loc5_;
            }
            _loc2_ -= _loc4_ + 4;
         }
         if(_loc2_ > 0)
         {
            param1.readBytes(new ByteArray(),0,_loc2_);
         }
      }
      
      protected function parseHead(param1:IDataInput) : void
      {
         var _loc2_:uint = param1.readUnsignedShort();
         var_1281 = _loc2_ >> 8;
         var_1524 = Math.floor((_loc2_ & 255) / 10) + "." + (_loc2_ & 255) % 10;
         var _loc3_:uint = param1.readUnsignedShort();
         var_716 = param1.readUnsignedShort();
         var_1525 = (_loc3_ & 1) !== 0;
         var_1526 = (_loc3_ & 8) !== 0;
         var_2023 = (_loc3_ & 32) !== 0;
         if((_loc3_ & 800) !== 0)
         {
            var_368 = "utf-8";
         }
         if(var_716 === const_1195)
         {
            var_2325 = (_loc3_ & 2) !== 0 ? 8192 : 4096;
            var_2324 = (_loc3_ & 4) !== 0 ? 3 : 2;
         }
         else if(var_716 === const_595)
         {
            var_2024 = (_loc3_ & 6) >> 1;
         }
         var _loc4_:uint = param1.readUnsignedShort();
         var _loc5_:uint = param1.readUnsignedShort();
         var _loc6_:* = _loc4_ & 31;
         var _loc7_:* = (_loc4_ & 2016) >> 5;
         var _loc8_:* = (_loc4_ & 63488) >> 11;
         var _loc9_:* = _loc5_ & 31;
         var _loc10_:* = (_loc5_ & 480) >> 5;
         var _loc11_:int = ((_loc5_ & 65024) >> 9) + 1980;
         var_718 = new Date(_loc11_,_loc10_ - 1,_loc9_,_loc8_,_loc7_,_loc6_,0);
         var_717 = param1.readUnsignedInt();
         var_177 = param1.readUnsignedInt();
         var_590 = param1.readUnsignedInt();
         var_1049 = param1.readUnsignedShort();
         var_1282 = param1.readUnsignedShort();
      }
      
      public function set content(param1:ByteArray) : void
      {
         if(param1 != null && param1.length > 0)
         {
            param1.position = 0;
            param1.readBytes(var_20,0,param1.length);
            var_717 = ChecksumUtil.CRC32(var_20);
            var_513 = false;
         }
         else
         {
            var_20.length = 0;
            var_20.position = 0;
            var_178 = false;
         }
         compress();
      }
      
      public function toString() : String
      {
         return "[FZipFile]\n  name:" + var_426 + "\n  date:" + var_718 + "\n  sizeCompressed:" + var_177 + "\n  sizeUncompressed:" + var_590 + "\n  versionHost:" + var_1281 + "\n  versionNumber:" + var_1524 + "\n  compressionMethod:" + var_716 + "\n  encrypted:" + var_1525 + "\n  hasDataDescriptor:" + var_1526 + "\n  hasCompressedPatchedData:" + var_2023 + "\n  filenameEncoding:" + var_368 + "\n  crc32:" + var_717.toString(16) + "\n  adler32:" + var_874.toString(16);
      }
      
      public function get content() : ByteArray
      {
         if(var_178)
         {
            uncompress();
         }
         return var_20;
      }
   }
}
