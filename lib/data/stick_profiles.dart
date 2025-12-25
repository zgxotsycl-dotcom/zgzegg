import 'package:flutter/material.dart';
import 'models.dart';

class StickProfile {
  final double headRadius;
  final double torsoLen;
  final double upperArmLen;
  final double lowerArmLen;
  final double thighLen;
  final double shinLen;
  final double strokeLimb;
  final double strokeTorso;
  // Additional shaping
  final double hipSpreadDeg; // +/− angle for thighs from vertical
  final Color color;
  const StickProfile({
    this.headRadius = 20,
    this.torsoLen = 120,
    this.upperArmLen = 62,
    this.lowerArmLen = 62,
    this.thighLen = 78,
    this.shinLen = 78,
    this.strokeLimb = 6,
    this.strokeTorso = 7,
    this.hipSpreadDeg = 25,
    this.color = const Color(0xFF000000),
  });

  Map<String, dynamic> toJson() => {
    'headRadius': headRadius,
    'torsoLen': torsoLen,
    'upperArmLen': upperArmLen,
    'lowerArmLen': lowerArmLen,
    'thighLen': thighLen,
    'shinLen': shinLen,
    'strokeLimb': strokeLimb,
    'strokeTorso': strokeTorso,
    'hipSpreadDeg': hipSpreadDeg,
    'color': color.value,
  };

  static StickProfile fromJson(Map<String, dynamic> j) => StickProfile(
    headRadius: (j['headRadius'] ?? 22).toDouble(),
    torsoLen: (j['torsoLen'] ?? 110).toDouble(),
    upperArmLen: (j['upperArmLen'] ?? 55).toDouble(),
    lowerArmLen: (j['lowerArmLen'] ?? 55).toDouble(),
    thighLen: (j['thighLen'] ?? 65).toDouble(),
    shinLen: (j['shinLen'] ?? 65).toDouble(),
    strokeLimb: (j['strokeLimb'] ?? 6).toDouble(),
    strokeTorso: (j['strokeTorso'] ?? 7).toDouble(),
    hipSpreadDeg: (j['hipSpreadDeg'] ?? 25).toDouble(),
    color: Color((j['color'] ?? 0xFF000000) as int),
  );
}

Model generateStickmanFromProfile(StickProfile p) {
  final black = p.color;
  final bones = <Bone>[
    const Bone(id: 'root', parentId: null, pivot: Vec2(0,0), bind: Transform2D()),
    const Bone(id: 'torso', parentId: 'root', pivot: Vec2(0,0), bind: Transform2D()),
    Bone(id: 'head', parentId: 'torso', pivot: const Vec2(0,0), bind: Transform2D(pos: Vec2(0, -p.torsoLen))),

    // Arms attach directly at the top of the torso (no shoulders/clavicles)
    Bone(id: 'l_upper_arm', parentId: 'torso', pivot: const Vec2(0,0), bind: Transform2D(pos: Vec2(0, -p.torsoLen), rotDeg: -35)),
    Bone(id: 'l_lower_arm', parentId: 'l_upper_arm', pivot: const Vec2(0,0), bind: Transform2D(pos: Vec2(0, p.upperArmLen))),
    Bone(id: 'r_upper_arm', parentId: 'torso', pivot: const Vec2(0,0), bind: Transform2D(pos: Vec2(0, -p.torsoLen), rotDeg: 35)),
    Bone(id: 'r_lower_arm', parentId: 'r_upper_arm', pivot: const Vec2(0,0), bind: Transform2D(pos: Vec2(0, p.upperArmLen))),

    // Stick Fighter-style: single hip pivot; thighs diverge by rotation, not by offset
    Bone(id: 'l_thigh', parentId: 'torso', pivot: const Vec2(0,0), bind: Transform2D(pos: const Vec2(0, 0), rotDeg: p.hipSpreadDeg)),
    Bone(id: 'l_shin', parentId: 'l_thigh', pivot: const Vec2(0,0), bind: Transform2D(pos: Vec2(0, p.thighLen))),
    Bone(id: 'r_thigh', parentId: 'torso', pivot: const Vec2(0,0), bind: Transform2D(pos: const Vec2(0, 0), rotDeg: -p.hipSpreadDeg)),
    Bone(id: 'r_shin', parentId: 'r_thigh', pivot: const Vec2(0,0), bind: Transform2D(pos: Vec2(0, p.thighLen))),
  ];

  List<Attachment> atts = [
    Attachment(id: 'torso_line', boneId: 'torso', type: PrimType.line, a: const Vec2(0,0), b: Vec2(0, -p.torsoLen), strokeWidth: p.strokeTorso, stroke: black, fill: const Color(0x00000000)),
    Attachment(id: 'head_circle', boneId: 'head', type: PrimType.circle, a: Vec2(0, -p.headRadius), b: Vec2(p.headRadius, 0), strokeWidth: p.strokeLimb, stroke: black, fill: const Color(0x00000000)),

    Attachment(id: 'l_upper_arm_line', boneId: 'l_upper_arm', type: PrimType.line, a: const Vec2(0,0), b: Vec2(0, p.upperArmLen), strokeWidth: p.strokeLimb, stroke: black, fill: const Color(0x00000000)),
    Attachment(id: 'l_lower_arm_line', boneId: 'l_lower_arm', type: PrimType.line, a: const Vec2(0,0), b: Vec2(0, p.lowerArmLen), strokeWidth: p.strokeLimb, stroke: black, fill: const Color(0x00000000)),
    Attachment(id: 'r_upper_arm_line', boneId: 'r_upper_arm', type: PrimType.line, a: const Vec2(0,0), b: Vec2(0, p.upperArmLen), strokeWidth: p.strokeLimb, stroke: black, fill: const Color(0x00000000)),
    Attachment(id: 'r_lower_arm_line', boneId: 'r_lower_arm', type: PrimType.line, a: const Vec2(0,0), b: Vec2(0, p.lowerArmLen), strokeWidth: p.strokeLimb, stroke: black, fill: const Color(0x00000000)),

    Attachment(id: 'l_thigh_line', boneId: 'l_thigh', type: PrimType.line, a: const Vec2(0,0), b: Vec2(0, p.thighLen), strokeWidth: p.strokeLimb, stroke: black, fill: const Color(0x00000000)),
    Attachment(id: 'l_shin_line', boneId: 'l_shin', type: PrimType.line, a: const Vec2(0,0), b: Vec2(0, p.shinLen), strokeWidth: p.strokeLimb, stroke: black, fill: const Color(0x00000000)),

    Attachment(id: 'r_thigh_line', boneId: 'r_thigh', type: PrimType.line, a: const Vec2(0,0), b: Vec2(0, p.thighLen), strokeWidth: p.strokeLimb, stroke: black, fill: const Color(0x00000000)),
    Attachment(id: 'r_shin_line', boneId: 'r_shin', type: PrimType.line, a: const Vec2(0,0), b: Vec2(0, p.shinLen), strokeWidth: p.strokeLimb, stroke: black, fill: const Color(0x00000000)),
  ];

  return Model(id: 'stickman', name: 'Stick Fighter', bones: bones, attachments: atts);
}
