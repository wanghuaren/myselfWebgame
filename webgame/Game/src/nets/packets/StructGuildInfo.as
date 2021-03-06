package nets.packets
{
    import flash.utils.ByteArray;
    import engine.support.ISerializable;
    import engine.net.packet.PacketFactory;
    /** 
    *公会信息
    */
    public class StructGuildInfo implements ISerializable
    {
        /** 
        *id
        */
        public var guildid:int;
        /** 
        *排名
        */
        public var sort:int;
        /** 
        *名称
        */
        public var name:String = new String();
        /** 
        *族长
        */
        public var leader:String = new String();
        /** 
        *族长VIP
        */
        public var vip:int;
        /** 
        *族长qq黄钻VIP
        */
        public var qqyellowvip:int;
        /** 
        *等级
        */
        public var level:int;
        /** 
        *成员
        */
        public var members:int;
        /** 
        *总战力
        */
        public var faight:Number;
        /** 
        *资金
        */
        public var money:Number;
        /** 
        *繁荣度
        */
        public var active:Number;
        /** 
        *公告
        */
        public var bull:String = new String();
        /** 
        *介绍
        */
        public var desc:String = new String();
        /** 
        *是否申请
        */
        public var state:int;
        /** 
        *自动加入
        */
        public var autoenter:int;
        /** 
        *礼包，0表示未领，1表示已领，最低位开始依次对应等级礼包
        */
        public var prize:int;
        /** 
        *家族阵营
        */
        public var campid:int;
        /** 
        *家族屠龙点
        */
        public var fightpoint:int;
        /** 
        *家族屠龙BOSS等级
        */
        public var fightBossLevel:int;
        /** 
        *家族屠龙BOSS召唤状态
        */
        public var fightBossState:int;
        /** 
        *是否修改名称
        */
        public var can_changename:int;

        public function Serialize(ar:ByteArray):void
        {
            ar.writeInt(guildid);
            ar.writeInt(sort);
            PacketFactory.Instance.WriteString(ar, name, 32);
            PacketFactory.Instance.WriteString(ar, leader, 128);
            ar.writeInt(vip);
            ar.writeInt(qqyellowvip);
            ar.writeInt(level);
            ar.writeInt(members);
            ar.writeDouble(faight);
            ar.writeDouble(money);
            ar.writeDouble(active);
            PacketFactory.Instance.WriteString(ar, bull, 256);
            PacketFactory.Instance.WriteString(ar, desc, 256);
            ar.writeInt(state);
            ar.writeInt(autoenter);
            ar.writeInt(prize);
            ar.writeInt(campid);
            ar.writeInt(fightpoint);
            ar.writeInt(fightBossLevel);
            ar.writeInt(fightBossState);
            ar.writeInt(can_changename);
        }
        public function Deserialize(ar:ByteArray):void
        {
            guildid = ar.readInt();
            sort = ar.readInt();
            var nameLength:int = ar.readInt();
            name = ar.readMultiByte(nameLength,PacketFactory.Instance.GetCharSet());
            var leaderLength:int = ar.readInt();
            leader = ar.readMultiByte(leaderLength,PacketFactory.Instance.GetCharSet());
            vip = ar.readInt();
            qqyellowvip = ar.readInt();
            level = ar.readInt();
            members = ar.readInt();
            faight = ar.readDouble();
            money = ar.readDouble();
            active = ar.readDouble();
            var bullLength:int = ar.readInt();
            bull = ar.readMultiByte(bullLength,PacketFactory.Instance.GetCharSet());
            var descLength:int = ar.readInt();
            desc = ar.readMultiByte(descLength,PacketFactory.Instance.GetCharSet());
            state = ar.readInt();
            autoenter = ar.readInt();
            prize = ar.readInt();
            campid = ar.readInt();
            fightpoint = ar.readInt();
            fightBossLevel = ar.readInt();
            fightBossState = ar.readInt();
            can_changename = ar.readInt();
        }
    }
}
