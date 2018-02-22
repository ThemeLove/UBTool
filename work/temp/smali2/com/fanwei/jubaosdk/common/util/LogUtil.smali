.class public final Lcom/fanwei/jubaosdk/common/util/LogUtil;
.super Ljava/lang/Object;


# static fields
.field public static final TAG:Ljava/lang/String; = "fanwei"

.field private static volatile enableLog:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/fanwei/jubaosdk/common/util/LogUtil;->enableLog:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "No Instances."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3

    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v0

    if-eqz v0, :cond_f

    sget-boolean v0, Lcom/fanwei/jubaosdk/common/util/LogUtil;->enableLog:Z

    if-eqz v0, :cond_f

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 4

    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v0

    if-eqz v0, :cond_f

    sget-boolean v0, Lcom/fanwei/jubaosdk/common/util/LogUtil;->enableLog:Z

    if-eqz v0, :cond_f

    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static e(Ljava/lang/String;)V
    .registers 3

    sget-boolean v0, Lcom/fanwei/jubaosdk/common/util/LogUtil;->enableLog:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    const-string v0, "fanwei"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    return-void
.end method

.method public static getEnableLog()Z
    .registers 1

    sget-boolean v0, Lcom/fanwei/jubaosdk/common/util/LogUtil;->enableLog:Z

    return v0
.end method

.method public static i(Ljava/lang/String;)I
    .registers 2

    sget-boolean v0, Lcom/fanwei/jubaosdk/common/util/LogUtil;->enableLog:Z

    if-eqz v0, :cond_b

    const-string v0, "fanwei"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3

    sget-boolean v0, Lcom/fanwei/jubaosdk/common/util/LogUtil;->enableLog:Z

    if-eqz v0, :cond_9

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 4

    sget-boolean v0, Lcom/fanwei/jubaosdk/common/util/LogUtil;->enableLog:Z

    if-eqz v0, :cond_9

    invoke-static {p0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static setEnableLog(Z)V
    .registers 1

    sput-boolean p0, Lcom/fanwei/jubaosdk/common/util/LogUtil;->enableLog:Z

    return-void
.end method
