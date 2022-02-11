using System;
using System.Collections.Generic;

class Programm 
{
    static void Main() 
    {
        int[] A = new int[] {-1, 2, 2, 3, 4, 5, 6, 7, 7, 7, 8, 10,5,1,4,6,67,34,67,-1, -1, -1};
        var Numbers = new Dictionary<int, int>();
        
        for (int i = 0; i < A.Length; i++) {
            if (!Numbers.ContainsKey(A[i])) {
                Numbers.Add(A[i], 1);
            } else {  
                Numbers[A[i]]++;
            }
        }
        
        foreach (var n in Numbers){
            if (n.Value > 1) {
                Console.WriteLine($"Значение: {n.Key}  Кол-во: {n.Value}");
            }
        }
    }
}
