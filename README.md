# Calcolo della cifra di controllo ISBN-13

**Autore:** Brentan Niccolò  
**Classe:** 3D  
**Anno scolastico:** 2025/2026  

---

## Descrizione

Programma sviluppato in Assembly 8086 che calcola la cifra di controllo di un codice ISBN-13 a partire dalle prime 12 cifre inserite dall’utente.

Il progetto ha lo scopo di applicare un algoritmo reale utilizzando un linguaggio a basso livello, gestendo direttamente memoria, registri e operazioni aritmetiche.

---

## Obiettivo

Realizzare un programma in Assembly capace di:
- leggere input da tastiera  
- elaborare dati numerici  
- implementare l’algoritmo ISBN-13  
- restituire un risultato corretto a schermo  

---

## Requisiti

Per eseguire il programma sono necessari:
- Emulatore DOS (es. DOSBox)  
- Assembler compatibile 8086 (es. TASM)  

---

## Esecuzione

1. Avviare DOSBox  
2. Posizionarsi nella cartella del progetto  
3. Compilare il file `.asm`  
4. Eseguire il programma  

Esempio:
   ```
1. mount C C:\TASM
2. C:
3. tasm isbn.asm
4. tlink isbn.obj
5. isbn.exe
```

---

## Funzionamento

Il programma esegue le seguenti operazioni:
1. Acquisisce 12 cifre da tastiera  
2. Converte i caratteri ASCII in valori numerici  
3. Applica l’algoritmo ISBN-13:
   - somma delle cifre in posizione dispari  
   - moltiplicazione per 3 delle cifre in posizione pari  
4. Calcola il resto della divisione per 10  
5. Determina la cifra di controllo  
6. Visualizza il risultato  

---

## Esempio

Input:  
978030640615  

Output:  
La cifra di controllo è: 7  

---

## Note

- Inserire esclusivamente cifre numeriche  
- L’input deve essere composto da esattamente 12 cifre  

---

## Documentazione

La spiegazione completa del progetto e il codice sorgente commentato sono disponibili nei file presenti nella repository.
