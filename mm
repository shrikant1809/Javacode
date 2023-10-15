// Definition for singly-linked list.
function Node(data){
    this.data = data;
    this.next = null;
}

module.exports = { 
    //param A : head node of linked list
    //param B : integer
    //param C : integer
    //return the head node in the linked list
    solve : function(A, B, C){
        // If position is 0, insert at head
        if(C == 0){
            let newNode = new Node(B);
            newNode.next = A;
            return newNode;
        }
        
        let counter = 1;
        let current = A;

        // Traverse the list till either the end of the list or till we hit the desired position
        while(current.next !== null && counter < C){
            current = current.next;
            counter++;
        }

        // Insert the new node at the current position
        let newNode = new Node(B);
        newNode.next = current.next;
        current.next = newNode;

        return A;
    }
};
