class SelectionSort extends Unit
{
    int current_index;
    int runnerIndex;
    int highestIndex;
    SelectionSort(int number_of_elements)
    {
        super(number_of_elements, 3);
        this.current_index = 0;
        this.runnerIndex = 0;
        this.highestIndex = 0;
    }
    boolean update()
    {
        if(current_index < number_of_elements)
        {
            if(runnerIndex < number_of_elements)
            {
                if(elements[runnerIndex].getValue() < elements[highestIndex].getValue())
                {
                    highestIndex = runnerIndex;
                }
                runnerIndex++;
            }
            else{
                int temp = elements[current_index].getValue();
                elements[current_index].setValue(elements[highestIndex].getValue());
                elements[highestIndex].setValue(temp);
                current_index++;
                runnerIndex = current_index;
                highestIndex = current_index;
                return true;
            }
        }
        else{
            return true;
        }
        return false;
    }
}