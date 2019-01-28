# Luova ohjelmointi 7A

Hello world! Tervetuloa luovaan ohjelmointiin.
Voit seurata näitä ohjeita omatoimisesti tai mennä eteenpäin samaan tahtiin kuin opettaja.

## Mitä teen ensin?

Luo tunnukset openprocessing.org -sivulle. [Openprocessing](http://www.openprocessing.org)
<p>Aloita sitten klikkaamalla "Create a Sketch". Näet koodia. 
<p><b>HUOM! Klikkaa oikealta sivupalkista kohdasta mode "Processing.js"</b>

<p>Pyyhi kaikki valmis koodi pois ja kopioi seuraava koodi ikkunaan:
  

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
## Aloitus

Jotta piirros saadaan liikkumaan, koodi täytyy kirjoittaa hieman eri tavalla. Tarvitaan kaksi <b>lohkoa</b>. 


```
void setup() { 			//setup-osa tapahtuu ohjelmassa vain kerran
	fullScreen();
	background(100);

}

void draw() {			//draw-osa tapahtuu yhä uudelleen niin kauan, kunnes ohjelma lopetetaan
	ellipse(mouseX, mouseY, 20, 20);
}
```
  
<br>Aja koodi klikkaamalla play-nappia. 
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

<p>Voit taas leikkiä muodoilla ja väreillä, kuten viimekin tunnilla. Mutta miten asiat saisi liikkumaan itsestään, kuten animaatiossa?

### Toinen vaihe

Kuvan saa liikkumaan niin, että draw-lohkoa varten luodaan <b>muuttuja</b>, joka kasvaa tai vähenee sitä mukaa, kuin koodia ajetaan. 
<br> Muuttuja voi liittyä piirrettävän asian sijaintiin, väriin, ihan mihin vaan. Kokeillaan!

Luodaan ensin muuttuja. Kirjoita ihan ohjelman alkuun
```
int paikka = 1;
```
Sitten draw-lohkoon seuraava muutos (muut rivit ennallaan):
```
ellipse(paikka, paikka, 40, 40);
paikka = paikka + 1;
```
Koska ohjelma toistaa draw-lohkoa yhä uudelleen, paikka-muuttuja kasvaa jokaisella kierroksella yhdellä. Kokeile, mitä tapahtuu!

### Tehtävä

Kokeile, mitä kaikkea saat automatisoitua ja animoitua. Testaa rohkeasti juttuja, joita löydät Cheat sheetista.
<p><b>Vinkki!</b> Voit käyttää luvun tilalla funktiota Random(). Random arpoo luvun antamaltasi väliltä, tähän tapaan:

```  
ellipse(random(0,600), random(0,600), 40, 40);
```

## Authors

**Salli Kulmala** 

**Teppo Harju**

