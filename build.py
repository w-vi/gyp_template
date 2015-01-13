#!/usr/bin/env python

import os
import sys

def resolve_path(rel_path):
    return os.path.abspath(os.path.join(os.path.dirname(__file__), rel_path))

def import_gyp():
    try:
        import gyp
    except ImportError:
        print("ERROR: GYP NOT FOUND!")
        sys.exit(42)
    return gyp;

def run_gyp(args):
    rc = gyp.main(args)
    if rc != 0:
        print("ERROR: GYP FAILED! : (%d)" % rc)
        sys.exit(rc)

gyp = import_gyp()
root = resolve_path(".")
out_root = os.path.join(root, "out")
os.environ['ANDROID_BUILD_TOP'] = out_root
print(os.environ['ANDROID_BUILD_TOP'])
args = sys.argv[1:] + ["--depth=%s" % root, "-Goutput_dir=%s" % out_root]
run_gyp(args)

