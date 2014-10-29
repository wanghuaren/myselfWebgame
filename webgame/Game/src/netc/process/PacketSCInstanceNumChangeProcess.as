package netc.process
{
	import flash.utils.getQualifiedClassName;
	
	import engine.net.process.PacketBaseProcess;
	import netc.packets2.PacketSCInstanceNumChange2;
	
	import engine.support.IPacket;
	
	public class PacketSCInstanceNumChangeProcess extends PacketBaseProcess
	{
		public function PacketSCInstanceNumChangeProcess()
		{
			super();
		}
		
		override public function process(pack:IPacket):IPacket
		{
			//step 1
			var p:PacketSCInstanceNumChange2 = pack as PacketSCInstanceNumChange2;
			
			if(null == p)
			{
				throw new Error("can not canver pack for " + getQualifiedClassName(pack));
			}
			
			//step 2		
			
			return p;
		}
	}
}