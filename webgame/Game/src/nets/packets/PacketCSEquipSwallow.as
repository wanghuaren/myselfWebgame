package nets.packets
{
    import flash.utils.ByteArray;
    import engine.support.ISerializable;
    import engine.support.IPacket;
    import engine.net.packet.PacketFactory;
    /** 
    *装备吞噬
    */
    public class PacketCSEquipSwallow implements IPacket
    {
        /**
        *id
        */
        public static const id:int = 15035;
        /** 
        *类型(0:角色，1~3:伙伴)
        */
        public var src_type:int;
        /** 
        *原装备位置
        */
        public var src_pos:int;
        /** 
        *类型(0:角色，1~3:伙伴)
        */
        public var des_type:int;
        /** 
        *目标装备(被吞噬)位置
        */
        public var des_pos:int;
        /** 
        *第几条属性(从0开始)
        */
        public var attr_idx:int;

        public function GetId():int{return id;}
        public function Serialize(ar:ByteArray):void
        {
            ar.writeInt(GetId());
            ar.writeInt(src_type);
            ar.writeInt(src_pos);
            ar.writeInt(des_type);
            ar.writeInt(des_pos);
            ar.writeInt(attr_idx);
        }
        public function Deserialize(ar:ByteArray):void
        {
            src_type = ar.readInt();
            src_pos = ar.readInt();
            des_type = ar.readInt();
            des_pos = ar.readInt();
            attr_idx = ar.readInt();
        }
    }
}
