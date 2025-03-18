import java.util.HashMap;

HashMap<String, Integer> margin = new HashMap<>();
HashMap<String, Integer> padding = new HashMap<>();

BubbleSort num1;
SelectionSort num2;


void setup() {
    fullScreen();
    // size(800, 800);

    margin.put("left", 10);
    margin.put("right", 10);
    margin.put("top", 10);
    margin.put("bottom", 10);

    padding.put("left", 10);
    padding.put("right", 10);
    padding.put("top", 10);
    padding.put("bottom", 10);
    //fullScreen();

    // num1 = new BubbleSort(1000);
    // num2 = new SelectionSort(1000);
    thread("setter1");
    thread("setter2");

    // noLoop();
    System.out.println("here");
}

void draw() {
    background(#12161b);
    num1.show(height/2);
    num2.show(0);

    // selectionSort
    for(int loops = 0; loops < 10; loops++){
        while(num2.update() == false);
    }
    // thread("num2.update");
    
    //bubbleSort
    for(int loops = 0; loops < 100; loops++){
        while(num1.update() == false);
    }
    
    delay(100);
}

void mousePressed(){
    loop();
    if(mouseButton == RIGHT)
    {
        thread("setter1");
        thread("setter2");
        noLoop();
    }
}

void setter1()
{
    num1 = new BubbleSort(500);
}
void setter2()
{
    num2 = new SelectionSort(500);
}