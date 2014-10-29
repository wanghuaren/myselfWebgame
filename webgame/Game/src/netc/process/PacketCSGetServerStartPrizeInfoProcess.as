package netc.process
{
	import flash.utils.getQualifiedClassName;
	import engine.net.process.PacketBaseProcess;
	import engine.support.IPacket;
	import netc.packets2.PacketCSGetServerStartPrizeInfo2;

	public class PacketCSGetServerStartPrizeInfoProcess extends PacketBaseProcess
	{
		public function PacketCSGetServerStartPrizeInfoProcess()
		{
			super();
		}

		override public function process(pack:IPacket):IPacket
		{
			var p:PacketCSGetServerStartPrizeInfo2=pack as PacketCSGetServerStartPrizeInfo2;
			if (null == p)
			{
				throw new Error("can not canver pack for " + getQualifiedClassName(pack));
			}
			return p;
		}
	}
}