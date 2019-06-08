// Sets the resolution


//set global vars relating to resulotion
globalvar IDEAL_WIDTH, IDEAL_HEIGHT, ASPECT_RATIO, GUI_WIDTH, GUI_HEIGHT, HALF_GUI_WIDTH, HALF_GUI_HEIGHT;


//get display height and width and set ratio
display_height = display_get_height()
display_width = display_get_width()

IDEAL_WIDTH = 1024;

ASPECT_RATIO = display_width/display_height				// get the aspect ratio
IDEAL_HEIGHT = IDEAL_WIDTH/ASPECT_RATIO;				// scale the height to match the aspect ratio

    
//set the size of the GUI to match the proper width and height
GUI_WIDTH = IDEAL_WIDTH;
HALF_GUI_WIDTH = GUI_WIDTH / 2;							//very useful variable to save	
GUI_HEIGHT = IDEAL_HEIGHT
HALF_GUI_HEIGHT = GUI_HEIGHT / 2;						//very useful variable to save
display_set_gui_size(IDEAL_WIDTH,IDEAL_HEIGHT)


//Scaling and Centering the Window 
window_set_size(IDEAL_WIDTH, IDEAL_HEIGHT)
if (window_get_fullscreen() == false) {
   window_set_position((display_width - GUI_WIDTH) / 2, (display_height - GUI_HEIGHT) / 2);
}


// Scale the draw surface of the game to match the new resolution
surface_resize(application_surface, GUI_WIDTH, GUI_HEIGHT); 


