
internal class Program
{
    private static void Main(string[] args)
    {
        int[,] arr = new int[3, 3];
        int i, j, sum = 0;
        for (i=0; i<3; ++i)
        {
            for(j=0; j<3; ++j)
                arr[i,j] = Convert.ToInt32(Console.ReadLine());
        }
        for (i = 0; i < 3; ++i) 
        {
            Console.Write("x[{0} ", i);
            Console.Write(", {0}", i);
            Console.Write("] = {0}\t", arr[i,i]);
        }
        for(i = 0;i < 3; ++i)
        {
            sum += arr[i,i];
        }
        Console.WriteLine("TheSum = {0}", sum);
    }
}