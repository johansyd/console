package
{
	import flash.events.Event;
	import flash.events.TimerEvent;
	import flash.external.ExternalInterface;
	import flash.utils.Timer;
	public class console
	{
		public static function log(value):void {
			console.call(['console.log', value]);
		}
		public static function error(value):void {
			console.call(['console.error', value]);
		}
		public static function alert(value):void {
			console.call(['setTimeout', 'alert("' + String(value) + '");', 3]);
		}
		private static function call(args:Array, async:Boolean = true):void {
			if (async) {
				var asyncTimer:Timer = new Timer(10, 1);
				asyncTimer.addEventListener(TimerEvent.TIMER, 
					function(event:Event):void
					{
						asyncTimer.removeEventListener(TimerEvent.TIMER, arguments.callee);
						ExternalInterface.call.apply(ExternalInterface, args);
					}
				);
				asyncTimer.start();
				return;
			}
			ExternalInterface.call.apply(ExternalInterface, args);
		}
	}
}
