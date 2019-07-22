
         #L'utilisateur rentre un ARGV à l'exécution du programme
         #Si ce dernier ne rentre pas d'ARGV, le programme va lui dire comment ça marche
         #L'ARGV correspond à ce que l'utilisateur veut rechercher sur Google
		 #Le programme va récupérer l'ARGV, contruire une URL à partir de l'ARGV
		 #Puis le programme va ouvrir un nouvel onglet à partir de cette recherche
require 'watir'
require 'launchy'
#Launchy.open("http://stackoverflow.com")
def check_if_user_gave_input
	hot =
  abort("Que recherche vous?") if ARGV.empty?
  
end


def get_words
  
  return mots_rechercher = ARGV

end
	
def search(mots_rechercher)
	browser = Watir::Browser.new(:firefox)
browser.goto 'google.com'
search_bar = browser.text_field(class: 'gsfi')
search_bar.set(mots_rechercher)
browser.driver.manage.timeouts.implicit_wait = 3
tab = []
tab = mots_rechercher
a = "https://www.google.com/search?q=#{tab[0]}"
for i in 1... tab.length
 	a+="+#{tab[i]}"
end
 Launchy.open(a)


browser.close
end

def get
	
	check_if_user_gave_input
	search(get_words)
	
end
get 


