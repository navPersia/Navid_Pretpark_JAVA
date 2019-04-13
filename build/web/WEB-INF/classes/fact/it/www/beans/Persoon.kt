class Persoon {
    constructor()

    public class Persoon(private var _voornaam: String, private var _familienaam: String)
    {
        var voornaam : String = _voornaam

        var familienaam : String = _familienaam

        override fun toString(): String {
            return familienaam.toUpperCase() + " " + voornaam.toLowerCase()
        }
    }

}
