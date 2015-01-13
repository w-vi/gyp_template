#include <jni.h>
#include <errno.h>
#include <android_native_app_glue.h>
#include <android/log.h>
#include <stdio.h>
#include "module2_hello.h"
#include "module1_hello.h"


#define LOG(...) ((void)__android_log_print(ANDROID_LOG_INFO, "native-activity", __VA_ARGS__))

void 
android_main(struct android_app* state) 
{
    app_dummy();

    LOG("GYPTEST main()\n");
    module1_hello();
    module2_hello();
    fflush(stdout);
    
}
