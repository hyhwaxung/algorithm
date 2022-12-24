package org.example;

import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;

public class Main {

    public static void main(String[] args) {
        String[] id_list1 = {"muzi", "frodo", "apeach", "neo"};
        String[] id_list2 = {"con", "ryan"};

        String[] report1 = {"muzi frodo","apeach frodo","frodo neo","muzi neo","apeach muzi"};
        String[] report2 = {"ryan con", "ryan con", "ryan con", "ryan con"};

        int k1 = 2;
        int k2 = 3;

        int[] result1 = solution(id_list1, report1, k1);
        int[] result2 = solution(id_list2, report2, k2);

        for(int i = 0; i < result1.length; i++) {
            System.out.print(result1[i] + " ");
        }
        System.out.println();

        for(int i = 0; i < result2.length; i++) {
            System.out.print(result2[i] + " ");
        }
        System.out.println();

    }

    public static int[] solution(String[] id_list, String[] report, int k)  {
        int[] result = new int[id_list.length];

        HashMap<String, HashSet<String>> reportMap = new HashMap<>();
        HashMap<String, Integer> countMap = new HashMap<>();
        HashSet<String> reportSet = new HashSet<>(Arrays.asList(report));

        // "muzi", "frodo", "apeach", "neo"
        // 이용자 -> 신고자 가 중복은 없어야됨
        // report 에서 먼저 중복을 제거 ?
        for (String reportInfo : reportSet) {
            String[] ids = reportInfo.split(" ");
            String reporter = ids[0];
            String reported = ids[1];

            System.out.println("reporter : " + reporter);
            System.out.println("reported : " + reported);


            if(!reportMap.containsKey(reporter)){
                reportMap.put(reporter, new HashSet<String>());
            }
            reportMap.get(reporter).add(reported);
            countMap.put(reported, countMap.getOrDefault(reported, 0) + 1);

            System.out.println("reportMap : " + reportMap.toString());
            System.out.println("countMap : " + countMap.toString());
        }


        for (String reported : countMap.keySet()){
            System.out.println("reported : " + reported);
            System.out.println("count : " + countMap.get(reported));

            int count = countMap.get(reported);
            if(count >= k) {
                for (int i = 0; i < id_list.length; i++) {
                    if (reportMap.containsKey(id_list[i]) && reportMap.get(id_list[i]).contains(reported)) {

                        System.out.println("id : " + id_list[i]);

                        result[i]++;
                    }
                }
            }
        }

        return result;
    }

}