package nets.packets
{
    import flash.utils.ByteArray;
    import engine.support.ISerializable;
    import engine.support.IPacket;
    import engine.net.packet.PacketFactory;
    /** 
    *获得开服嘉年华参与奖励
    */
    public class PacketCSSetServerStartPrize implements IPacket
    {
        /**
        *id
        */
        public static const id:int = 39802;
        /** 
        *天数 从1开始
        */
        public var day:int;

        public function GetId():int{return id;}
        public function Serialize(ar:ByteArray):void
        {
            ar.writeInt(GetId());
            ar.writeInt(day);
        }
        public function Deserialize(ar:ByteArray):void
        {
            day = ar.readInt();
        }
    }
}
