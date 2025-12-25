import sys
from pathlib import Path

from androguard.misc import AnalyzeAPK


def main(apk_path: str) -> int:
    apk_path = str(Path(apk_path))
    print(f"[+] Loading APK: {apk_path}")
    a, d, dx = AnalyzeAPK(apk_path)

    print("\n[=] APK Info")
    print(f"Package: {a.get_package()}\nVersion: {a.get_androidversion_name()} ({a.get_androidversion_code()})")
    print(f"MinSDK: {a.get_min_sdk_version()}  TargetSDK: {a.get_target_sdk_version()}")

    print("\n[=] Launchable Activities")
    for act in a.get_activities():
        if a.get_main_activity() == act:
            print(f"* {act}  [MAIN]")
        else:
            print(f"- {act}")

    # Dump a readable manifest (androguard already decodes AXML)
    print("\n[=] AndroidManifest.xml (decoded)")
    try:
        from lxml import etree  # type: ignore
        elem = a.get_android_manifest_xml()
        if elem is not None:
            print(etree.tostring(elem, pretty_print=True, encoding=str))
        else:
            print("<no manifest xml>")
    except Exception as e:
        print(f"<manifest decode error: {e}>")

    # Inspect assets if any
    print("\n[=] Assets dir entries")
    assets = [name for name in a.get_files() if name.startswith("assets/")]
    if not assets:
        print("(none)")
    else:
        for name in assets:
            print(f"- {name}")

    # Search classes for animation related terms
    print("\n[=] Suspected animation-related classes")
    HINTS = (
        "anim", "bone", "joint", "stick", "skeleton", "ik", "frame", "sprite", "timeline", "keyframe",
    )
    suspects = []
    for vm in (d if isinstance(d, (list, tuple)) else [d]):
        for cls in vm.get_classes():
            name = cls.get_name()
            lname = name.lower()
            if any(h in lname for h in HINTS):
                suspects.append(name)
    if not suspects:
        print("(none)")
    else:
        for s in sorted(set(suspects)):
            print(f"- {s}")

    # Search for interesting string constants
    print("\n[=] Interesting string constants")
    S_HINTS = (
        "figure", "frame", "joint", "bone", "segment", "stick",
        "angle", "length", "scale", "timeline", "keyframe", "fps",
        "draw", "canvas", "color", "opacity", "alpha", "onion",
    )
    found = set()
    for vm in (d if isinstance(d, (list, tuple)) else [d]):
        for s in vm.get_strings():
            ls = s.lower()
            if any(h in ls for h in S_HINTS):
                found.add(s)
    if not found:
        print("(none)")
    else:
        for s in sorted(found):
            print(f"- {s}")

    # Try to extract plausible SQL schema hints (CREATE TABLE ...)
    print("\n[=] Possible SQL schema (CREATE TABLE ...)")
    schema = set()
    for vm in (d if isinstance(d, (list, tuple)) else [d]):
      for s in vm.get_strings():
        txt = s.strip()
        tl = txt.lower()
        if 'create table' in tl and ('frame' in tl or 'anim' in tl or 'sequence' in tl or 'object' in tl):
          schema.add(txt)
    if not schema:
      print('(none)')
    else:
      for line in sorted(schema):
        print(f"- {line}")

    return 0


if __name__ == "__main__":
    if len(sys.argv) < 2:
        print("usage: analyze_apk.py <path_to_apk>")
        raise SystemExit(2)
    raise SystemExit(main(sys.argv[1]))
