{
  "targets": [
    {
      "target_name": "gclptest",
      "type": 'shared_library',
      "sources": ["jni/android_main.c",
                  "src/pack/test_pack.c"
                  "src/test/test_connect.c"
                ],
      "dependencies": [
          'gclp.gyp:libgclp',
      ],
      "include_dirs": [
      ],
      'link_settings': {
        'ldflags': [
          '-landroid',
          '-llog',
        ],
      },
    },
  ]
}
