package nets.packets
{
    import flash.utils.ByteArray;
    import engine.support.ISerializable;
    import engine.support.IPacket;
    import engine.net.packet.PacketFactory;
    /** 
    *公会申请列表
    */
    public class PacketCSGuildReqList implements IPacket
    {
        /**
        *id
        */
        public static const id:int = 39212;
        /** 
        *公会
        */
        public var guildid:int;

        public function GetId():int{return id;}
        public function Serialize(ar:ByteArray):void
        {
            ar.writeInt(GetId());
            ar.writeInt(guildid);
        }
        public function Deserialize(ar:ByteArray):void
        {
            guildid = ar.readInt();
        }
    }
}
