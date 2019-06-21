draw_set_halign(fa_center);
draw_set_font(f);
draw_set_color(c_white);
BadEndTxt = "Thank you for playing!!\n\n\n\nProgramming\n\nChowDog @yangerplato\nDwolf @Peter2314888Y\n\n\n\nLevel Design\n\nChowDog @yangerplato\nDwolf @Peter2314888Y\n\n\n\nArt and Character Design" +
"\n\nSam @s4m_ur4i\n\n\n\nMusic\n\nYouFulca @YouFulca\n\n\n\nPlease try again to find the good ending!!\n\nEntry for #AdvJam2019 on GameJolt"
GoodEndTxt = "Thank you for playing!!\n\n\n\nProgramming\n\nChowDog @yangerplato\nDwolf @Peter2314888Y\n\n\n\nLevel Design\n\nChowDog @yangerplato\nDwolf @Peter2314888Y\n\n\n\nArt and Character Design" +
"\n\nSam @s4m_ur4i\n\n\n\nMusic\n\nYouFulca @YouFulca\n\n\n\nEntry for #AdvJam2019 on GameJolt"
if(keyboard_check(vk_anykey)){
	scrollSpeed = 3;
}else{
	scrollSpeed = 1;
}


if(room == BadEnding){
	draw_text(width / 2, i, BadEndTxt);
	i -= scrollSpeed;
	if(i <= -1000) room_goto(rTitle);
}
if(room == rFinalFight && !instance_exists(oBoss)){
	j -= scrollSpeed;
	draw_text(width / 2, j, GoodEndTxt);
	if(j <= -1000) room_goto(rTitle);
}
