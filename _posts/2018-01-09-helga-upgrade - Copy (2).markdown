---
layout: post
title:  "Helga upgrade configuration check"
date:   2018-01-10 22:18:20 +0100
categories: jekyll update
---
1.	Obciążenie wolumenów logicznych – zalecane przez MS minimum 10% wolnego

2.	Brak ustawień pliku pamięci wirtualnej, zdaje sobie sprawę z ilości RAM, oraz z praktyki którą omawialiśmy już wcześniej w Pepco, ale MS zaleca aby plik był więc o nim piszę. Dodałbym go i przeprowadził testy obciążenia.

 






3.	Wbudowane konto administratora włączone, brak zmiany nazwy – zablokowałbym konto i używał innych - domenowych
 

4.	Wyłączony firewall dla sieci firmowej, zdaję sobie sprawę, iż używamy jednego zbiorczego firewalla, ale może warto zastanowić się nad włączeniem firewalla i otwarciem na nim zestawu standardowych portów. 
 




5.	Domyślny katalog dla folderu Backup nie został ustawiony, a Logi znajdują się na F:\
 
6.	Poprawić ilość error logów, wartość standardowa, ale zalecam co najmniej 30.

 

7.	Brakuje jobów
 

8.	Użytkownik Gość posiada uprawnienia CONNECT do baz
 

9.	Brak planu utrzymania baz – backups
 

10.	Orphaned users
 

11.	Root directory umieściłbym w oddzielnym miejscu w celu wydzielenia dedykowanego miejsca na logi oraz na bazy systemowe. Przy czym przy tej wielkości dysku C: oraz z uwagi, 
że jest on pewnie wydzielony z dysków macierzy to niski priorytet.
 

12.	Na dysku dedykowanym na logi mamy 2 pliki w różnych folderach – kwestia uporządkowania i zastanowienia się nad zrobieniem jednego

13.	Max worker threads – zmiana zgodnie z zaleceniami
https://msdn.microsoft.com/pl-pl/library/ms190219(v=sql.110).aspx 
Ale warto też przeczytać to: https://www.brentozar.com/archive/2017/02/max-worker-threads-dont-touch/ 

14.	Flagi systemowe SQL ustawione, ale nie wpisane w configuration manager
 

15.	Start mode instancji w trybie manual. Trzeba mieć świadomość że instancje nie wstaną po restarcie



{% highlight ruby %}
def print_hi(name)
  puts "Hi, #{name}"
end
print_hi('Tom')
#=> prints 'Hi, Tom' to STDOUT.
{% endhighlight %}

Check out the [Jekyll docs][jekyll-docs] for more info on how to get the most out of Jekyll. File all bugs/feature requests at [Jekyll’s GitHub repo][jekyll-gh]. If you have questions, you can ask them on [Jekyll Talk][jekyll-talk].

[jekyll-docs]: https://jekyllrb.com/docs/home
[jekyll-gh]:   https://github.com/jekyll/jekyll
[jekyll-talk]: https://talk.jekyllrb.com/
