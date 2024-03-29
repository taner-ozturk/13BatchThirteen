public class RankHandler {
    public string rankPrize(integer rank){
        string prize = '';
        if (rank == 1) {
            prize = 'Gold';
        } else if (rank == 2) {
            prize = 'Silver';
        } else if (rank == 3) {
            prize = 'Bronze';
        } else {
            if (rank <= 10) {
                prize = 'Top 10, congratulation';
            } else {
                prize = 'Thank you for participation';
            }
        }

        return prize;
    }
    public string tearnaryTest(){
        integer a = 3;
        integer b = 5;
        integer c = 4;
        integer d = 2;
      return  a>b ? 'evet' : a>c ? 'evet': a>d ? 'evet a, d den büyük': 'HAyır';
    }

    public string rankPrizeSwitch(integer rank){
        string prize = '';
        switch on rank {
            when 1 {
                prize = 'Gold';
            }
            when 2{
                prize = 'Silver';
            }
            when 3{
                prize = 'Bronze';
            }
            when 4,5,6,7,8,9,10{
                prize = 'Top 10';
            }
            when else {
                    prize = 'Good job buddy';
            }
        }

        return prize;
    }
}