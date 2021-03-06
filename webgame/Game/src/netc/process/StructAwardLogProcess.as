package netc.process
{
	import flash.utils.getQualifiedClassName;
	import engine.net.process.PacketBaseProcess;
	import engine.support.IPacket;
	import netc.packets2.StructAwardLog2;

	public class StructAwardLogProcess extends PacketBaseProcess
	{
		public function StructAwardLogProcess()
		{
			super();
		}

		override public function process(pack:IPacket):IPacket
		{
			var p:StructAwardLog2=pack as StructAwardLog2;
			if (null == p)
			{
				throw new Error("can not canver pack for " + getQualifiedClassName(pack));
			}
			return p;
		}
	}
}