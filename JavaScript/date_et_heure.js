/* Date et Heure */
new Date().toLocaleString();
// 16/07/2021 à 17:49:08

/* Date */
new Date().toLocaleDateString();
// 16/07/2021

/* Heure */
new Date().toLocaleTimeString();
// 17:49:08

/* Date et Heure Formatées */
function DateTimeFormat() {
    var DateTimeFormat = new Date()

    var DateFormat = DateTimeFormat.toLocaleDateString("fr-FR", {
        weekday: "long",
        year: "numeric",
        month: "long",
        day: "numeric",
    })

    var TimeFormat = DateTimeFormat.toLocaleTimeString().split(":", 2).join(':')

    console.log(DateFormat + ' ' + TimeFormat)
}

DateTimeFormat()
// vendredi 16 juillet 2021 17:48