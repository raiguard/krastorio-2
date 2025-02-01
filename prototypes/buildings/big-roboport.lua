local hit_effects = require("__base__.prototypes.entity.hit-effects")
local sounds = require("__base__.prototypes.entity.sounds")

data:extend({
  {
    type = "recipe",
    name = "kr-big-roboport",
    energy_required = 30,
    enabled = false,
    ingredients = {
      { type = "item", name = "steel-plate", amount = 20 },
      { type = "item", name = "imersium-beam", amount = 20 },
      { type = "item", name = "imersium-gear-wheel", amount = 20 },
      { type = "item", name = "rare-metals", amount = 80 },
      { type = "item", name = "ai-core", amount = 10 },
      { type = "item", name = "roboport", amount = 1 },
    },
    results = { { type = "item", name = "kr-big-roboport", amount = 1 } },
  },
  {
    type = "item",
    name = "kr-big-roboport",
    icon = "__Krastorio2Assets__/icons/entities/big-roboport.png",
    subgroup = "logistic-network",
    order = "c[signal]-c[big-roboport]",
    place_result = "kr-big-roboport",
    stack_size = 50,
  },
  {
    type = "roboport",
    name = "kr-big-roboport",
    icon = "__Krastorio2Assets__/icons/entities/big-roboport.png",
    flags = { "placeable-neutral", "placeable-player", "player-creation", "not-rotatable" },
    minable = { mining_time = 1, result = "kr-big-roboport" },
    collision_box = { { -3.75, -3.38 }, { 3.99, 3.75 } },
    selection_box = { { -4, -4 }, { 4, 4 } },
    logistics_radius = 100,
    construction_radius = 200,
    charge_approach_distance = 5,
    robot_slots_count = 20,
    material_slots_count = 10,
    stationing_offset = { 0, 0 },
    charging_offsets = {
      { -0.5, -3.3 },
      { -1.7, -3.0 },
      { -2.5, -2.4 },
      { -3.1, -1.6 },
      { -3.4, -0.6 },
      { 0.5, -3.3 },
      { 1.7, -3.0 },
      { 2.5, -2.4 },
      { 3.1, -1.6 },
      { 3.4, -0.6 },
      { 0.5, 3.1 },
      { 1.7, 2.8 },
      { 2.5, 2.2 },
      { 3.1, 1.5 },
      { 3.4, 0.4 },
      { -0.5, 3.1 },
      { -1.7, 2.8 },
      { -2.5, 2.2 },
      { -3.1, 1.5 },
      { -3.4, 0.4 },
    },
    request_to_open_door_timeout = 15,
    spawn_and_station_height = 0,
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      input_flow_limit = "100MW",
      buffer_capacity = "1GJ",
    },
    energy_usage = "1MW",
    recharge_minimum = "50MJ",
    charging_energy = "5MW",
    max_health = 3500,
    corpse = "kr-big-random-pipes-remnant",
    damaged_trigger_effect = hit_effects.entity(),
    dying_explosion = "big-explosion",
    resistances = {
      { type = "physical", percent = 60 },
      { type = "fire", percent = 80 },
      { type = "impact", percent = 80 },
    },
    open_sound = sounds.machine_open,
    close_sound = sounds.machine_close,
    vehicle_impact_sound = sounds.generic_impact,
    working_sound = {
      sound = { filename = "__base__/sound/roboport-working.ogg", volume = 0.6 },
      max_sounds_per_prototype = 3,
      audible_distance_modifier = 0.5,
      probability = 1 / (5 * 60), -- average pause between the sound is 5 seconds
    },
    open_door_trigger_effect = {
      {
        type = "play-sound",
        sound = {
          filename = "__base__/sound/roboport-door.ogg",
          volume = 0.5,
          min_speed = 1,
          max_speed = 1.5,
        },
      },
    },
    close_door_trigger_effect = {
      {
        type = "play-sound",
        sound = {
          filename = "__base__/sound/roboport-door-close.ogg",
          volume = 0.5,
          min_speed = 1,
          max_speed = 1.5,
        },
      },
    },
    base = {
      layers = {
        {
          filename = "__Krastorio2Assets__/buildings/big-roboport/big-roboport.png",
          width = 560,
          height = 560,
          shift = { 0, 0.08 },
          scale = 0.5,
        },
        {
          filename = "__Krastorio2Assets__/buildings/big-roboport/big-roboport-sh.png",
          width = 626,
          height = 426,
          shift = { 1.1, 1.19 },
          draw_as_shadow = true,
          scale = 0.5,
        },
      },
    },
    base_patch = {
      filename = "__Krastorio2Assets__/buildings/big-roboport/big-roboport-patch.png",
      width = 138,
      height = 112,
      shift = { 0, 0.28 },
      scale = 0.5,
    },
    base_animation = {
      layers = {
        {
          filename = "__Krastorio2Assets__/buildings/big-roboport/big-roboport-animation.png",
          priority = "medium",
          width = 350,
          height = 286,
          scale = 0.5,
          line_length = 6,
          frame_count = 12,
          shift = { 0, -0.75 },
          draw_as_glow = true,
          animation_speed = 0.1,
        },
        {
          filename = "__Krastorio2Assets__/buildings/big-roboport/big-roboport-animation-light.png",
          priority = "high",
          width = 350,
          height = 286,
          scale = 0.5,
          line_length = 6,
          frame_count = 12,
          shift = { 0, -0.75 },
          draw_as_light = true,
          animation_speed = 0.1,
        },
      },
    },
    door_animation_up = {
      filename = "__Krastorio2Assets__/buildings/big-roboport/big-roboport-door-up.png",
      priority = "medium",
      width = 98,
      height = 38,
      scale = 0.5,
      frame_count = 16,
      shift = { 0, -0.86 },
    },
    door_animation_down = {
      filename = "__Krastorio2Assets__/buildings/big-roboport/big-roboport-door-down.png",
      priority = "medium",
      width = 98,
      height = 36,
      scale = 0.5,
      frame_count = 16,
      shift = { 0, -0.285 },
    },
    recharging_animation = {
      layers = {
        {
          filename = "__Krastorio2Assets__/buildings/big-roboport/big-roboport-recharging.png",
          priority = "high",
          width = 37,
          height = 35,
          frame_count = 16,
          scale = 1.5,
          draw_as_glow = true,
          animation_speed = 0.5,
        },
        {
          filename = "__Krastorio2Assets__/buildings/big-roboport/big-roboport-recharging-light.png",
          priority = "high",
          width = 37,
          height = 35,
          frame_count = 16,
          scale = 1.5,
          draw_as_light = true,
          animation_speed = 0.5,
        },
      },
    },
    recharging_light = {
      intensity = 0.2,
      size = 1,
      color = { r = 0.196, g = 0.658, b = 0.650 },
    },
    draw_logistic_radius_visualization = true,
    draw_construction_radius_visualization = true,
    water_reflection = {
      pictures = {
        filename = "__Krastorio2Assets__/buildings/big-roboport/big-roboport-reflection.png",
        priority = "extra-high",
        width = 60,
        height = 60,
        shift = util.by_pixel(0, 70),
        variation_count = 1,
        scale = 5,
      },
      rotate = false,
      orientation_to_variation = false,
    },
    circuit_connector = circuit_connector_definitions["roboport"],
    circuit_wire_max_distance = 20,
    default_available_logistic_output_signal = { type = "virtual", name = "signal-X" },
    default_total_logistic_output_signal = { type = "virtual", name = "signal-Y" },
    default_available_construction_output_signal = { type = "virtual", name = "signal-Z" },
    default_total_construction_output_signal = { type = "virtual", name = "signal-T" },
  },
})
