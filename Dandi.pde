class Dandi
{
    private int value;
    private boolean isSorted;
    private color colour;
    
    Dandi()
    {
        this.value = int(random(0, 500));
        this.isSorted = false;
        this.colour = color(int(random(0, 255)), int(random(0, 255)), int(random(0, 255)));
        this.colour = color(#67D0DD);
    }
    Dandi(int value)
    {
        this.value = value;
        this.isSorted = false;
        this.colour = color(int(random(0, 255)), int(random(0, 255)), int(random(0, 255)));
        this.colour = color(#67D0DD);
    }
    Dandi(int value, color colour)
    {
        this.value = value;
        this.isSorted = false;
        this.colour = colour;
    }
    
    int getValue() {
        return(this.value);
    }
    boolean isSorted() {
        return(isSorted);
    }
    color getColor() {
        return(this.colour);
    }
    void setValue(int value) {
        this.value = value;
    }
    void setSortedState(boolean state) {
        this.isSorted = state;
    }
    void setColor(color colour) {
        this.colour = colour;
    }
}