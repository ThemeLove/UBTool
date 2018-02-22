.class public Lcom/mchsdk/paysdk/jni/MCHKeyTools;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/mchsdk/paysdk/jni/MCHKeyTools;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x0

    sput-object v0, Lcom/mchsdk/paysdk/jni/MCHKeyTools;->a:Lcom/mchsdk/paysdk/jni/MCHKeyTools;

    :try_start_3
    const-string v0, "mchpaysdk"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_8} :catch_9

    :goto_8
    return-void

    :catch_9
    move-exception v0

    const-string v1, "MCHKeyTools"

    const-string v2, "\u65e0\u6cd5\u8bfb\u53d6libmchpaysdk.so\u5e93\u6587\u4ef6"

    invoke-static {v1, v2}, Lcom/mchsdk/paysdk/utils/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/mchsdk/paysdk/jni/MCHKeyTools;->natInit()V

    return-void
.end method

.method public static a()Lcom/mchsdk/paysdk/jni/MCHKeyTools;
    .registers 1

    sget-object v0, Lcom/mchsdk/paysdk/jni/MCHKeyTools;->a:Lcom/mchsdk/paysdk/jni/MCHKeyTools;

    if-nez v0, :cond_b

    new-instance v0, Lcom/mchsdk/paysdk/jni/MCHKeyTools;

    invoke-direct {v0}, Lcom/mchsdk/paysdk/jni/MCHKeyTools;-><init>()V

    sput-object v0, Lcom/mchsdk/paysdk/jni/MCHKeyTools;->a:Lcom/mchsdk/paysdk/jni/MCHKeyTools;

    :cond_b
    sget-object v0, Lcom/mchsdk/paysdk/jni/MCHKeyTools;->a:Lcom/mchsdk/paysdk/jni/MCHKeyTools;

    return-object v0
.end method


# virtual methods
.method public native natInit()V
.end method

.method public native secToNor(Ljava/lang/String;)Ljava/lang/String;
.end method
