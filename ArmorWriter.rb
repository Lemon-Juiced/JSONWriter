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