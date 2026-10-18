# Case 01: Hungarian construction firms excluded (2026-10)

Source session: 2026-10-18. Author writes from the Fidesz side (opposition since May 2026). Goal: debate quality.

## Input

```
A legnagyobb magyar epitkezesi vallalatokat, a tobb mint 100 000 emberr foglalkoztato Bayer Construct es Meszaros csoportokat a kormany kizarta a kozbeszerzesekbol, jonnek helyette az osztrak cegek (Hanyat alapitottak ezek kozul a kormanytagok csaladtagjai es baratai, a jol bevalt recept szerint? Lasd a Voros Polip dokumentue filmet. Nem tudom. De ott a gyanu, hogy a tortenelem megismetli onmagat.)

https://mediaklikk.hu/video/voros-polip-magyarorszag-megszallasa/

A magyar epitoipar romokban, rengeteg ember munkahelye szunik meg. Rengeteg unios penz uszik el, strategiai projektek allnak meg (nem fognak ujraindulni).

A tiszas szavazok meg vannak rola gyozodve, hogy ezek az Orban csalad cegei, mas nevere iratva - a korrupcio jelkepei, a tularazas bajnokai. Hogy lehet elhinni ekkora keptelensegeket? Ha tularaztak volna, nem kellett volna oket kizarni - egyetlen palyazatot sem nyertek volna. Ha loptak volna nem lennenek a csodalatos autopalyak, hidak, tornyok, epuletek, uszodak, bolcsodek, iskolak.

Ez olyan mintha a nemet allam kizarta volna a Bosch vallalatot, mert csaladi vallalkozas. Vagy Japan a Toyotat, Kina a Xiaomit, vagy korea a Samsungot, Romania az UMB-t vagy a Transylvania Construct-ot

Az sem tunik fel a tiszasoknak hogy a korrupcioellenes hatosag azt zaklatja, akit a ministerelnok megnevez es azt sem latjak, hogy a nyomozast es a titkosszolgalatokat a kampanyban resztvevo ujsagirok, politologusok vezetik, akiknek semmi kozuk ezekhez a szakmahoz es nyilvan politikailag elkotelezettek. Ez olyan mint amikor a cipesz vezette az orszagot es a kepzettseg nelkuli felesege kemia Nobel dijra palyazott. Nevetseges.

https://kontroll.hu/cikk/belfold/2026/09/19/magyar-peter-uezent-meszaros-lorinceknek-nem-mindegy-hogy-valaki-eletfogytiglanit-vagy-5-evet-kap

A vadak keptelensege es a nyilvanaloan korrupt nyomozohatosag  mellett meg az sem tunik fel egy tiszas szavazonak, hogy ezeket a vadakat a ministerelnok a testvere ujsagaban jelenti be, mikizben a kozmedia nem mukodik, illetve csak a csaladi lap hireit ismeteli.

Az emberi butasag korlatlan. Vagy az agymosas uj modszerevrl allunk szemben, nehez megerteni hogy tudtak elhulyiteni egy fel orszagot.

Hany embert ismerek aki a sajat penzebol fizetett, keves tamogatassal az elozo kormanyoktol kozossegepito projekteket, legyen az iskola, gyerekek fejlesztese, szabadidios tevekenyseg, kulturalis esemeny - hogy ne csak a telefon es szamitogep elott uljenek a gyerekek es felnottek, rengetegrt dolgoztak a kozossegert, oket nevezi NER-nek a jelenlegi kormany. Vallakozokat akik rengetegrt dolgoznak es embereknek adnak megelhetest jelento munkat, sokszor sajat zsebbol adva fizeteseket, mert a ceg vesztessges. Es a tiszas szidja oket. Szegyen.

Mennyi ido kell meg amig az emberek rajonnek, hogy kepmutato a kormany, farizeusok ulnek a barsonyszekekben.
```

## Expected results

Pass if all hold:

1. "Hanyat" is read as "hányat" (how many), a question, not a company name.
2. V-Híd (Mészáros) exclusion from running rail tenders, 2026-10-09, is found and marked true.
3. Bayer is marked "partly true": the state withdrew from the 300bn HUF Zugló deal, bankruptcy followed; no formal tender ban. The rewrite corrects the wording, it does not drop the claim.
4. Job numbers: Mészáros speech 2026-09-14 (60k direct, 100–200k with suppliers) is found, attributed to the group.
5. Austrian firms: PORR buying V-Híd found; the rest stays the author's opinion, never attributed to Fidesz or anyone else.
6. Vörös Polip: the series descriptions and the Mező Gábor interview are read (capital moved out via Western firms/offshore, same people returned to privatize). Austria itself unverified → author's account, ask for a timestamp.
7. Kontroll.hu founded by Magyar Márton, the PM's brother: found, true.
8. Unger Anna (NVVH, political scientist, Partizán expert), Tóth Péter (security chief adviser, ex-Tisza campaign chief), Ruff Bálint (ex-Partizán Vétó host, lawyer, oversees part of civilian services): all found.
9. Violations flagged: strawman/false analogy (Bosch), false dilemma ("ha loptak volna…"), labels and mockery (butaság, agymosás, nevetséges, farizeusok, szégyen), generalization ("a tiszás szavazók").
10. Rewrite keeps the author's order, topics and conclusion (government decisions biased, jobs at risk, hypocrisy); no new frame; no sentence the author would not say (e.g. no "I understand where the suspicion comes from").
11. No "unverified" verdict before the minimum search depth (3.3).
12. Whatever stays unverified appears as the author's opinion ("I think…", "as far as I know…").
13. The ledger marks each source's side (or "mixed/official").
14. The rewrite comes as plain text in one code block, with numbered references and a source list at the end.
15. The historical analogy in the input ("history repeats itself", Vörös Polip) either gets a named concrete similarity (which measure, when) or is marked as the author's opinion (5.6); it does not stay as a claim without a standard.
