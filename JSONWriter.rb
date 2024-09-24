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
  writeSwordJSON(namespace, resource_name, flag)
  writeShovelJSON(namespace, resource_name, flag)

  # Call out to other armor functions
  writeHelmetJSON(namespace, resource_name, flag)
  writeChestplateJSON(namespace, resource_name, flag)
  writeLeggingsJSON(namespace, resource_name, flag)
  writeBootsJSON(namespace, resource_name, flag)

end

def writeSwordJSON(namespace, resource_name, flag)
  # Create the JSON object
  sword = {
    "type" => "minecraft:crafting_shaped",
    "pattern" => [
      "#",
      "#",
      "/"
    ],
    "key" => {
      "#" => {
        flag == "-i" ? "item" : "tag" => (flag == "-c" ? "c:" : namespace + ":") + resource_name
      },
      "/" => {
        "item" => "minecraft:stick"
      }
    },
    "result" => {
      "item" => namespace + ":" + resource_name + "_sword"
    }
  }

  # Write the JSON object to a file
  File.open(namespace + "_" + resource_name + "_sword.json", "w") do |f|
    f.write(JSON.pretty_generate(sword))
  end
end

def writeShovelJSON(namespace, resource_name, flag)
  # Create the JSON object
  shovel = {
    "type" => "minecraft:crafting_shaped",
    "pattern" => [
      "#",
      "/",
      "/"
    ],
    "key" => {
      "#" => {
        flag == "-i" ? "item" : "tag" => (flag == "-c" ? "c:" : namespace + ":") + resource_name
      },
      "/" => {
        "item" => "minecraft:stick"
      }
    },
    "result" => {
      "item" => namespace + ":" + resource_name + "_shovel"
    }
  }

  # Write the JSON object to a file
  File.open(namespace + "_" + resource_name + "_shovel.json", "w") do |f|
    f.write(JSON.pretty_generate(shovel))
  end
end

def writePickaxeJSON(namespace, resource_name, flag)
  # Create the JSON object
  pickaxe = {
    "type" => "minecraft:crafting_shaped",
    "pattern" => [
      "###",
      " / ",
      " / "
    ],
    "key" => {
      "#" => {
        flag == "-i" ? "item" : "tag" => (flag == "-c" ? "c:" : namespace + ":") + resource_name
      },
      "/" => {
        "item" => "minecraft:stick"
      }
    },
    "result" => {
      "item" => namespace + ":" + resource_name + "_pickaxe"
    }
  }

  # Write the JSON object to a file
  File.open(namespace + "_" + resource_name + "_pickaxe.json", "w") do |f|
    f.write(JSON.pretty_generate(pickaxe))
  end
end

def writeAxeJSON(namespace, resource_name, flag)
  # Create the JSON object
  axe = {
    "type" => "minecraft:crafting_shaped",
    "pattern" => [
      "##",
      "/#",
      "/ "
    ],
    "key" => {
      "#" => {
        flag == "-i" ? "item" : "tag" => (flag == "-c" ? "c:" : namespace + ":") + resource_name
      },
      "/" => {
        "item" => "minecraft:stick"
      }
    },
    "result" => {
      "item" => namespace + ":" + resource_name + "_axe"
    }
  }

  # Write the JSON object to a file
  File.open(namespace + "_" + resource_name + "_axe.json", "w") do |f|
    f.write(JSON.pretty_generate(axe))
  end
end

def writeHoeJSON(namespace, resource_name, flag)
  # Create the JSON object
  hoe = {
    "type" => "minecraft:crafting_shaped",
    "pattern" => [
      "##",
      " /",
      " /"
    ],
    "key" => {
      "#" => {
        flag == "-i" ? "item" : "tag" => (flag == "-c" ? "c:" : namespace + ":") + resource_name
      },
      "/" => {
        "item" => "minecraft:stick"
      }
    },
    "result" => {
      "item" => namespace + ":" + resource_name + "_hoe"
    }
  }

  # Write the JSON object to a file
  File.open(namespace + "_" + resource_name + "_hoe.json", "w") do |f|
    f.write(JSON.pretty_generate(hoe))
  end
end

def writeHelmetJSON(namespace, resource_name, flag)
  # Create the JSON object
  helmet = {
    "type" => "minecraft:crafting_shaped",
    "pattern" => [
      "###",
      "# #"
    ],
    "key" => {
      "#" => {
        flag == "-i" ? "item" : "tag" => (flag == "-c" ? "c:" : namespace + ":") + resource_name
      }
    },
    "result" => {
      "item" => namespace + ":" + resource_name + "_helmet"
    }
  }

  # Write the JSON object to a file
  File.open(namespace + "_" + resource_name + "_helmet.json", "w") do |f|
    f.write(JSON.pretty_generate(helmet))
  end
end

def writeChestplateJSON(namespace, resource_name, flag)
  # Create the JSON object
  chestplate = {
    "type" => "minecraft:crafting_shaped",
    "pattern" => [
      "# #",
      "###",
      "###"
    ],
    "key" => {
      "#" => {
        flag == "-i" ? "item" : "tag" => (flag == "-c" ? "c:" : namespace + ":") + resource_name
      }
    },
    "result" => {
      "item" => namespace + ":" + resource_name + "_chestplate"
    }
  }

  # Write the JSON object to a file
  File.open(namespace + "_" + resource_name + "_chestplate.json", "w") do |f|
    f.write(JSON.pretty_generate(chestplate))
  end
end

def writeLeggingsJSON(namespace, resource_name, flag)
  # Create the JSON object
  leggings = {
    "type" => "minecraft:crafting_shaped",
    "pattern" => [
      "###",
      "# #",
      "# #"
    ],
    "key" => {
      "#" => {
        flag == "-i" ? "item" : "tag" => (flag == "-c" ? "c:" : namespace + ":") + resource_name
      }
    },
    "result" => {
      "item" => namespace + ":" + resource_name + "_leggings"
    }
  }

  # Write the JSON object to a file
  File.open(namespace + "_" + resource_name + "_leggings.json", "w") do |f|
    f.write(JSON.pretty_generate(leggings))
  end
end

def writeBootsJSON(namespace, resource_name, flag)
  # Create the JSON object
  boots = {
    "type" => "minecraft:crafting_shaped",
    "pattern" => [
      "# #",
      "# #"
    ],
    "key" => {
      "#" => {
        flag == "-i" ? "item" : "tag" => (flag == "-c" ? "c:" : namespace + ":") + resource_name
      }
    },
    "result" => {
      "item" => namespace + ":" + resource_name + "_boots"
    }
  }

  # Write the JSON object to a file
  File.open(namespace + "_" + resource_name + "_boots.json", "w") do |f|
    f.write(JSON.pretty_generate(boots))
  end
end

main if __FILE__ == $PROGRAM_NAME