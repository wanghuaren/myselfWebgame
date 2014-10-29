package nets.packets
{
    import flash.utils.ByteArray;
    import engine.support.ISerializable;
    import engine.support.IPacket;
    import engine.net.packet.PacketFactory;
    /** 
    *进入server tower
    */
    public class PacketCSEntryServerTower implements IPacket
    {
        /**
        *id
        */
        public static const id:int = 41001;
        /** 
        *活动id
        */
        public var action_id:int;

        public function GetId():int{return id;}
        public function Serialize(ar:ByteArray):void
        {
            ar.writeInt(GetId());
            ar.writeInt(action_id);
        }
        public function Deserialize(ar:ByteArray):void
        {
            action_id = ar.readInt();
        }
    }
}
