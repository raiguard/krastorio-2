local hit_effects = require("__base__.prototypes.entity.hit-effects")
local sounds = require("__base__.prototypes.entity.sounds")

data:extend({
  {
    type = "recipe",
    name = "kr-quarry-drill",
    energy_required = 60,
    enabled = false,
    ingredients = {
      { type = "item", name = "steel-beam", amount = 50 },
      { type = "item", name = "steel-plate", amount = 50 },
      { type = "item", name = "rare-metals", amount = 50 },
      { type = "item", name = "electric-engine-unit", amount = 100 },
      { type = "item", name = "processing-unit", amount = 20 },
    },
    results = { { type = "item", name = "kr-quarry-drill", amount = 1 } },
  },
  {
    type = "item",
    name = "kr-quarry-drill",
    icon = "__Krastorio2Assets__/icons/entities/quarry-drill.png",
    subgroup = "extraction-machine",
    order = "a[items]-e[quarry-drill]",
    place_result = "kr-quarry-drill",
    stack_size = 50,
  },
  {
    type = "mining-drill",
    name = "kr-quarry-drill",
    icon = "__Krastorio2Assets__/icons/entities/quarry-drill.png",
    flags = { "placeable-neutral", "player-creation" },
    minable = { mining_time = 1, result = "kr-quarry-drill" },
    fast_replaceable_group = "kr-quarry-drills",
    collision_box = { { -3.3, -3.3 }, { 3.3, 3.3 } },
    selection_box = { { -3.5, -3.5 }, { 3.5, 3.5 } },
    resource_categories = { "kr-quarry" },
    mining_speed = 10,
    resource_searching_radius = 0.49,
    vector_to_place_result = { 0, -3.65 },
    module_slots = 2,
    allowed_effects = { "consumption", "speed", "productivity", "pollution" },
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = { pollution = 100 },
    },
    energy_usage = "2.5MW",
    max_health = 1000,
    corpse = "kr-big-random-pipes-remnant",
    dying_explosion = "big-explosion",
    damaged_trigger_effect = hit_effects.entity(),
    resistances = {
      { type = "physical", percent = 50 },
      { type = "fire", percent = 70 },
      { type = "impact", percent = 70 },
    },
    vehicle_impact_sound = sounds.generic_impact,
    working_sound = {
      sound = {
        filename = "__Krastorio2Assets__/sounds/buildings/quarry-drill.ogg",
        volume = 0.5,
      },
      idle_sound = { filename = "__base__/sound/idle1.ogg" },
      max_sounds_per_type = 2,
    },
    graphics_set = {
      animation = {
        layers = {
          {
            priority = "extra-high",
            filename = "__Krastorio2Assets__/entities/quarry-drill/quarry-drill-light.png",
            width = 440,
            height = 464,
            frame_count = 90,
            line_length = 10,
            shift = { 0, -0.18 },
            draw_as_light = true,
            blend_mode = "additive",
            flags = { "light" },
            animation_speed = 0.3,
            scale = 0.52,
          },
          {
            priority = "high",
            filename = "__Krastorio2Assets__/entities/quarry-drill/quarry-drill.png",
            width = 440,
            height = 464,
            frame_count = 90,
            line_length = 10,
            shift = { 0, -0.18 },
            animation_speed = 0.3,
            scale = 0.52,
          },
          {
            priority = "medium",
            filename = "__Krastorio2Assets__/entities/quarry-drill/quarry-drill-sh.png",
            width = 500,
            height = 422,
            frame_count = 1,
            repeat_count = 90,
            shift = { 0, 0.05 },
            draw_as_shadow = true,
            animation_speed = 0.3,
            scale = 0.52,
          },
        },
      },
    },
    circuit_connector = circuit_connector_definitions.create_vector(universal_connector_template, {
      {
        variation = 0,
        main_offset = util.by_pixel(5, -118),
        shadow_offset = util.by_pixel(7, -118),
        show_shadow = true,
      },
      {
        variation = 2,
        main_offset = util.by_pixel(100, -22),
        shadow_offset = util.by_pixel(102, -22),
        show_shadow = true,
      },
      { variation = 4, main_offset = util.by_pixel(-4, 82), shadow_offset = util.by_pixel(-2, 82), show_shadow = true },
      {
        variation = 6,
        main_offset = util.by_pixel(-100, -15),
        shadow_offset = util.by_pixel(-98, -15),
        show_shadow = true,
      },
    }),
    circuit_wire_max_distance = default_circuit_wire_max_distance,
  },
})
