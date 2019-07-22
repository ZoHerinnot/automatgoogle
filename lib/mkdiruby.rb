def check_if_user_gave_input
  abort("mkdir: missing input") if ARGV.empty?

end

def get_folder_name

  return folder_name = ARGV

end

def create_folder(name)
	tab =[]
    tab = name
    name.each do |i|
    Dir.mkdir(i)	 
    end
   

end

def doc
	a = ""
	check_if_user_gave_input
	a = get_folder_name
	create_folder(a)
end