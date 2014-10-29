package nets.packets
{
    import flash.utils.ByteArray;
    import engine.support.ISerializable;
    import engine.support.IPacket;
    import engine.net.packet.PacketFactory;
    /** 
    *角色进入场景
    */
    public class PacketCSRoleEnterMap implements IPacket
    {
        /**
        *id
        */
        public static const id:int = 1003;
        /** 
        *地图
        */
        public var mapid:int;
        /** 
        *地图X
        */
        public var mapx:int;
        /** 
        *地图Y
        */
        public var mapy:int;

        public function GetId():int{return id;}
        public function Serialize(ar:ByteArray):void
        {
            ar.writeInt(GetId());
            ar.writeInt(mapid);
            ar.writeInt(mapx);
            ar.writeInt(mapy);
        }
        public function Deserialize(ar:ByteArray):void
        {
            mapid = ar.readInt();
            mapx = ar.readInt();
            mapy = ar.readInt();
        }
    }
}
