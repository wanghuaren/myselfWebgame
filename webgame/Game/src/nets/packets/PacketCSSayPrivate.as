package nets.packets
{
    import flash.utils.ByteArray;
    import engine.support.ISerializable;
    import engine.support.IPacket;
    import engine.net.packet.PacketFactory;
    /** 
    *私人聊天
    */
    public class PacketCSSayPrivate implements IPacket
    {
        /**
        *id
        */
        public static const id:int = 10006;
        /** 
        *0角色 123伙伴
        */
        public var type:int;
        /** 
        *聊天对象
        */
        public var userid:int;
        /** 
        *聊天对象姓名
        */
        public var username:String = new String();
        /** 
        *问题内容
        */
        public var content:String = new String();
        /** 
        *装备位置
        */
        public var arrItempos:Vector.<int> = new Vector.<int>();

        public function GetId():int{return id;}
        public function Serialize(ar:ByteArray):void
        {
            ar.writeInt(GetId());
            ar.writeInt(type);
            ar.writeInt(userid);
            PacketFactory.Instance.WriteString(ar, username, 64);
            PacketFactory.Instance.WriteString(ar, content, 512);
            ar.writeInt(arrItempos.length);
            for each (var positem:int in arrItempos)
            {
                ar.writeInt(positem);
            }
        }
        public function Deserialize(ar:ByteArray):void
        {
            type = ar.readInt();
            userid = ar.readInt();
            var usernameLength:int = ar.readInt();
            username = ar.readMultiByte(usernameLength,PacketFactory.Instance.GetCharSet());
            var contentLength:int = ar.readInt();
            content = ar.readMultiByte(contentLength,PacketFactory.Instance.GetCharSet());
            arrItempos= new  Vector.<int>();
            var posLength:int = ar.readInt();
            for (var ipos:int=0;ipos<posLength; ++ipos)
            {
                arrItempos.push(ar.readInt());
            }
        }
    }
}
