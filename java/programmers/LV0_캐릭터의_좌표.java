package org.example;

public class Main {

    public static void main(String[] args) {
        String[] keyinput1 = {"left", "right", "up", "right", "right"};
        String[] keyinput2 = {"down", "down", "down", "down", "down"};
        int[] board1 = {11,11};
        int[] board2 = {7,9};

        int[] result1 = solution(keyinput1, board1);
        int[] result2 = solution(keyinput2, board2);

        for(int i = 0; i < reMainsult1.length; i++) {
            System.out.print(result1[i] + " ");
        }
        System.out.println();

        for(int i = 0; i < result2.length; i++) {
            System.out.print(result2[i] + " ");
        }
        System.out.println();

    }

    public static int[] solution(String[] keyinput, int[] board)  {
        int[] result = {0, 0};
        int xSize = (board[0] - 1) / 2;
        int ySize = (board[1] - 1) / 2;

        for (int i = 0; i < keyinput.length; i++) {
            switch(keyinput[i]){
                case "up":
                    result[1] = result[1] + 1;
                    break;
                case "down":
                    result[1] = result[1] - 1;
                    break;
                case "left":
                    result[0] = result[0] - 1;
                    break;
                case "right":
                    result[0] = result[0] + 1;
                    break;
                default:
                    break;
            }
            if (Math.abs(result[0]) > xSize) {
                result[0] = (result[0] / Math.abs(result[0])) * xSize;
            }
            if (Math.abs(result[1]) > ySize) {
                result[1] = (result[1] / Math.abs(result[1])) * ySize;
            }
        }


        return result;
    }

}