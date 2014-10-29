package nets.packets
{
    import flash.utils.ByteArray;
    import engine.support.ISerializable;
    import engine.support.IPacket;
    import engine.net.packet.PacketFactory;
    /** 
    *获得开服嘉年华第一奖励信息
    */
    public class PacketCSGetServerStartFirstPrizeInfo implements IPacket
    {
        /**
        *id
        */
        public static const id:int = 39804;

        public function GetId():int{return id;}
        public function Serialize(ar:ByteArray):void
        {
            ar.writeInt(GetId());
        }
        public function Deserialize(ar:ByteArray):void
        {
        }
    }
}
