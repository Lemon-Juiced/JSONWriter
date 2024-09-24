def writeAxeJSON(namespace, resource_name, flag)
  # Create the JSON object
  axe = {
    "type" => "minecraft:crafting_shaped",
    "pattern" => [
      "##",
      "#/",
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
      "item" => namespace + ":" + resource_name + "_axe"
    }
  }

  # Write the JSON object to a file
  File.open(namespace + "_" + resource_name + "_axe.json", "w") do |f|
    f.write(JSON.pretty_generate(axe))
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