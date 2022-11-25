public class Main {

    public static void main(String[] args) {
        int[] numbers1 = {1,2,3};
        int[] numbers2 = {4,455,6,4,-1,45,6};
        String direction1 = "right";
        String direction2 = "left";

        int[] result1 = solution(numbers1, direction1);
        int[] result2 = solution(numbers2, direction2);

        for(int i = 0; i < result1.length; i++) {
            System.out.print(result1[i] + " ");
        }
        System.out.println();

        for(int i = 0; i < result2.length; i++) {
            System.out.print(result2[i] + " ");
        }
        System.out.println();

    }

    public static int[] solution(int[] numbers, String direction)  {
        int N = numbers.length; // 7
        int[] answer = new int[N]; // 0, 1, 2, 3, 4, 5, 6

        if (direction.equals("right")){
            for (int i = 1; i < N; i++){
                answer[i] = numbers[i-1];
            }
            answer[0] = numbers[N-1];
        } else {
            for (int i = 0; i < N - 1; i++) {
                answer[i] = numbers[i+1];
            }
            answer[N-1] = numbers[0];
        }

        return answer;
    }

}