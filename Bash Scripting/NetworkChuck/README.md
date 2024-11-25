# Bash
## Bash 101 / Bash Getting Started
BASH (`Bourne-Again Shell`) rilis pada `8 June 1989`.<br>
Untuk mengedit file dapat menggunakan teks editor masing-masing, contoh `nano [file]` maupun `vim [file]`.<br>
Eksekusi file terdapat 2 cara:
- Menggunakan `bash [file]`
- Menggunakan `chmod +x [file]`(ditujukan untuk menambah permission execute) dan dilanjutkan dengan `./[file]`.

Untuk menampilkan file tersembunyi dapat menggunakan perintah `ls -a`(Flag -a sendiri merupakan nama lain dari all).<br>
Pada linux terdapat ekstensi untuk `Hiden File` diawali `.`, contoh `.bashrc`.

## Shebang
Shebang adalah baris pertama dalam sebuah file skrip yang menunjukkan interpreter mana yang harus digunakan untuk menjalankan skrip tersebut. Biasanya, shebang diawali dengan `#!` diikuti dengan path ke interpreter. Misalnya:
```
#!/bin/bash
```
Baris `#!/bin/bash` memberitahu sistem bahwa skrip harus dijalankan menggunakan `Bash`, interpreter shell yang terletak di `/bin/bash`. Shebang umum digunakan di skrip shell, Python, Perl, dan bahasa pemrograman lainnya untuk memastikan skrip dijalankan dengan interpreter yang tepat. <br>

Namun shebang tidak wajib, tetapi sangat disarankan jika ingin memastikan skrip dijalankan dengan interpreter yang benar secara otomatis. Tanpa shebang, pengguna harus secara eksplisit menyebutkan interpreter saat menjalankan skrip. Misalnya, jika skrip Python tidak memiliki shebang, pengguna harus menjalankannya dengan perintah seperti `python script.py` alih-alih cukup mengetik `./script.py`.<br>

Namun, jika skrip dijalankan di lingkungan di mana shebang tidak dihormati atau tidak diperlukan, seperti saat menjalankannya dari dalam IDE atau jika file tidak dieksekusi langsung, shebang mungkin tidak mempengaruhi eksekusi skrip.

## Sleep
Perintah `sleep` adalah perintah yang berfungsi untuk menghentikan sementara eksekusi skrip  

## Sintaks Variabel
Dalam bash scripting, spasi di sekitar tanda `=` dianggap sebagai bagian dari sintaks yang tidak valid untuk penugasan variabel. Dalam bash, penugasan variabel harus dilakukan tanpa spasi di sekitar tanda `=`. Jadi:
```
name="bob"  # Benar
name = "bob"  # Salah
```
Jika ada spasi di sekitar `=`, bash akan menganggap name sebagai perintah dan `=` "bob" sebagai argumen, yang tidak valid.

## Argument
`name3=$1` ini dinamakan `Posisional Parameter` atau `Posisional Argument`, yang dimana cara kerjanya akan mencocokan parameter yang diinput `bash [file] [input]` atau `./[file] [input]`.

## Build-in Variable
`$RANDOM` merupakan salah satu dari banyaknya varibel bawaan pada Linux yang tidak perlu diatur kembali oleh user.<br>
Batas nilai `$RANDOM` yaitu `0 - 32767` yang didapat dari Interger 16 bit (`2^15 - 1`).

## Create Variable for System
Contohnya:
```
##### Bash / ZSH #####
twitter="Ello Musk"
echo $twitter
```
Variabel tersebut dinamakan `Enviroment Variabel`, pada variabel tersebut masih belum dapat digunakan oleh `Child Processes`.Untuk mengatasinya dapat digunakan fungsi `export [variabel]`.<br>

Apabila kita menutup sesi terminal/terminated session maka variabel tersebut akan hilang. Untuk mengatasi hal tersebut dapat melakukan penambahan fungsi pada file `.baschrc`(Pengguna Bash) atau `.zshrc`(Pengguna ZSH). Tambahkan pada baris terakhir `export twitter="Ellon Musk"`.


## Arithmetic Expression
Tidak terdapat masalah, apabila terdapat spasi pada awal/akhir kurung maupun antara operator dan karakter/variabel.<br>
Bash secara default tidak akan menghasilkan angka `floating`.<br>
Operator `%` disebut `Modulo/Modulus`.<br>
Untuk menghitung rentang `$RANDOM % [char]`, maka `char` tersebut harus seangka diatasnya. Contoh `0 - 19` maka `$RANDOM % 20`.

