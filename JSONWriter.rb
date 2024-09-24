=begin
JSONWriter is an application that takes a command line argument containing a namespace, the name of a resource, and a -i, -t, or -c flag denoting an item or tag (either in the given or common directory).
It then reads the resource and writes the data to several JSON files.
These JSON files are for Minecraft recipes, for a set of tools and armor.
The JSON files are written to the current directory.

The command line arguments are as follows:
ruby JSONWriter.rb <namespace> <resource_name> <-i or -t>

Authors: Lemon_Juiced & TechDahTurtle
=end

require 'json'
require_relative 'ArmorWriter'
require_relative 'ToolWriter'

def main
  if ARGV.length != 3
    puts "Usage: ruby JSONWriter.rb <namespace> <resource_name> <-i, -t. or -c>"
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

  if flag != "-i" && flag != "-t" && flag != "-c"
    puts "Flag: " + flag + " (Invalid flag)"
    exit
  end

  write_json_files(namespace, resource_name, flag)
end

def write_json_files(namespace, resource_name, flag)
  # Call out to other weapon functions
  writeAxeJSON(namespace, resource_name, flag)
  writeHoeJSON(namespace, resource_name, flag)
  writePickaxeJSON(namespace, resource_name, flag)
  writeShovelJSON(namespace, resource_name, flag)
  writeSwordJSON(namespace, resource_name, flag)

  # Call out to other armor functions
  writeBootsJSON(namespace, resource_name, flag)
  writeChestplateJSON(namespace, resource_name, flag)
  writeHelmetJSON(namespace, resource_name, flag)
  writeLeggingsJSON(namespace, resource_name, flag)

end

main if __FILE__ == $PROGRAM_NAME