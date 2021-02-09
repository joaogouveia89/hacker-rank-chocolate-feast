import kotlin.math.floor

// Complete the chocolateFeast function below.
fun chocolateFeast(n: Int, c: Int, m: Int): Int {
    var wrappers: Int = floor(n/c.toDouble()).toInt()
    var ate: Int = wrappers

    var aditPieces: Int
    var remain: Int

    while(wrappers >= m){
        aditPieces = floor(wrappers / m.toDouble()).toInt()
        remain = wrappers - (aditPieces * m)

        ate += aditPieces
        remain += aditPieces
        wrappers = remain
    }

    return ate
}