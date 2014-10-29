package netc.process
{
import flash.utils.getQualifiedClassName;
import netc.Data;
import engine.net.process.PacketBaseProcess;
import engine.support.IPacket;
import nets.*;
import netc.packets2.PacketWSCPlayerOLMinuteChange2;

public class PacketWSCPlayerOLMinuteChangeProcess extends PacketBaseProcess
{
public function PacketWSCPlayerOLMinuteChangeProcess()
{
super();
}

override public function process(pack:IPacket):IPacket
{

var p:PacketWSCPlayerOLMinuteChange2 = pack as PacketWSCPlayerOLMinuteChange2;

if(null == p)
{
throw new Error("can not canver pack for " + getQualifiedClassName(pack));
}

return p;
}
}
}
