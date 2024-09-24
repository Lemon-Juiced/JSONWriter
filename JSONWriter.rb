=begin
JSONWriter is an application that takes a command line argument containing a namespace, the name of a resource, and a -i or -t flag denoting an item or tag.
It then reads the resource and writes the data to several JSON files.
These JSON files are for Minecraft recipes, for a set of tools and armor.
The JSON files are written to the current directory.

The command line arguments are as follows:
ruby JSONWriter.rb <namespace> <resource_name> <-i or -t>

Authors: Lemon_Juiced & TechDahTurtle
=end

require 'json'

def main
  if ARGV.length != 3
    puts "Usage: ruby JSONWriter.rb <namespace> <resource_name> <-i or -t>"
    if ARGV[0] != nil
      puts "Namespace: " + ARGV[0]
      if ARGV[1] != nil
        puts "Resource Name: " + ARGV[1]
        if ARGV[2] != nil
          if ARGV[2] != "-i" && ARGV[2] != "-t"
            puts "Flag: " + ARGV[2] + " (Invalid flag)"
            exit
          else
            puts "Flag: " + ARGV[2]
          end
        else 
          puts "Flag: null"
        end
      else 
        puts "Resource Name: null"
      end
    else 
      puts "Namespace: null"
    end
    exit
  end

  namespace = ARGV[0]
  resource_name = ARGV[1]
  flag = ARGV[2]

  if flag != "-i" && flag != "-t"
    puts "Flag: " + flag + " (Invalid flag)"
    exit
  end

  data = {} # Define the data variable appropriately
  write_json_files(data)
end

main if __FILE__ == $PROGRAM_NAME