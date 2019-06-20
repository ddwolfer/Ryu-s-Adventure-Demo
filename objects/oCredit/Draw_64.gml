draw_set_halign(fa_center);
draw_set_font(f);
BadEndTxt = "Thank you for playing!!\n\n\n\nProgramming\n\nChowDog @yangerplato\nDwolf @Peter2314888Y\n\n\n\nLevel Design\n\nChowDog @yangerplato\nDwolf @Peter2314888Y\n\n\n\nArt and Character Design" +
"\n\nSam @s4m_ur4i\n\n\n\nMusic\n\nYouFulca @YouFulca\n\n\n\nPlease try again to find the good ending!!"
GoodEndTxt = "Thank you for playing!!\n\n\n\nProgramming\n\nChowDog @yangerplato\nDwolf @Peter2314888Y\n\n\n\nLevel Design\n\nChowDog @yangerplato\nDwolf @Peter2314888Y\n\n\n\nArt and Character Design" +
"\n\nSam @s4m_ur4i\n\n\n\nMusic\n\nYouFulca @YouFulca\n\n\n\nPlease try again to find the good ending!!"
if(keyboard_check(vk_anykey)){
	scrollSpeed = 3;
}else{
	scrollSpeed = 1;
}
i -= scrollSpeed;

if(room == BadEnding){
	draw_text(width / 2, i, BadEndTxt);
	if(i <= -1000) room_goto(rTitle);
}
