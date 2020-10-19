# Luova ohjelmointi -Osa 1. 

Hello world! Tervetuloa luovaan ohjelmointiin.
Voit seurata näitä ohjeita omatoimisesti tai mennä eteenpäin samaan tahtiin kuin opettaja.
Tämän readme-tiedoston lisäksi voit tutustua muihin tiedostoihin: Cheat Sheet on tosi kätevä ja mukana on myös esimerkkikoodia.

## Mitä teen ensin?

Asenna Processing tietokoneelle. https://processing.org/download/ 
Vaihtoehtoisesti voit käyttää Openprocessingia selaimella: https://www.openprocessing.org/ Muista silloin valita editorissa kieleksi processing.
Avaa Processing-editori ja kopioi alla oleva koodi:

```
size(600,400); 			//piirtoalueen koko pikseleinä
background(200); 		//taustan väri. Yksi luku merkitsee harmaasävyä, kolme lukua merkitsee RGB-arvoa.
stroke(120,0,0); 		//viivan väri RGB-arvona
fill(180,0,100); 		//täyttöväri RGB-arvona
ellipse(300,200,40,40); 	//ensin koordinaatit, johon piirretään, ja sitten ellipsin koko pikseleinä
```
Aja koodi klikkaamalla Play-nappia koodin yläpuolelta!
<p>Ellipsin lisäksi voi piirtää muitakin muotoja: rect (suorakulmio), triangle (kolmio), point (piste), line (viiva).
<br>Luvut merkitsevät eri asioita. Lue koodin kommentit eli //näin kirjoitetut jutut tarkasti, niin saat selville, mitä!
<p>Cheat Sheet -tiedostosta löydät eri muodoille annettavat attribuutit. <b>Kysy neuvoa, jos et ymmärrä!</b>
<p> Värejä voi käsitellä RGB-arvoina mutta myös HSB on tutustumisen arvoinen. 
	Lue lisää väreistä: 
	https://processing.org/tutorials/color/
	https://processing.org/reference/colorMode_.html
	https://nycdoe-cs4all.github.io/units/1/lessons/lesson_3.2

## Tehtävä

Piirrä oma kuva (tai omakuva) eri muotoja ja värejä hyödyntäen! 

# Animaatiota! Liikkuvaa kuvaa!
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
<p>
<p>Aika kiva, mutta ympyrästä jää jälki taustaan. Jos haluat sen pois, lisää draw-lohkoon vielä background-rivi, joka on nyt setup-lohkossa. Näin tausta piirretään joka kierroksella uudelleen ja ympyrä pyyhkiytyy pois samalla. Testaa! 

### Tehtävä

Kokeile, mitä kaikkea saat automatisoitua ja animoitua. Testaa rohkeasti juttuja, joita löydät Cheat sheetista.

## Satunnaisuus
* Voit käyttää luvun tilalla funktiota random(). Random arpoo luvun antamaltasi väliltä, tähän tapaan:

```  
ellipse(random(0,600), random(0,600), 40, 40);
```
* Jos käytät randomia ja animaatiostasi tulee aivan liian nopea, voit laskea sen <b>frameratea</b>, joka on oletuksena 60 ruutua/sekunti. Kirjoita koodi setup-lohkoon.
```
frameRate(30);
```
## Vinkkejä
* Voit kokeilla mutojen liikuttelua kierrolla vaikkapa seuraavalla koodipätkällä:
```
float angle; //Määritellään muuttuja angle

void setup() {
  size(740, 560);
  noStroke();
  fill(255);
  rectMode(CENTER); //piirtää suorakulmion alkaen keskipisteestä
}

void draw() {
  background(51);
  
  angle = angle + 0.005;  //muutujan angle arvo kasvaa joka kierroksella 0.005
  translate(width/2, height/2); //siirtää "kynän" keskelle aluetta
  rotate(angle); //kierto
  rect(0, 0, 180, 180); //piirtää suorakulmion

```

* Huomaatko? Yllä olevassa koodinpätkässä on (ainakin) yksi virhe ja koodi ei toimi! Löydätkö virheen?

* Tiedätkö, mitä ovat ehtolauseet tai silmukat? Emme ehdi käydä niitä yhdessä läpi näillä tunneilla, mutta niitä käytetään Processingissa samoin kuin muissakin kielissä. Testaa rohkeasti, jos osaat niitä valmiiksi! :)



## Authors

**Salli Kulmala** 

**Teppo Harju**

