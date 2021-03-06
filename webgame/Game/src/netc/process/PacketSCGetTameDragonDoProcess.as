package netc.process
{
	import flash.utils.getQualifiedClassName;
	import engine.net.process.PacketBaseProcess;
	import engine.support.IPacket;
	import netc.packets2.PacketSCGetTameDragonDo2;

	public class PacketSCGetTameDragonDoProcess extends PacketBaseProcess
	{
		public function PacketSCGetTameDragonDoProcess()
		{
			super();
		}

		override public function process(pack:IPacket):IPacket
		{
			var p:PacketSCGetTameDragonDo2=pack as PacketSCGetTameDragonDo2;
			if (null == p)
			{
				throw new Error("can not canver pack for " + getQualifiedClassName(pack));
			}
			return p;
		}
	}
}