local sounds = require("__base__.prototypes.entity.sounds")

data:extend({
  {
    type = "recipe",
    name = "biusart-lab",
    energy_required = 10,
    enabled = false,
    ingredients = {
      { type = "item", name = "advanced-circuit", amount = 10 },
      { type = "item", name = "steel-beam", amount = 5 },
      { type = "item", name = "lab", amount = 1 },
      { type = "item", name = "copper-cable", amount = 10 },
    },
    results = { { type = "item", name = "biusart-lab", amount = 1 } },
  },
  {
    type = "item",
    name = "biusart-lab",
    icon = "__Krastorio2Assets__/icons/entities/biusart-lab.png",
    subgroup = "production-machine",
    order = "g[lab]-g2[advanced-lab]",
    place_result = "biusart-lab",
    stack_size = 50,
  },
  {
    type = "lab",
    name = "biusart-lab",
    icon = "__Krastorio2Assets__/icons/entities/biusart-lab.png",
    flags = { "placeable-player", "player-creation" },
    minable = { mining_time = 0.2, result = "biusart-lab" },
    fast_replaceable_group = "lab",
    collision_box = { { -1.2, -1.2 }, { 1.2, 1.2 } },
    selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
    researching_speed = 1,
    inputs = {
      "automation-science-pack",
      "logistic-science-pack",
      "military-science-pack",
      "chemical-science-pack",
      "production-science-pack",
      "utility-science-pack",
    },
    module_slots = 2,
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
    },
    energy_usage = "250kW",
    max_health = 150,
    corpse = "lab-remnants",
    dying_explosion = "medium-explosion",
    light = {
      intensity = 0.8,
      size = 4,
      color = { r = 255, g = 255, b = 255 },
    },
    open_sound = sounds.machine_open,
    close_sound = sounds.machine_close,
    vehicle_impact_sound = { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound = {
      sound = { filename = "__Krastorio2Assets__/sounds/buildings/biusart-lab.ogg", volume = 0.7 },
      apparent_volume = 1,
    },
    on_animation = {
      layers = {
        {
          filename = "__Krastorio2Assets__/buildings/biusart-lab/biusart-lab-anim-light.png",
          width = 150,
          height = 150,
          frame_count = 29,
          line_length = 10,
          animation_speed = 1 / 3,
          shift = { 0, -0.05 },
          draw_as_light = true,
          scale = 0.64,
        },
        {
          filename = "__Krastorio2Assets__/buildings/biusart-lab/biusart-lab-anim.png",
          width = 150,
          height = 150,
          frame_count = 29,
          line_length = 10,
          animation_speed = 1 / 3,
          shift = { 0, -0.05 },
          scale = 0.64,
        },
        {
          filename = "__Krastorio2Assets__/buildings/biusart-lab/biusart-lab-anim.png",
          width = 150,
          height = 150,
          frame_count = 29,
          line_length = 10,
          animation_speed = 1 / 3,
          shift = { 0, -0.05 },
          scale = 0.64,
        },
        {
          filename = "__Krastorio2Assets__/buildings/biusart-lab/biusart-lab-anim.png",
          width = 150,
          height = 150,
          frame_count = 29,
          line_length = 10,
          animation_speed = 1 / 3,
          shift = { 0, -0.05 },
          scale = 0.64,
        },
        {
          filename = "__Krastorio2Assets__/buildings/biusart-lab/biusart-lab-light-anim.png",
          width = 150,
          height = 150,
          frame_count = 29,
          line_length = 10,
          animation_speed = 1 / 3,
          shift = { 0, -0.05 },
          scale = 0.64,
          blend_mode = "additive-soft",
        },
        {
          filename = "__Krastorio2Assets__/buildings/biusart-lab/biusart-lab-light-anim.png",
          width = 150,
          height = 150,
          frame_count = 29,
          line_length = 10,
          animation_speed = 1 / 3,
          shift = { 0, -0.05 },
          draw_as_light = true,
          scale = 0.64,
          blend_mode = "additive-soft",
        },
        {
          filename = "__Krastorio2Assets__/buildings/biusart-lab/biusart-lab-shadow.png",
          width = 240,
          height = 240,
          frame_count = 1,
          line_length = 1,
          repeat_count = 29,
          animation_speed = 1,
          shift = { 0, -0.20 },
          scale = 0.75,
          draw_as_shadow = true,
        },
        {
          filename = "__Krastorio2Assets__/buildings/biusart-lab/biusart-lab-ao.png",
          width = 220,
          height = 220,
          frame_count = 1,
          repeat_count = 29,
          animation_speed = 1 / 3,
          shift = { 0, -0.05 },
          scale = 0.50,
        },
      },
    },
    off_animation = {
      layers = {
        {
          filename = "__Krastorio2Assets__/buildings/biusart-lab/biusart-lab.png",
          width = 150,
          height = 150,
          frame_count = 1,
          shift = { 0, -0.05 },
          scale = 0.64,
        },
        {
          filename = "__Krastorio2Assets__/buildings/biusart-lab/biusart-lab-shadow.png",
          width = 240,
          height = 240,
          frame_count = 1,
          repeat_count = 1,
          shift = { 0, -0.20 },
          scale = 0.75,
          draw_as_shadow = true,
        },
        {
          filename = "__Krastorio2Assets__/buildings/biusart-lab/biusart-lab-ao.png",
          width = 220,
          height = 220,
          frame_count = 1,
          repeat_count = 1,
          animation_speed = 1 / 3,
          shift = { 0, -0.05 },
          scale = 0.5,
        },
      },
    },
  },
})
