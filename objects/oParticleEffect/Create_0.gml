/// @description 
width = room_width;
height = room_height;

repeat(100){
	spawnX = random_range(0, width);
	spawnY = random_range(0, height);
	instance_create_layer(spawnX, spawnY, "System", oDust1);
}
repeat(100){
	spawnX = random_range(0, width);
	spawnY = random_range(0, height);
	instance_create_layer(spawnX, spawnY, "System", oDust2);
}