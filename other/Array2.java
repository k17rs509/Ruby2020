class Array2 {
    public static void main(String[] args){
        int[] ia = {10, 20, 30, 40};

        for(int i=0; i<ia.length; i++) {
            System.out.print(ia[i] + ",");
        }
        System.out.println();

        for(int i: ia) {
            System.out.print(i + ",");
        }
        System.out.println();

        String[] sa = { "Jan", "Feb", "Mar"};
        for(String s: sa) {
            System.out.print(s + "..");
        }
        System.out.println();
    }
}