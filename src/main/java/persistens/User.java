package persistens;

public class User {

    private int kundenr;
    private String navn;

    public User() {
    }

    public User(String navn) {
        this.navn = navn;
    }

    public int getKundenr() {
        return kundenr;
    }

    public void setKundenr(int kundenr) {
        this.kundenr = kundenr;
    }

    public String getNavn() {
        return navn;
    }

    public void setNavn(String navn) {
        this.navn = navn;
    }
}
