package nets.packets
{
    import flash.utils.ByteArray;
    import engine.support.ISerializable;
    import engine.support.IPacket;
    import engine.net.packet.PacketFactory;
    /** 
    *使用焰火
    */
    public class PacketCSUseFirework implements IPacket
    {
        /**
        *id
        */
        public static const id:int = 54015;
        /** 
        *祝福内容信息
        */
        public var msg:String = new String();
        /** 
        *祝福类型 1 2 3
        */
        public var sort:int;

        public function GetId():int{return id;}
        public function Serialize(ar:ByteArray):void
        {
            ar.writeInt(GetId());
            PacketFactory.Instance.WriteString(ar, msg, 256);
            ar.writeInt(sort);
        }
        public function Deserialize(ar:ByteArray):void
        {
            var msgLength:int = ar.readInt();
            msg = ar.readMultiByte(msgLength,PacketFactory.Instance.GetCharSet());
            sort = ar.readInt();
        }
    }
}
