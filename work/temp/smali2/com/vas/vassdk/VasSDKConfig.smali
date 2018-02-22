.class public Lcom/vas/vassdk/VasSDKConfig;
.super Ljava/lang/Object;
.source "VasSDKConfig.java"


# static fields
.field public static MAIN_ACTIVITY_NAME:Ljava/lang/String; = null

.field public static final PLUGIN_TYPE_PAY:I = 0x2

.field public static final PLUGIN_TYPE_SETTING:I = 0x3

.field public static final PLUGIN_TYPE_USER:I = 0x1

.field public static final SPLASH_DRAWABLE_NAME:Ljava/lang/String; = "vas_sdk_splash"

.field public static VAS_CHANNELID:Ljava/lang/String; = null

.field public static VAS_DEBUG:Ljava/lang/String; = null

.field public static VAS_GAMEID:Ljava/lang/String; = null

.field public static VAS_PLATFORMID:Ljava/lang/String; = null

.field public static VAS_SUBCHANNEL_ID:Ljava/lang/String; = null

.field public static VAS_SUBPLATFORMID:Ljava/lang/String; = null

.field public static final VAS_USER_LOGINKEY:Ljava/lang/String; = "^*(s%_)%623kjh$()6Hk<%YL:"

.field private static d:Lcom/vas/vassdk/VasSDKConfig;


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mChannelDebug:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 27
    const-string v0, ""

    sput-object v0, Lcom/vas/vassdk/VasSDKConfig;->MAIN_ACTIVITY_NAME:Ljava/lang/String;

    .line 29
    const-string v0, ""

    sput-object v0, Lcom/vas/vassdk/VasSDKConfig;->VAS_GAMEID:Ljava/lang/String;

    .line 31
    const-string v0, ""

    sput-object v0, Lcom/vas/vassdk/VasSDKConfig;->VAS_PLATFORMID:Ljava/lang/String;

    .line 33
    const-string v0, ""

    sput-object v0, Lcom/vas/vassdk/VasSDKConfig;->VAS_SUBPLATFORMID:Ljava/lang/String;

    .line 35
    const-string v0, ""

    sput-object v0, Lcom/vas/vassdk/VasSDKConfig;->VAS_CHANNELID:Ljava/lang/String;

    .line 37
    const-string v0, ""

    sput-object v0, Lcom/vas/vassdk/VasSDKConfig;->VAS_SUBCHANNEL_ID:Ljava/lang/String;

    .line 39
    const-string v0, ""

    sput-object v0, Lcom/vas/vassdk/VasSDKConfig;->VAS_DEBUG:Ljava/lang/String;

    .line 54
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vas/vassdk/VasSDKConfig;->mChannelDebug:Z

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vas/vassdk/VasSDKConfig;->a:Ljava/util/Map;

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vas/vassdk/VasSDKConfig;->b:Ljava/util/Map;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vas/vassdk/VasSDKConfig;->c:Ljava/util/List;

    .line 61
    return-void
.end method

.method public static getInstance()Lcom/vas/vassdk/VasSDKConfig;
    .registers 1

    .prologue
    .line 65
    sget-object v0, Lcom/vas/vassdk/VasSDKConfig;->d:Lcom/vas/vassdk/VasSDKConfig;

    if-nez v0, :cond_b

    .line 67
    new-instance v0, Lcom/vas/vassdk/VasSDKConfig;

    invoke-direct {v0}, Lcom/vas/vassdk/VasSDKConfig;-><init>()V

    sput-object v0, Lcom/vas/vassdk/VasSDKConfig;->d:Lcom/vas/vassdk/VasSDKConfig;

    .line 69
    :cond_b
    sget-object v0, Lcom/vas/vassdk/VasSDKConfig;->d:Lcom/vas/vassdk/VasSDKConfig;

    return-object v0
.end method


# virtual methods
.method public getApplicationList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 156
    iget-object v0, p0, Lcom/vas/vassdk/VasSDKConfig;->c:Ljava/util/List;

    return-object v0
.end method

