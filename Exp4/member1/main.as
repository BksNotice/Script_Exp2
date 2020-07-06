package  {
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	import flash.events.KeyboardEvent;
	
	public class main extends MovieClip{
		
		var startPage:StartPage;
		var hillPage:HillPage;
		var pondPage:PondPage;
		var num:Number=1;
		
		public function main() {
			// constructor code
			startPage=new StartPage();
			hillPage=new HillPage();
			pondPage=new PondPage();
			addChild(startPage);
			
			//btn1表示山的切换按钮，btn2表示水的切换按钮
			startPage.btn1.addEventListener(MouseEvent.CLICK,onHillButtonClick);
			startPage.btn2.addEventListener(MouseEvent.CLICK,onPondButtonClick);
			hillPage.btn3.addEventListener(MouseEvent.CLICK,onBack3ButtonClick);
			pondPage.btn4.addEventListener(MouseEvent.CLICK,onBack4ButtonClick);
			startPage.largeBtn.addEventListener(MouseEvent.CLICK,onLargeButtonClick);
			startPage.smallBtn.addEventListener(MouseEvent.CLICK,onSmallButtonClick);
			
			
			//具体的事件处理函数
			function onHillButtonClick(event:MouseEvent):void{
				addChild(hillPage);
				removeChild(startPage);
				
			}
			
			function onPondButtonClick(event:MouseEvent):void{
				addChild(pondPage);
				removeChild(startPage);
			}
			
			//back的返回事件
			function onBack3ButtonClick(event:MouseEvent):void{
				addChild(startPage);
				removeChild(hillPage);
			}
			
			function onBack4ButtonClick(event:MouseEvent):void{
				addChild(startPage);
				removeChild(pondPage);
			}
			
			//元件的缩放
			function onLargeButtonClick(event:MouseEvent):void{
				num+=0.1;
				startPage.cat.scaleX*=num;
				startPage.cat.scaleY*=num;
			}
			
			function onSmallButtonClick(event:MouseEvent):void{
				num-=0.1;
				startPage.cat.scaleX*=num;
				startPage.cat.scaleY*=num;
			}
			
			
	
		}//main

	}//class
	
}//package
