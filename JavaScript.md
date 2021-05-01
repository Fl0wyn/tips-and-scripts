# JavaScript

## Date et heure
```JavaScript
var today = new Date();

/* Date */
var dd = today.getDate();
var mm = today.getMonth() + 1;
var yy = today.getFullYear();
console.log((dd <= 9 ? '0' + dd : dd) + '/' + (mm <= 9 ? '0' + mm : mm) + '/' + yy);

/* Heure */
var HH = today.getHours();
var MM = today.getMinutes()
var SS = today.getSeconds()
console.log((HH <= 9 ? '0' + HH : HH) + ':' + (MM <= 9 ? '0' + MM : MM) + ':' + (SS <= 9 ? '0' + SS : SS));
```  