.method public getConfig(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 161
    iget-object v0, p0, Lcom/vas/vassdk/VasSDKConfig;->a:Ljava/util/Map;

    if-eqz v0, :cond_d

    .line 163
    iget-object v0, p0, Lcom/vas/vassdk/VasSDKConfig;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 167
    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public getDebug()Z
    .registers 2

    .prologue
    .line 198
    iget-boolean v0, p0, Lcom/vas/vassdk/VasSDKConfig;->mChannelDebug:Z

    return v0
.end method

.method public getPlugin(Ljava/lang/Integer;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 181
    iget-object v0, p0, Lcom/vas/vassdk/VasSDKConfig;->b:Ljava/util/Map;

    if-eqz v0, :cond_d

    .line 183
    iget-object v0, p0, Lcom/vas/vassdk/VasSDKConfig;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 187
    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public loadConfig(Landroid/content/Context;)V
    .registers 8

    .prologue
    .line 76
    const-string v0, "vassdk_config.xml"

    invoke-static {p1, v0}, Lcom/vas/vassdk/util/VasSDKUtil;->getAssetDesConfigs(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77
    if-nez v0, :cond_10

    .line 79
    const-string v0, "VasSDK"

    const-string v1, "fail to load vassdk_config.xml"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_f
    :goto_f
    return-void

    .line 83
    :cond_10
    iget-object v1, p0, Lcom/vas/vassdk/VasSDKConfig;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 84
    iget-object v1, p0, Lcom/vas/vassdk/VasSDKConfig;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 85
    iget-object v1, p0, Lcom/vas/vassdk/VasSDKConfig;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 86
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 89
    :try_start_23
    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 90
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 91
    :goto_2f
    const/4 v2, 0x1

    if-eq v0, v2, :cond_f

    .line 93
    packed-switch v0, :pswitch_data_13c

    .line 145
    :cond_35
    :goto_35
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_2f

    .line 96
    :pswitch_3a
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 98
    const-string v2, "param"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7f

    .line 100
    const/4 v2, 0x0

    const-string v3, "name"

    invoke-interface {v1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 101
    const/4 v3, 0x0

    const-string v4, "value"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 102
    const-string v4, "MAIN_ACTIVITY_NAME"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_ec

    .line 104
    sput-object v3, Lcom/vas/vassdk/VasSDKConfig;->MAIN_ACTIVITY_NAME:Ljava/lang/String;

    .line 122
    :goto_5e
    iget-object v4, p0, Lcom/vas/vassdk/VasSDKConfig;->a:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Load sdk_config: key:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", value:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/vas/vassdk/util/VASLogUtil;->d(Ljava/lang/String;)V

    .line 128
    :cond_7f
    const-string v2, "application"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a5

    .line 130
    const/4 v2, 0x0

    const-string v3, "name"

    invoke-interface {v1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 131
    iget-object v3, p0, Lcom/vas/vassdk/VasSDKConfig;->c:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Load Application: name:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/vas/vassdk/util/VASLogUtil;->d(Ljava/lang/String;)V

    .line 136
    :cond_a5
    const-string v2, "plugin"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 138
    const/4 v0, 0x0

    const-string v2, "name"

    invoke-interface {v1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 139
    const/4 v2, 0x0

    const-string v3, "type"

    invoke-interface {v1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 140
    iget-object v3, p0, Lcom/vas/vassdk/VasSDKConfig;->b:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Load Plugin: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vas/vassdk/util/VASLogUtil;->d(Ljava/lang/String;)V
    :try_end_e4
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_e4} :catch_e6

    goto/16 :goto_35

    .line 148
    :catch_e6
    move-exception v0

    .line 150
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_f

    .line 105
    :cond_ec
    :try_start_ec
    const-string v4, "VAS_GAMEID"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f8

    .line 106
    sput-object v3, Lcom/vas/vassdk/VasSDKConfig;->VAS_GAMEID:Ljava/lang/String;

    goto/16 :goto_5e

    .line 107
    :cond_f8
    const-string v4, "VAS_CHANNELID"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_104

    .line 108
    sput-object v3, Lcom/vas/vassdk/VasSDKConfig;->VAS_CHANNELID:Ljava/lang/String;

    goto/16 :goto_5e

    .line 109
    :cond_104
    const-string v4, "VAS_SUBCHANNEL_ID"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_110

    .line 110
    sput-object v3, Lcom/vas/vassdk/VasSDKConfig;->VAS_SUBCHANNEL_ID:Ljava/lang/String;

    goto/16 :goto_5e

    .line 111
    :cond_110
    const-string v4, "VAS_PLATFORMID"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11c

    .line 112
    sput-object v3, Lcom/vas/vassdk/VasSDKConfig;->VAS_PLATFORMID:Ljava/lang/String;

    goto/16 :goto_5e

    .line 113
    :cond_11c
    const-string v4, "VAS_SUBPLATFORMID"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_128

    .line 114
    sput-object v3, Lcom/vas/vassdk/VasSDKConfig;->VAS_SUBPLATFORMID:Ljava/lang/String;

    goto/16 :goto_5e

    .line 115
    :cond_128
    const-string v4, "VAS_DEBUG"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_134

    .line 116
    sput-object v3, Lcom/vas/vassdk/VasSDKConfig;->VAS_DEBUG:Ljava/lang/String;

    goto/16 :goto_5e

    .line 120
    :cond_134
    iget-object v4, p0, Lcom/vas/vassdk/VasSDKConfig;->a:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_139
    .catch Ljava/lang/Exception; {:try_start_ec .. :try_end_139} :catch_e6

    goto/16 :goto_5e

    .line 93
    nop

    :pswitch_data_13c
    .packed-switch 0x2
        :pswitch_3a
    .end packed-switch
.end method

.method public setConfig(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 173
    iget-object v0, p0, Lcom/vas/vassdk/VasSDKConfig;->a:Ljava/util/Map;

    if-eqz v0, :cond_9

    .line 175
    iget-object v0, p0, Lcom/vas/vassdk/VasSDKConfig;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    :cond_9
    return-void
.end method

.method public setDebug(Z)V
    .registers 2

    .prologue
    .line 193
    iput-boolean p1, p0, Lcom/vas/vassdk/VasSDKConfig;->mChannelDebug:Z

    .line 194
    return-void
.end method
