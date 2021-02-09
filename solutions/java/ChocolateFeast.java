public class ChocolateFeast{
	static int chocolateFeast(int n, int c, int m) {
        int wrappers = (int) Math.floor(n/c);
        int ate = wrappers;
        int aditPieces = 0;
        int remain = 0;

        while(wrappers >= m){
            aditPieces = (int) Math.floor(wrappers / m);
            remain = wrappers - aditPieces * m;
            ate = ate + aditPieces;
            remain = remain + aditPieces;
            wrappers = remain;
        }
        
        return ate;
    }
}