# Upute za slanje Božićnog emaila

## Slika je prevelika za Base64 embedding

Vaša slika je 1.5MB, što je preveliko za direktno embedanje u HTML.

## ✅ PREPORUČENA METODA: CID (Content ID)

HTML email je pripremljen za CID metodu (`src="cid:christmas-card"`).

### Kako poslati email:

#### **OUTLOOK:**
1. Otvorite Outlook i kreirajte novi email
2. Kopirajte cijeli sadržaj iz `christmas-business-partners-email-croatian.html`
3. Zalijepite u email tijelo (možda trebate kliknuti na "Format Text" → "HTML")
4. **PRILOŽITE sliku**: Kliknite "Insert" → "Pictures" → Odaberite `Red And Green Merry Christmas Greeting Card.png`
5. Kada priložite sliku, **desni klik na attachment** → "Properties" ili "Options"
6. Promijenite "Content-ID" u: `christmas-card` (bez navodnika)
7. Slika će se automatski prikazati u emailu

#### **GMAIL (kroz Google Apps Script ili API):**
Gmail web interface ne podržava CID direktno. Trebate koristiti:
- Gmail API s MIME multipart formatom
- Ili uploadajte sliku na Google Drive/Imgur i koristite URL

#### **THUNDERBIRD:**
1. Kompozitujte novi email
2. Insert → Image → Odaberite sliku
3. Označite "Attach this image to the message"
4. U HTML kodu pronađite `<img>` tag i zamijenite `src` s `cid:christmas-card`

---

## 📌 ALTERNATIVA: Koristite lokalni preview

Ako želite **samo pregledati** kako email izgleda:

1. Napravit ću verziju s lokalnim pathom za preview
2. Otvorite u browseru da vidite kako izgleda
3. Zatim koristite CID verziju za slanje

---

## ⚠️ NAPOMENA

Slika od 1.5MB je **velika za email**. Preporučujem:
- Optimizirati sliku (smanjiti rezoluciju/kvalitetu)
- Koristiti online tool kao TinyPNG ili Squoosh.app
- Ciljna veličina: 200-500KB

Želite li da napravim i verziju s lokalnim preview pathom?
