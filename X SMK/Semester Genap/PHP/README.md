# PHP (Hypertext Preprocessor)
## Pengertian dari PHP
- Script PHP dieksekusi di server dan output atau hasil ditampilkan di web browser secara plain HTML.
- PHP memiliki ekstensi `.php` sebagai filenya.
## Fungsi dari PHP
- PHP dapat membuat, membuka, menulis, menghapus, dan menutup file yang ada pada server.
- PHP dapat menggumpulkan form data atau data fomulir.
- PHP dapat mengirim dan menerima cookies.
- PHP dapat menambah, menghapus, dan mengedit data pada database.
- PHP dapat digunakan untuk mengontrol akses user atau akses pengguna.
- PHP dapat mengenkripsi data.
## Syntax PHP
1. Penulisan script PHP wajib dimulai dengan `<?php` dan diakhiri `?>`, contoh:
   ```
   <php
   // content
   ?>
   ```
2. Cara pemanggilan output PHP menggunakan `echo` dan `print` statement.
   - Fungsi `echo`
     - `echo()` digunakan untuk menampilkan isi output ke layar sebanyak satu atau lebih data yang dipisahkan dengan tanda koma `,` pada browser.
     -  Fungsi ini dapat digunakan dengan tanda `() -> echo()` maupun tidak `echo "//content"`.
     -  Contoh:
        ```
        <?php
          echo "Belajar PHP itu mudah";
          echo("Halo Dunia!");
          echo "ini","text","yang","dibuat","terpisah";
          echo "Angka",1,2,3,4,5,"sampai 10";
        ?>
        ```
        Output:
        ```
        Belaajr PHP itu mudah!
        Halo Dunia!
        Ini text yang dibuat terpisah
        Angka 1,2,3,4,5 sampai 10
        ```
  - Fungsi `print`
    - Digunakan untuk menampilkan isi output ke layar namun hanya mampu menampilkan data tunggal atau hanya satu data.
    - Fungsi ini dapat digunakan tanda `() -> print()` maupun tidak `print "//content"`.
    - Contoh:
      ```
      <?php
        print "Ayo belajar PHP";
        print "Halo dunia":;

        $cetak=print("Halo dunia!");
        // Maka variabel [$cetak] akan bernilai 1
      ?>
      ```
      Output:
      ```
      Ayo belajar PHP
      Halo dunia
      Halo dunia!
      ```
   
  - Note
    - Fungsi `print` akan selalu menampilkan nilai 1 saat dieksekusi sedangkan `echo` tidak mengembalikan apa apa.
    - Fungsi `print` hanya boleh diberikan satu parameter saja sedangkan `echo` boleh lebih dari satu.
    - Fungsi `echo` sering dipakai untuk menampilkan output ke layar.

## Tipe Data
<table>
  <tbody>
    <tr align="center">
      <td>Tipe Data</td>
      <td>Keterangan</td>
      <td>Contoh</td>
    </tr>
    <tr>
      <td rowspan="2">Interger</td>
      <td rowspan="2">Untuk bilangan bulat</td>
      <td>$bilangan_satu=12;</td>
    </tr>
    <tr>
      <td>$bilangan_dua=78;</td>
    </tr>
    <tr>
      <td>Float</td>
      <td>Untuk bilangan desimal</td>
      <td>$angka=12.177;</td>
    </tr>
    <tr>
      <td rowspan="2">Bolean</td>
      <td rowspan="2">Untuk kondisi atau berisi 2 nilai (True dan False)</td>
      <td>$x=false;</td>
    </tr>
    <tr>
      <td>$y=true;</td>
    </tr>
    <tr>
      <td>String</td>
      <td>Berisi data teks yang diapit tanda petik ("//content")</td>
      <td>$text='Saya pergi kerja';</td>
    </tr>
    <tr>
      <td>Array</td>
      <td>Berisi himpunan data</td>
      <td>$anggota=array('Andi','Budi','Dani');</td>
    </tr>
  </tbody>
</table>

## Variabel PHP
- Peraturan dalam membuat variabel dalam PHP:
  1. Variabel harus dimulai dengan simbol `$` diikuti dengan nama variabel.
  2. Nama variabel harus dimulai dengan huruf atau underscore `_`.
  3. Nama variabel tidak boleh dimulai dengan angka.
  4. Nama variabel hanya boleh berisikan alpha atau numeric, karakter, dan underscore (A-z, 0-9, _).
  5. Nama variabel bersifat case sensitive `$one` dan `$ONE` adalah dua variabel berbeda.
- Contoh:
  ```
  <?
    $txt="Halo Dunia!";
    $TXT="Halo Juga";
    $x=5;
    $y=5.0;
  ?>
  ```
## Contoh PHP
- Contoh 1
  ```
  <?php
    $txt="Dunia";
    echo "Halo $txt";
  ?>
  ```
  Output
  ```
  Halo Dunia
  ```
- Contoh 2
  ```
  <?php
    $TXT="SMK 5";
    echo "Saya cinta" . $TXT . "!";
  ?>
  ```
  Output
  ```
  Saya cintaSMK 5!
  ```
- Contoh 3
  ```
  <?php
    $x=5;
    $y=2;
    echo "$x+$y";
  ?>
  ```
  Output
  ```
  7
  ```
