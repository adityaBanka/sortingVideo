class BubbleSort extends Unit
{
    int current_index;
    int sorted_until;
    BubbleSort(int number_of_elements)
    {
        super(number_of_elements, 3);
        this.current_index = 0;
        this.sorted_until = 0;
    }
    boolean update()
    {
        if(this.sorted_until < this.number_of_elements)
        {
            if(this.current_index < this.number_of_elements - 1){
                if(this.elements[this.current_index].getValue() > this.elements[this.current_index+1].getValue()){
                    int temp = this.elements[this.current_index].getValue();
                    this.elements[this.current_index].setValue(this.elements[this.current_index+1].getValue());
                    this.elements[this.current_index+1].setValue(temp);
                    return(true);
                }
                this.current_index ++;
            }
            else {
                this.sorted_until++;
                this.current_index = 0;
            }
        }
        else{
            return(true);
        }
        return(false);
    }
}