## Conditional
Conditional digunakan untuk membuat keputusan sesuai kondisi yang sudah diprogram.<br>
Pada if `command` ditulis dengan terpisah antar `Bracket/Bash Test` dan juga `Logic Operations` harus dipisah.<br>
Tanda `||` disebut sebagai operator logika `OR`, yang artinya apabila terdapat sebuah kondisi benar dan yang lain salah maka itu akan tetap benar.<br>
Tanda `&&` disebut sebagai operator logika `AND`, yang artinya kedua kondisi harus benar.<br>
Penggunaan `;` setelah Command ditutup dan dilanjutkan `then` tidak terlalu dibutuhkan, sesuaikan saja dengan struktur yang diapakai.

## Case Statements / A Switcher
Struktur penulisan `Case Statements`
```
case EXPRESSION in
    PATTERN_1)
        STATEMENTS
        ;;

    PATTERN_2)
        STATEMENTS
        ;;

    PATTERN_N)
        STATEMENTS
        ;;

    *)
        STATEMENTS
        ;;
esac
```
Contoh
```
echo "Pick Youre Character Now !
[1] Artur
[2] Archer Queen
[3] Anos
[4] Rimuru
[5] Pala Bafack Kau
"
echo "Answer:"
read character

case $character in
    1)
        type="Artur"
        hp=100
        attack=100
        magic=20
        ;;
    2)
        type="Archer Queen"
        hp=100
        attack=90
        magic=30
        ;;
    3)
        type="Anos"
        hp=1000
        attack=1000
        magic=5000
        ;;
    4)
        type="Rimuru"
        hp=500
        attack=500
        magic=500
        ;;
    5)
        type="Pala Bafack Kau"
        hp=1000000000
        attack=1000000000
        magic=1000000000
        ;;
    *)
        echo "Please Select your character with number from [1-5]!"
        ;;
esac
if [[ -n $type ]]; then
    echo "You have choose $type character.
    Your HP: $hp
    Your ATK: $attack
    Your MGC: $magic
    "
else
    exit 1
fi
```
Pada kode tersebut terdapat sebuah kasus dimana diminta untuk memilih sebuah karakter. Pada setiap karakter memiliki status nya maisng-masing. Pada kasus ini bisa saja menggunakan `If Statements & Elif Statements` namun itu tidak efisien. Pada kasus tersebut sebaiknya menggunakan `Case Statements`. Jadi pada kode `case $character in` memberitahukan bash apabila terdapat jawaban dari user yang dipegang nilainya oleh variabel `$character` (Pada `Case Statements` kata pembuka `case` dan penutup `esac`). Maka
```
1)
        type="Artur"
        hp=100
        attack=100
        magic=20
        ;;
    2)
        type="Archer Queen"
        hp=100
        attack=90
        magic=30
        ;;
    3)
        type="Anos"
        hp=1000
        attack=1000
        magic=5000
        ;;
    4)
        type="Rimuru"
        hp=500
        attack=500
        magic=500
        ;;
    5)
        type="Pala Bafack Kau"
        hp=1000000000
        attack=1000000000
        magic=1000000000
        ;;
    *)
        echo "Please Select your character with number from [1-5]!"
        ;;
```
Untuk kasus jawaban 1-5 akan diberikan rincian statement sebagai berikut dan apabila diluar dari kasus 1-5 maka akan diberikan `echo "Please Select your character with number from [1-5]!"` (Tanda Pattern `*)`). Selah itu kondisi kasus kita tutup dengan `esac`. Pada kasus ini diberikan juga `IF Conditional` supaya bash tidak akan mengeluarkan output berikut
```
echo "You have choose $type character.
    Your HP: $hp
    Your ATK: $attack
    Your MGC: $magic
    "
```
Higga kondisi terpenuhi, ini digunakan untuk menghilangkan kejadian dimana user memberikan jawaban diluar 1-5 yang membuat output variabel kosong.
## IF Statements
Struktur penulisan `If Statements`
```
if [[Condition]] 
then
    echo Statements
else 
    echo Statements
fi

 ----------------
|  or like this  |
 ----------------

 if [[Condition]]; then
    echo Statements
else 
    echo Statements
fi
```

Contoh
```
echo "Hey, do you want to join us? (y/n)"
read answer
if [[ $answer == "y" ]] 
then
    echo "Thankyou! This your Fomulir.."
else 
    echo "Okay! I hope you join on another day.."
fi
```
Pada kode tersebut kita memberitahukan kepada bash untuk mengevaluasi sesuatu, apakah hal tersebut benar atau salah dan mengambil sebuah keputusan berdasarkan informasi tersebut. Pada konteks kali ini kita meminta bash untuk mengevaluasi input dari variabel `$answer`. Apabila value dari variabel tersebut sama dengan `"y"` maka akan menampilkan `"Thankyou! This your Fomulir.."`. Terakhir `else` apabila kondisi lainnya/kondisi yang tidak kita program akan menampilkan `"Okay! I hope you join on another day.."`.<br>


