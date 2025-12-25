/// Stick Fighter style pose presets for the default stickman skeleton.
/// Values are degrees for each bone id at the current frame.
/// Positive is clockwise assuming +Y points down (Flutter canvas).

class PosePresets {
  static const Map<String, Map<String, double>> poses = {
    // Neutral relaxed pose
    'Idle': {
      'torso': 0,
      'head': 0,
      'l_upper_arm': 12,
      'l_lower_arm': 0,
      'r_upper_arm': -12,
      'r_lower_arm': 0,
      'l_thigh': 6,
      'l_shin': -4,
      'r_thigh': -6,
      'r_shin': 4,
    },

    // Guard pose (arms up for protection)
    'Guard': {
      'torso': 4,
      'head': -6,
      'l_upper_arm': -60,
      'l_lower_arm': -30,
      'r_upper_arm': 60,
      'r_lower_arm': 30,
      'l_thigh': 10,
      'l_shin': -6,
      'r_thigh': -10,
      'r_shin': 6,
    },

    // Straight punch (right)
    'Punch R': {
      'torso': -4,
      'head': 2,
      'l_upper_arm': -20,
      'l_lower_arm': -10,
      'r_upper_arm': 0,
      'r_lower_arm': -70,
      'l_thigh': 16,
      'l_shin': -10,
      'r_thigh': -8,
      'r_shin': 8,
    },

    // Front kick (right)
    'Kick R': {
      'torso': 6,
      'head': -4,
      'l_upper_arm': -30,
      'l_lower_arm': -30,
      'r_upper_arm': 30,
      'r_lower_arm': 30,
      'l_thigh': 8,
      'l_shin': -6,
      'r_thigh': -40,
      'r_shin': 10,
    },

    // Run cycle: contact frame
    'Run Contact': {
      'torso': -6,
      'head': 2,
      'l_upper_arm': 80,
      'l_lower_arm': 20,
      'r_upper_arm': -80,
      'r_lower_arm': -20,
      'l_thigh': -30,
      'l_shin': 20,
      'r_thigh': 35,
      'r_shin': -15,
    },

    // Run cycle: pass frame
    'Run Pass': {
      'torso': 0,
      'head': 0,
      'l_upper_arm': -70,
      'l_lower_arm': -10,
      'r_upper_arm': 70,
      'r_lower_arm': 10,
      'l_thigh': 35,
      'l_shin': -10,
      'r_thigh': -30,
      'r_shin': 20,
    },
  };
}

