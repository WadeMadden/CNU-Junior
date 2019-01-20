using System;
using System.Collections.Generic;
using System.Text;

namespace Program360
{
    public class Castles
    {
        
        private static int diffOfTaxes = 0;
        

        public static double Distance(uint row1, uint col1, uint row2, uint col2)
        {
            double row_1 = checked((int)row1);
            double row_2 = checked((int)row2);
            double col_1 = checked((int)col1);
            double col_2 = checked((int)col2);

            double distFormRows = Math.Pow((row_1 - row_2), 2);
            double distFormCols = Math.Pow((col_1 - col_2), 2);
            double distForm = Math.Sqrt((distFormRows + distFormCols));
            return distForm;
        }


        public static string DataAnalysis(uint antiCastleRow, uint antiCastleCol, uint castleRow, uint castleCol, uint[,] grid, string prevAns)
        {
            int antiTax = 0;
            int castleTax = 0;
            string result = prevAns;
            for (uint arrayDataRow = 0; arrayDataRow < grid.GetLength(0); arrayDataRow++)
            {
                for (uint arrayDataCol = 0; arrayDataCol < grid.GetLength(1); arrayDataCol++)
                {
                    double antiDistForm = Distance(antiCastleRow, antiCastleCol, arrayDataRow, arrayDataCol);
                    double castleDistForm = Distance(castleRow, castleCol, arrayDataRow, arrayDataCol);
                    if ((antiDistForm < castleDistForm) && (antiDistForm < 6))
                    {
                        antiTax += checked((int)grid[arrayDataRow, arrayDataCol]);
                    }
                    else if ((castleDistForm < antiDistForm) && (castleDistForm <= 6))
                    {
                        castleTax += checked((int)grid[arrayDataRow, arrayDataCol]);
                    }
                    
                }
            }
            int diff = -1;
            if (castleTax > antiTax)
            {
                diff = checked((int)(castleTax - antiTax));
            }
            if (diff > diffOfTaxes)
            {
                result = string.Format("Your castle at ({0},{1}) earns {2}. Your nemesis' castle at ({3},{4}) earns {5}.", castleRow, castleCol, castleTax, antiCastleRow, antiCastleCol, antiTax);
                diffOfTaxes = diff;
            }
            
            return result;
        }
        public static string AntiCastleAndCastleRowsAndColumns(uint[,] grid, string prevAns)
        {
            string result = "";
            for (uint antiCastleRow = 0; antiCastleRow < grid.GetLength(0); antiCastleRow++)
            {
                for (uint antiCastleCol = 0; antiCastleCol < grid.GetLength(1); antiCastleCol++)
                {
                    for (uint castleRow = 0; castleRow < grid.GetLength(0); castleRow++)
                    {
                        for (uint castleCol = 0; castleCol < grid.GetLength(1); castleCol++)
                        {
                             if(Distance(antiCastleRow,antiCastleCol,castleRow,castleCol)>3)
                            {
                                if (grid[antiCastleRow, antiCastleCol] != 0 && grid[castleRow, castleCol] != 0)
                                {
                                    result = DataAnalysis(antiCastleRow, antiCastleCol, castleRow, castleCol, grid, prevAns);
                                    prevAns = result;
                                }
                            }
                        }
                    }
                }
            }
            return prevAns;
        }

        public static string Process(uint[,] grid)
        {
            //Console.WriteLine("Test");
            //Console.ReadLine();
            // Your program begins here!
            // you can add any other methods & classes if needed; but
            // you must not change the declaration of this method.
            string prevAns = "";
            diffOfTaxes = 0;
            
            string finalResult = AntiCastleAndCastleRowsAndColumns(grid, prevAns);


            
            return finalResult;
        }

        static void Main(string[] args)
        {
        }
    }
}
