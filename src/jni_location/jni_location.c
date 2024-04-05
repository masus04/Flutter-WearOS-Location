// Autogenerated by jnigen. DO NOT EDIT!

#include <stdint.h>
#include "dartjni.h"
#include "jni.h"

thread_local JNIEnv* jniEnv;
JniContext* jni;

JniContext* (*context_getter)(void);
JNIEnv* (*env_getter)(void);

void setJniGetters(JniContext* (*cg)(void), JNIEnv* (*eg)(void)) {
  context_getter = cg;
  env_getter = eg;
}

// ch.masus.libs.JNILocation
jclass _c_JNILocation = NULL;

jmethodID _m_JNILocation__new0 = NULL;
FFI_PLUGIN_EXPORT
JniResult JNILocation__new0() {
  load_env();
  load_class_global_ref(&_c_JNILocation, "ch/masus/libs/JNILocation");
  if (_c_JNILocation == NULL)
    return (JniResult){.value = {.j = 0}, .exception = check_exception()};
  load_method(_c_JNILocation, &_m_JNILocation__new0, "<init>", "()V");
  if (_m_JNILocation__new0 == NULL)
    return (JniResult){.value = {.j = 0}, .exception = check_exception()};
  jobject _result =
      (*jniEnv)->NewObject(jniEnv, _c_JNILocation, _m_JNILocation__new0);
  return to_global_ref_result(_result);
}

jmethodID _m_JNILocation__sayHi = NULL;
FFI_PLUGIN_EXPORT
JniResult JNILocation__sayHi(jobject self_) {
  load_env();
  load_class_global_ref(&_c_JNILocation, "ch/masus/libs/JNILocation");
  if (_c_JNILocation == NULL)
    return (JniResult){.value = {.j = 0}, .exception = check_exception()};
  load_method(_c_JNILocation, &_m_JNILocation__sayHi, "sayHi", "()V");
  if (_m_JNILocation__sayHi == NULL)
    return (JniResult){.value = {.j = 0}, .exception = check_exception()};
  (*jniEnv)->CallVoidMethod(jniEnv, self_, _m_JNILocation__sayHi);
  return (JniResult){.value = {.j = 0}, .exception = check_exception()};
}
