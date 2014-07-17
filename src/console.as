package
{
	import flash.external.ExternalInterface;
	public class console
	{
		public static function log(value) {
			ExternalInterface.call("console.log", value);
		}
		public static function error(value) {
			ExternalInterface.call("console.error", value);
		}
	}
}