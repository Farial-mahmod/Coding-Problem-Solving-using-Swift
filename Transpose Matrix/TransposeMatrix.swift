/*
Description: Given a 2D integer array matrix, return the transpose of matrix. The transpose of a matrix is the matrix flipped over its main diagonal, switching the matrix's row and column indices.
Link: https://leetcode.com/problems/transpose-matrix/description/

*/

class Solution {
   func transpose(_ matrix: [[Int]]) -> [[Int]] {
        // calculating rows
        let rows = matrix.count
        // calculating columns
        let columns = matrix[0].count
        // initiating the matrix to be transposed
        var transposedMatrix: [[Int]] = Array(repeating: Array(repeating: 0, count: rows), count: columns)

        for i in 0..<rows {
            for j in 0..<columns {
              // exchanging the rows with the columns of the given matrix
                transposedMatrix[j][i] = matrix[i][j]
            }
        }
        
        return transposedMatrix
    }
}
