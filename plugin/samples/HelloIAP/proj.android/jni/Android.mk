LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := game_shared

LOCAL_MODULE_FILENAME := libgame

LOCAL_SRC_FILES := hellocpp/main.cpp \
                   ../../Classes/AppDelegate.cpp \
                   ../../Classes/HelloWorldScene.cpp \
                   ../../Classes/MyPurchase.cpp
                   
LOCAL_C_INCLUDES := $(LOCAL_PATH)/../../Classes

LOCAL_WHOLE_STATIC_LIBRARIES := cocos2dx_static \
        PluginAlipayStatic \
        PluginNd91Static \
        PluginProtocolStatic

include $(BUILD_SHARED_LIBRARY)

$(call import-module,cocos2dx) \
$(call import-module,plugins/alipay/android) \
$(call import-module,plugins/nd91/android) \
$(call import-module,protocols/android)
