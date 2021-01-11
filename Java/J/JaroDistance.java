class Main {
  public static double jaroDistance(String s, String t) {
	int sLen = s.length();
        int tLen = t.length();
 
        if (sLen == 0 && tLen == 0) return 1;
 
        int distanceMatch = Integer.max(sLen, tLen) / 2 - 1;
 
        boolean[] sMatches = new boolean[sLen];
        boolean[] tMatches = new boolean[tLen];
 
        int matches = 0;
        int transpositions = 0;
 
        for (int i = 0; i < sLen; i++) {
            int start = Integer.max(0, i-distanceMatch);
            int end = Integer.min(i + distanceMatch + 1, tLen);
 
            for (int j = start; j < end; j++) {
                if (tMatches[j]) continue;
                if (s.charAt(i) != t.charAt(j)) continue;
                sMatches[i] = true;
                tMatches[j] = true;
                matches++;
                break;
            }
        }

	if (matches == 0) return 0;
 
        int k = 0;
        for (int i = 0; i < sLen; i++) {
            if (!sMatches[i]) continue;
            while (!tMatches[k]) k++;
            if (s.charAt(i) != t.charAt(k)) transpositions++;
            k++;
        }
 
        return (((double)matches / sLen) +
                ((double)matches / tLen) +
                (((double)matches - transpositions / 2.0) / matches)) / 3.0;
	}


	public static void main(String[] args) {
    		System.out.println(jaroDistance("JOHN", "DOE"));
    		System.out.println(jaroDistance("JOHN", "SNOW"));
    		System.out.println(jaroDistance("JELLYFISH", "SMELLYFISH"));
 	}
}