## Nested Conditional / Nested IF Statement
Struktur penulisan `Nested IF Statement` 
```
if [[Condition]] 
then
    if [[Condition]]
    then
        echo Statements
    if
else
    echo Statements
fi

 ----------------
|  or like this  |
 ----------------

if [[Condition]]; then
    if [[Condition]]; then
        echo Statements
else
    echo Statements
    fi
fi
```
Contoh
```
margit=$(($RANDOM % 10))
echo "Boss spawn! Pick a number (0-9) ?"
read player
if [[ $margit == $player || $player == "ez" ]]; then
    if [[ $USER == "root" ]]; then
        echo "You Win!"
else
    echo "You Died!"
    fi
fi
```
Pada kode tersebut bash akan mengevaluasi value variable `$margit` apakah sama dengan value variable `$player`, kemudian akan melakukan operasi logika `OR` dengan hasil evaluasi value variable `$player` apakah sama dengan `"ez"`. Jika salah satu saja terpenuhi maka akan lanjut ke kondisi kedua. Pada kondisi kedua, bash akan mengevaluasi apakah command built-in `$USER` apakah sama dengan `"root"` jika sama maka akan menampilkan output `"You Win!"` jika tidak maka akan merujuk ke kondisi `else` yang menampilkan output `"You Died!"`. Alasan mengapa penutup if `fi` pada kondisi kedua ditaruh setelah `echo "You Died!"`, dikarenakan supaya kondisi `else` tetap dibaca oleh program.

## Elif Statements
Struktur penulisan `Elif Statements`
```
if [[Condition]] 
then
    echo Statements
elif [[Condition]] 
then
    echo Statements
else 
    echo Statements
fi

 ----------------
|  or like this  |
 ----------------

if [[Condition]]; then
    echo Statements
elif [[Condition]]; then
    echo Statements
else 
    echo Statements
fi
```
Contoh
```
pou=$(($RANDOM % 100))
echo "Boss spawn! Pick a number (0-99) ?"
read player
if [[ $pou == $player ]]; then
    echo "You Win!"
elif [[ $USER == "axv" ]]; then
    echo "Oh no Youre Cheater! You Win!"
else 
    echo "You Died!"
fi
```
Pada kode tersebut bash mengevaluasi value variabel `$pou` apakah sama dengan value variabel `$player`. Jika benar akan menampilkan output `"You Win!"`. Di kondisi lain `elif` apabila command built-in `$USER` sama dengan `"axv"`, maka akan mengeluarkan output `"Oh no Youre Cheater! You Win!"`. Kondisi selainnya `else` mengeluarkan output `"You Died!"`.

## While Loops
`While` loop akan mengulang skrip ketika itu benar.<br>
Struktur
```
while [[Condition]]
do
    echo STATEMENTS
    ((Iteration))
done

 ----------------
|  or like this  |
 ----------------

while [[Condition]]; do
    echo STATEMENTS
    ((Iteration))
done 
```
Contoh
```
do=1
while [[ $do -le 100 ]]; do
    echo "I did $do of my work !"
    (( do ++ ))
done
```
Pada kode tersebut apabila nilai dari variabel `$do` lebih kecil atau sama dengan 100, maka akan mengeluarkan output `echo "I did $do of my work !"`, yang dimana nilai dari variabel `$do` akan terjadi penambahan setiap pengulangan `(( do ++ ))`.

## Until Loops
`Untill Loop` akan berjalan hingga sesuatu benar.
Struktur
```
until [[Condition]]; do
    echo STATEMENTS
    ((Iteration))
done

 ----------------
|  or like this  |
 ----------------

until [[Condition]] 
do
    echo STATEMENTS
    ((Iteration))
done
```
Contoh
```
until [[ $squad == "AXV" ]]; do
    echo "What name of your squad?"
    read squad
done
echo "I want to join there!"
```
Pada kode tersebut terdapat variabel `$squad` yang digunakan menjadi penampung value dari input user. Variabel `$squad` sama dengan `"AXV"` apabila berbeda maka dia akan terus menerus mengulangi output yang sama `echo "What name of your squad?"`. Apabila sama maka akan mengeluarkan output setelahnya `echo "I want to join there!"`.

## For Loops
`For Loops` digunakan untuk menyatakan tugas yang harus dilakukan tidak peduli sesuatu itu benar maupun salah.
