.class public Lcom/vas/vassdk/factory/VasFacktory;
.super Ljava/lang/Object;
.source "VasFacktory.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newPlugin(I)Ljava/lang/Object;
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-static {}, Lcom/vas/vassdk/VasSDKConfig;->getInstance()Lcom/vas/vassdk/VasSDKConfig;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vas/vassdk/VasSDKConfig;->getPlugin(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v1

    .line 20
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 36
    :goto_13
    return-object v0

    .line 25
    :cond_14
    :try_start_14
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 26
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    .line 27
    const-class v4, Landroid/app/Activity;

    aput-object v4, v2, v3

    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 29
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 30
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 31
    invoke-static {}, Lcom/vas/vassdk/VasSDK;->getInstance()Lcom/vas/vassdk/VasSDK;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vas/vassdk/VasSDK;->getActivity()Landroid/app/Activity;

    move-result-object v4

    aput-object v4, v2, v3

    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_39} :catch_3b

    move-result-object v0

    goto :goto_13

    .line 33
    :catch_3b
    move-exception v1

    .line 34
    const-string v2, "fail to new Plugin"

    invoke-static {v2, v1}, Lcom/vas/vassdk/util/VASLogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_13
.end method
