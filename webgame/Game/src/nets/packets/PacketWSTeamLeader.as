package nets.packets
{
    import flash.utils.ByteArray;
    import engine.support.ISerializable;
    import engine.support.IPacket;
    import engine.net.packet.PacketFactory;
    /** 
    *移交队长
    */
    public class PacketWSTeamLeader implements IPacket
    {
        /**
        *id
        */
        public static const id:int = 18019;
        /** 
        *角色ID
        */
        public var roleid:int;

        public function GetId():int{return id;}
        public function Serialize(ar:ByteArray):void
        {
            ar.writeInt(GetId());
            ar.writeInt(roleid);
        }
        public function Deserialize(ar:ByteArray):void
        {
            roleid = ar.readInt();
        }
    }
}
