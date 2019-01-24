# Luova ohjelmointi 7A

Hello world! Tervetuloa luovaan ohjelmointiin.
Voit seurata näitä ohjeita omatoimisesti tai mennä eteenpäin samaan tahtiin kuin opettaja.

## Mitä teen ensin?

Luo tunnukset openprocessing.org -sivulle. [Openprocessing](http://www.openprocessing.org)
<p>Aloita sitten klikkaamalla "Create a Sketch". Näet koodia. Aja koodi klikkaamalla play-nappia. 
<p>Palaa takaisin koodiin ja lisää 

```
ellipse(mouseX, mouseY, 20, 20);
```
-rivin alle rivi 
```
fill(100, 150, 50);
```
Mitä tapahtuu?
<br>Kokeile muuttaa fill-rivin <i>attribuutteja</i>. Mitä jos vaihdat jonkin tilalle "mouseX" tai "mouseY"?

### Esimerkkikoodi

Kopioi tämä koodi Processing-ikkunaasi ja testaa mitä se tekee:

```
size(600,400); //piirtoalueen koko pikseleinä
background(200); //taustan väri. Yksi luku merkitsee harmaasävyä, kolme lukua merkitsee RGB-arvoa.
stroke(120,0,0); //viivan väri RGB-arvona
fill(180,0,100); //täyttöväri RGB-arvona
ellipse(300,200,40,40); //ensin koordinaatit, johon piirretään, ja sitten ellipsin koko pikseleinä
```
Ellipsin lisäksi voi piirtää muitakin muotoja: rect (suorakulmio), triangle (kolmio), point (piste), line (viiva).
<br>Luvut merkitsevät eri asioita. Lue koodin kommentit eli //näin kirjoitetut jutut tarkasti, niin saat selville, mitä!
<p>Cheat Sheet -tiedostosta löydät eri muodoille annettavat attribuutit. <b>Kysy neuvoa, jos et ymmärrä!</b>

## Tehtävä

Piirrä oma kuva (tai omakuva) eri muotoja ja värejä hyödyntäen! 

# 2. tunti. Animaatiota! Liikkuvaa kuvaa!

Jotta piirros saadaan liikkumaan, koodi täytyy kirjoittaa hieman eri tavalla. Tarvitaan kaksi <b>lohkoa</b>. 
```
void setup(){

}

void draw() {

}
```
Tee uusi sketch ja kopioi koodi sinne. 

## Authors

**Salli Kulmala** 

**Teppo Harju**

