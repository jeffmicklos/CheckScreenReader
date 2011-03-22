package com.jeffmicklos {

	import flash.display.MovieClip;
	import flash.system.Capabilities;
	import flash.external.ExternalInterface;

	public class CheckScreenReader extends MovieClip {

		public function CheckScreenReader() {

			if(ExternalInterface.available) {
				setCookie();
			}

		}
		
		public function setCookie():void {

			ExternalInterface.call('alert', Capabilities.hasAccessibility);

		}

	}

}