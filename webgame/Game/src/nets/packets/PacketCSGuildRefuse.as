package nets.packets
{
    import flash.utils.ByteArray;
    import engine.support.ISerializable;
    import engine.support.IPacket;
    import engine.net.packet.PacketFactory;
    /** 
    *拒绝申请
    */
    public class PacketCSGuildRefuse implements IPacket
    {
        /**
        *id
        */
        public static const id:int = 39210;
        /** 
        *公会
        */
        public var guildid:int;
        /** 
        *玩家
        */
        public var playerid:int;

        public function GetId():int{return id;}
        public function Serialize(ar:ByteArray):void
        {
            ar.writeInt(GetId());
            ar.writeInt(guildid);
            ar.writeInt(playerid);
        }
        public function Deserialize(ar:ByteArray):void
        {
            guildid = ar.readInt();
            playerid = ar.readInt();
        }
    }
}
