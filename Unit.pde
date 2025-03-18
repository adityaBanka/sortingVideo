class Unit{
    int number_of_elements;
    Dandi[] elements;//number of elements and the potential states it might be in
    
    Unit(int number_of_elements, int states)
    {
        this.number_of_elements = number_of_elements;
        elements = new Dandi[number_of_elements]; //first for value and second for states
        for (int index = 0; index < number_of_elements; index++)
        {
            elements[index] = new Dandi();
        }
    }
    
    void show(int delta)
    {        
        // noStroke();
        stroke(#2b3541);
        float thickness = width / number_of_elements;
        int i = 0;
        for (Dandi pair : elements)
        {
            fill(pair.getColor());
            fill(#67D0DD);
            float delY = height - pair.getValue();
            rect(i++ * thickness, delY - delta, thickness, pair.getValue());
        }
    }
    
}