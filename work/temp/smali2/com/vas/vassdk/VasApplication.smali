.class public Lcom/vas/vassdk/VasApplication;
.super Landroid/app/Application;
.source "VasApplication.java"


# static fields
.field private static final a:Ljava/lang/String; = "com.vas.vassdk"


# instance fields
.field private b:Lcom/vas/vassdk/apiadapter/IApplicationListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method private a()Lcom/vas/vassdk/apiadapter/IApplicationListener;
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 67
    invoke-static {}, Lcom/vas/vassdk/VasSDKConfig;->getInstance()Lcom/vas/vassdk/VasSDKConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vas/vassdk/VasSDKConfig;->getApplicationList()Ljava/util/List;

    move-result-object v2

    .line 68
    const-string v0, ""

    .line 69
    if-eqz v2, :cond_22

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_22

    .line 70
    invoke-static {}, Lcom/vas/vassdk/VasSDKConfig;->getInstance()Lcom/vas/vassdk/VasSDKConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vas/vassdk/VasSDKConfig;->getApplicationList()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 72
    :cond_22
    const-string v2, "VasSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "VasApplication : proxyAppName = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    if-eqz v0, :cond_3e

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_40

    :cond_3e
    move-object v0, v1

    .line 103
    :goto_3f
    return-object v0

    .line 78
    :cond_40
    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_57

    .line 80
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "com.vas.vassdk"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 85
    :cond_57
    :try_start_57
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 86
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vas/vassdk/apiadapter/IApplicationListener;
    :try_end_61
    .catch Ljava/lang/ClassNotFoundException; {:try_start_57 .. :try_end_61} :catch_62
    .catch Ljava/lang/InstantiationException; {:try_start_57 .. :try_end_61} :catch_68
    .catch Ljava/lang/IllegalAccessException; {:try_start_57 .. :try_end_61} :catch_6d

    goto :goto_3f

    .line 89
    :catch_62
    move-exception v0

    .line 91
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    :goto_66
    move-object v0, v1

    .line 103
    goto :goto_3f

    .line 93
    :catch_68
    move-exception v0

    .line 96
    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_66

    .line 98
    :catch_6d
    move-exception v0

    .line 100
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_66
.end method


# virtual methods
.method public attachBaseContext(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 40
    invoke-static {p0}, Landroid/support/multidex/MultiDex;->install(Landroid/content/Context;)V

    .line 41
    invoke-static {}, Lcom/vas/vassdk/VasSDK;->getInstance()Lcom/vas/vassdk/VasSDK;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/vas/vassdk/VasSDK;->initAllConfigs(Landroid/content/Context;)V

    .line 43
    invoke-direct {p0}, Lcom/vas/vassdk/VasApplication;->a()Lcom/vas/vassdk/apiadapter/IApplicationListener;

    move-result-object v0

    iput-object v0, p0, Lcom/vas/vassdk/VasApplication;->b:Lcom/vas/vassdk/apiadapter/IApplicationListener;

    .line 45
    iget-object v0, p0, Lcom/vas/vassdk/VasApplication;->b:Lcom/vas/vassdk/apiadapter/IApplicationListener;

    if-eqz v0, :cond_1c

    .line 47
    iget-object v0, p0, Lcom/vas/vassdk/VasApplication;->b:Lcom/vas/vassdk/apiadapter/IApplicationListener;

    invoke-interface {v0, p0, p1}, Lcom/vas/vassdk/apiadapter/IApplicationListener;->onProxyAttachBaseContext(Landroid/app/Application;Landroid/content/Context;)V

    .line 49
    :cond_1c
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    .prologue
    .line 53
    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 55
    const-string v0, "VasSDK"

    const-string v1, "VasApplication onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iget-object v0, p0, Lcom/vas/vassdk/VasApplication;->b:Lcom/vas/vassdk/apiadapter/IApplicationListener;

    if-eqz v0, :cond_13

    .line 59
    iget-object v0, p0, Lcom/vas/vassdk/VasApplication;->b:Lcom/vas/vassdk/apiadapter/IApplicationListener;

    invoke-interface {v0, p0, p1}, Lcom/vas/vassdk/apiadapter/IApplicationListener;->onProxyConfigurationChanged(Landroid/app/Application;Landroid/content/res/Configuration;)V

    .line 61
    :cond_13
    return-void
.end method

.method public onCreate()V
    .registers 2

    .prologue
    .line 26
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 27
    iget-object v0, p0, Lcom/vas/vassdk/VasApplication;->b:Lcom/vas/vassdk/apiadapter/IApplicationListener;

    if-eqz v0, :cond_c

    .line 29
    iget-object v0, p0, Lcom/vas/vassdk/VasApplication;->b:Lcom/vas/vassdk/apiadapter/IApplicationListener;

    invoke-interface {v0, p0}, Lcom/vas/vassdk/apiadapter/IApplicationListener;->onProxyCreate(Landroid/app/Application;)V

    .line 32
    :cond_c
    invoke-static {p0}, Lcom/yolanda/nohttp/NoHttp;->initialize(Landroid/app/Application;)V

    .line 33
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/yolanda/nohttp/Logger;->setDebug(Z)V

    .line 34
    const-string v0, "VasHttpUtil"

    invoke-static {v0}, Lcom/yolanda/nohttp/Logger;->setTag(Ljava/lang/String;)V

    .line 35
    return-void
.end method
