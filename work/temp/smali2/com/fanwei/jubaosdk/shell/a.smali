.class final Lcom/fanwei/jubaosdk/shell/a;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:Lcom/fanwei/jubaosdk/shell/a;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Lcom/fanwei/jubaosdk/common/core/Dispatcher;

.field private final d:Ljava/io/File;

.field private e:Ljava/util/concurrent/atomic/AtomicInteger;

.field private f:Lcom/fanwei/jubaosdk/shell/internal/CheckUpdateResp;

.field private g:Ljava/lang/StringBuilder;

.field private h:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/fanwei/jubaosdk/shell/a;->a:Lcom/fanwei/jubaosdk/shell/a;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/fanwei/jubaosdk/common/core/Dispatcher;)V
    .registers 6

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/fanwei/jubaosdk/shell/a;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/fanwei/jubaosdk/shell/a;->g:Ljava/lang/StringBuilder;

    new-instance v0, Lcom/fanwei/jubaosdk/shell/a$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/fanwei/jubaosdk/shell/a$1;-><init>(Lcom/fanwei/jubaosdk/shell/a;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/fanwei/jubaosdk/shell/a;->h:Landroid/os/Handler;

    iput-object p1, p0, Lcom/fanwei/jubaosdk/shell/a;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/fanwei/jubaosdk/shell/a;->c:Lcom/fanwei/jubaosdk/common/core/Dispatcher;

    const-string v0, "pkg-downloads"

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/fanwei/jubaosdk/shell/a;->d:Ljava/io/File;

    return-void
.end method

.method static a()Lcom/fanwei/jubaosdk/shell/a;
    .registers 1

    sget-object v0, Lcom/fanwei/jubaosdk/shell/a;->a:Lcom/fanwei/jubaosdk/shell/a;

    return-object v0
.end method

.method static synthetic a(Lcom/fanwei/jubaosdk/shell/a;Lcom/fanwei/jubaosdk/shell/internal/CheckUpdateResp;)Lcom/fanwei/jubaosdk/shell/internal/CheckUpdateResp;
    .registers 2

    iput-object p1, p0, Lcom/fanwei/jubaosdk/shell/a;->f:Lcom/fanwei/jubaosdk/shell/internal/CheckUpdateResp;

    return-object p1
.end method

.method static a(Landroid/content/Context;Lcom/fanwei/jubaosdk/common/core/Dispatcher;)V
    .registers 4

    sget-object v0, Lcom/fanwei/jubaosdk/shell/a;->a:Lcom/fanwei/jubaosdk/shell/a;

    if-nez v0, :cond_13

    const-class v1, Lcom/fanwei/jubaosdk/shell/a;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/fanwei/jubaosdk/shell/a;->a:Lcom/fanwei/jubaosdk/shell/a;

    if-nez v0, :cond_12

    new-instance v0, Lcom/fanwei/jubaosdk/shell/a;

    invoke-direct {v0, p0, p1}, Lcom/fanwei/jubaosdk/shell/a;-><init>(Landroid/content/Context;Lcom/fanwei/jubaosdk/common/core/Dispatcher;)V

    sput-object v0, Lcom/fanwei/jubaosdk/shell/a;->a:Lcom/fanwei/jubaosdk/shell/a;

    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_19

    :cond_13
    sget-object v0, Lcom/fanwei/jubaosdk/shell/a;->a:Lcom/fanwei/jubaosdk/shell/a;

    invoke-direct {v0}, Lcom/fanwei/jubaosdk/shell/a;->b()V

    return-void

    :catchall_19
    move-exception v0

    :try_start_1a
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v0
.end method

.method static synthetic a(Lcom/fanwei/jubaosdk/shell/a;)V
    .registers 1

    invoke-direct {p0}, Lcom/fanwei/jubaosdk/shell/a;->c()V

    return-void
.end method

.method static synthetic a(Lcom/fanwei/jubaosdk/shell/a;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/fanwei/jubaosdk/shell/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/fanwei/jubaosdk/shell/a;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/fanwei/jubaosdk/shell/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/fanwei/jubaosdk/shell/a;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/fanwei/jubaosdk/shell/a;->a(Z)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "verify plugin start "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fanwei/jubaosdk/common/util/LogUtil;->e(Ljava/lang/String;)V

    new-instance v1, Lcom/fanwei/jubaosdk/shell/internal/e;

    iget-object v2, p0, Lcom/fanwei/jubaosdk/shell/a;->c:Lcom/fanwei/jubaosdk/common/core/Dispatcher;

    iget-object v0, p0, Lcom/fanwei/jubaosdk/shell/a;->f:Lcom/fanwei/jubaosdk/shell/internal/CheckUpdateResp;

    if-nez v0, :cond_30

    const-string v0, "b26c08f1fde804b1e7cc580a0f67e79e"

    :goto_20
    invoke-direct {v1, v2, p1, v0}, Lcom/fanwei/jubaosdk/shell/internal/e;-><init>(Lcom/fanwei/jubaosdk/common/core/Dispatcher;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/fanwei/jubaosdk/shell/internal/e;->setCallbackOnUi(Z)V

    new-instance v0, Lcom/fanwei/jubaosdk/shell/a$7;

    invoke-direct {v0, p0, p1}, Lcom/fanwei/jubaosdk/shell/a$7;-><init>(Lcom/fanwei/jubaosdk/shell/a;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/fanwei/jubaosdk/shell/internal/e;->enqueue(Lcom/fanwei/jubaosdk/common/core/AbstractCall$Callback;)V

    return-void

    :cond_30
    iget-object v0, p0, Lcom/fanwei/jubaosdk/shell/a;->f:Lcom/fanwei/jubaosdk/shell/internal/CheckUpdateResp;

    invoke-virtual {v0}, Lcom/fanwei/jubaosdk/shell/internal/CheckUpdateResp;->getUpdateMd5()Ljava/lang/String;

    move-result-object v0

    goto :goto_20
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "load plugin file start "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fanwei/jubaosdk/common/util/LogUtil;->e(Ljava/lang/String;)V

    new-instance v0, Lcom/fanwei/jubaosdk/shell/internal/d;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lcom/fanwei/jubaosdk/shell/internal/d;-><init>(Lcom/fanwei/jubaosdk/common/core/Dispatcher;Ljava/lang/String;)V

    new-instance v1, Lcom/fanwei/jubaosdk/shell/a$8;

    invoke-direct {v1, p0, p1, p2}, Lcom/fanwei/jubaosdk/shell/a$8;-><init>(Lcom/fanwei/jubaosdk/shell/a;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/fanwei/jubaosdk/shell/internal/d;->enqueue(Lcom/fanwei/jubaosdk/common/core/AbstractCall$Callback;)V

    return-void
.end method

.method private a(Z)V
    .registers 2

    invoke-static {p1}, Lcom/fanwei/jubaosdk/common/util/LogUtil;->setEnableLog(Z)V

    invoke-static {p1}, Lcom/fanwei/bluearty/tinyhttp/Const;->setPrintLog(Z)V

    sput-boolean p1, Lcom/fanwei/bluearty/pluginmgr/utils/Trace;->LOG_OUTPUT:Z

    return-void
.end method

.method private b()V
    .registers 5

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/fanwei/jubaosdk/common/util/LogUtil;->getEnableLog()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/fanwei/jubaosdk/shell/a;->a(Z)V

    iget-object v0, p0, Lcom/fanwei/jubaosdk/shell/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/fanwei/jubaosdk/common/util/PrefsUtil;->with(Landroid/content/Context;)Lcom/fanwei/jubaosdk/common/util/PrefsUtil;

    move-result-object v0

    const-string v1, "loadRunInMainThread"

    invoke-virtual {v0, v1, v2}, Lcom/fanwei/jubaosdk/common/util/PrefsUtil;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/fanwei/jubaosdk/shell/internal/a;->b:Z

    const-string v0, "FWPlugin initialize"

    invoke-static {v0}, Lcom/fanwei/jubaosdk/common/util/LogUtil;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/fanwei/jubaosdk/shell/a;->b:Landroid/content/Context;

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/fanwei/jubaosdk/shell/a;->c:Lcom/fanwei/jubaosdk/common/core/Dispatcher;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/fanwei/bluearty/pluginmgr/PluginManager;->init(Landroid/content/Context;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/fanwei/bluearty/pluginmgr/PluginManager;->getSingleton()Lcom/fanwei/bluearty/pluginmgr/PluginManager;

    move-result-object v0

    iget-object v1, p0, Lcom/fanwei/jubaosdk/shell/a;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fanwei/bluearty/pluginmgr/PluginManager;->setPluginParentClassLoader(Ljava/lang/ClassLoader;)V

    iget-object v0, p0, Lcom/fanwei/jubaosdk/shell/a;->h:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method static synthetic b(Lcom/fanwei/jubaosdk/shell/a;)V
    .registers 1

    invoke-direct {p0}, Lcom/fanwei/jubaosdk/shell/a;->e()V

    return-void
.end method

.method private c()V
    .registers 4

    const-string v0, "loadPlugin start"

    invoke-static {v0}, Lcom/fanwei/jubaosdk/common/util/LogUtil;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/fanwei/jubaosdk/shell/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/fanwei/jubaosdk/common/util/PrefsUtil;->with(Landroid/content/Context;)Lcom/fanwei/jubaosdk/common/util/PrefsUtil;

    move-result-object v0

    const-string v1, "APK_FILEPATH_NEW"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/fanwei/jubaosdk/common/util/PrefsUtil;->read(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_21

    const-string v1, "plugin_cashier_v4.7"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_25

    :cond_21
    invoke-direct {p0}, Lcom/fanwei/jubaosdk/shell/a;->d()V

    :goto_24
    return-void

    :cond_25
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadPlugin loading "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fanwei/jubaosdk/common/util/LogUtil;->e(Ljava/lang/String;)V

    new-instance v1, Lcom/fanwei/jubaosdk/shell/internal/d;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Lcom/fanwei/jubaosdk/shell/internal/d;-><init>(Lcom/fanwei/jubaosdk/common/core/Dispatcher;Ljava/lang/String;)V

    new-instance v2, Lcom/fanwei/jubaosdk/shell/a$2;

    invoke-direct {v2, p0, v0}, Lcom/fanwei/jubaosdk/shell/a$2;-><init>(Lcom/fanwei/jubaosdk/shell/a;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/fanwei/jubaosdk/shell/internal/d;->enqueue(Lcom/fanwei/jubaosdk/common/core/AbstractCall$Callback;)V

    goto :goto_24
.end method

.method static synthetic c(Lcom/fanwei/jubaosdk/shell/a;)V
    .registers 1

    invoke-direct {p0}, Lcom/fanwei/jubaosdk/shell/a;->f()V

    return-void
.end method

.method private d()V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/fanwei/jubaosdk/shell/a;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "plugin_cashier_v4.7.apk"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/fanwei/jubaosdk/shell/a;->d:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "plugin_cashier_v4.7.apk"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/fanwei/jubaosdk/shell/internal/c;

    iget-object v3, p0, Lcom/fanwei/jubaosdk/shell/a;->c:Lcom/fanwei/jubaosdk/common/core/Dispatcher;

    invoke-direct {v2, v3, v0, v1}, Lcom/fanwei/jubaosdk/shell/internal/c;-><init>(Lcom/fanwei/jubaosdk/common/core/Dispatcher;Ljava/io/InputStream;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lcom/fanwei/jubaosdk/shell/internal/c;->setCallbackOnUi(Z)V

    new-instance v0, Lcom/fanwei/jubaosdk/shell/a$3;

    invoke-direct {v0, p0, v1}, Lcom/fanwei/jubaosdk/shell/a$3;-><init>(Lcom/fanwei/jubaosdk/shell/a;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/fanwei/jubaosdk/shell/internal/c;->enqueue(Lcom/fanwei/jubaosdk/common/core/AbstractCall$Callback;)V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_43} :catch_44

    :goto_43
    return-void

    :catch_44
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_43
.end method

.method static synthetic d(Lcom/fanwei/jubaosdk/shell/a;)V
    .registers 1

    invoke-direct {p0}, Lcom/fanwei/jubaosdk/shell/a;->g()V

    return-void
.end method

.method private e()V
    .registers 5

    new-instance v0, Lcom/fanwei/jubaosdk/shell/internal/SDKDebugReq;

    invoke-direct {v0}, Lcom/fanwei/jubaosdk/shell/internal/SDKDebugReq;-><init>()V

    const-string v1, "android"

    invoke-virtual {v0, v1}, Lcom/fanwei/jubaosdk/shell/internal/SDKDebugReq;->setSystemType(Ljava/lang/String;)V

    invoke-static {}, Lcom/fanwei/jubaosdk/common/util/CommonUtils;->getSystemDetail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fanwei/jubaosdk/shell/internal/SDKDebugReq;->setSystemDetail(Ljava/lang/String;)V

    const-string v1, "4.7"

    invoke-virtual {v0, v1}, Lcom/fanwei/jubaosdk/shell/internal/SDKDebugReq;->setSdkVersion(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/fanwei/jubaosdk/shell/a;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/fanwei/jubaosdk/common/util/PrefsUtil;->with(Landroid/content/Context;)Lcom/fanwei/jubaosdk/common/util/PrefsUtil;

    move-result-object v1

    const-string v2, "APK_FILEPATH_NEW"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/fanwei/jubaosdk/common/util/PrefsUtil;->read(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fanwei/jubaosdk/shell/internal/SDKDebugReq;->setPluginName(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/fanwei/jubaosdk/shell/a;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/fanwei/jubaosdk/common/util/PrefsUtil;->with(Landroid/content/Context;)Lcom/fanwei/jubaosdk/common/util/PrefsUtil;

    move-result-object v1

    const-string v2, "APK_VERSION_NEW"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/fanwei/jubaosdk/common/util/PrefsUtil;->read(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fanwei/jubaosdk/shell/internal/SDKDebugReq;->setPluginVersion(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/fanwei/jubaosdk/shell/a;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/fanwei/jubaosdk/common/util/NetworkUtil;->getCurrentNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fanwei/jubaosdk/shell/internal/SDKDebugReq;->setNetworkType(Ljava/lang/String;)V

    const-string v1, "sdk.jubaopay.com/api/sdk/getSdkDebug.htm"

    invoke-static {v1}, Lcom/fanwei/jubaosdk/shell/internal/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get sdk debug start "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/fanwei/jubaosdk/common/util/LogUtil;->e(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/fanwei/jubaosdk/shell/a;->c:Lcom/fanwei/jubaosdk/common/core/Dispatcher;

    invoke-static {v2, v1, v0}, Lcom/fanwei/jubaosdk/common/http/JSONApi;->newPostHttpCall(Lcom/fanwei/jubaosdk/common/core/Dispatcher;Ljava/lang/String;Ljava/lang/Object;)Lcom/fanwei/jubaosdk/common/http/JSONCall;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/fanwei/jubaosdk/common/http/JSONCall;->setCallbackOnUi(Z)V

    new-instance v1, Lcom/fanwei/jubaosdk/shell/a$4;

    invoke-direct {v1, p0}, Lcom/fanwei/jubaosdk/shell/a$4;-><init>(Lcom/fanwei/jubaosdk/shell/a;)V

    invoke-virtual {v0, v1}, Lcom/fanwei/jubaosdk/common/http/JSONCall;->enqueue(Lcom/fanwei/jubaosdk/common/http/JSONCall$JSONCallback;)V

    return-void
.end method

.method static synthetic e(Lcom/fanwei/jubaosdk/shell/a;)V
    .registers 1

    invoke-direct {p0}, Lcom/fanwei/jubaosdk/shell/a;->h()V

    return-void
.end method

.method static synthetic f(Lcom/fanwei/jubaosdk/shell/a;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/fanwei/jubaosdk/shell/a;->h:Landroid/os/Handler;

    return-object v0
.end method

.method private f()V
    .registers 5

    new-instance v0, Lcom/fanwei/jubaosdk/shell/internal/CheckUpdateReq;

    invoke-direct {v0}, Lcom/fanwei/jubaosdk/shell/internal/CheckUpdateReq;-><init>()V

    const-string v1, "android"

    invoke-virtual {v0, v1}, Lcom/fanwei/jubaosdk/shell/internal/CheckUpdateReq;->setSystemType(Ljava/lang/String;)V

    invoke-static {}, Lcom/fanwei/jubaosdk/common/util/CommonUtils;->getSystemDetail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fanwei/jubaosdk/shell/internal/CheckUpdateReq;->setSystemDetail(Ljava/lang/String;)V

    const-string v1, "4.7"

    invoke-virtual {v0, v1}, Lcom/fanwei/jubaosdk/shell/internal/CheckUpdateReq;->setSdkVersion(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/fanwei/jubaosdk/shell/a;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/fanwei/jubaosdk/common/util/PrefsUtil;->with(Landroid/content/Context;)Lcom/fanwei/jubaosdk/common/util/PrefsUtil;

    move-result-object v1

    const-string v2, "APK_FILEPATH_NEW"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/fanwei/jubaosdk/common/util/PrefsUtil;->read(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fanwei/jubaosdk/shell/internal/CheckUpdateReq;->setPluginName(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/fanwei/jubaosdk/shell/a;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/fanwei/jubaosdk/common/util/PrefsUtil;->with(Landroid/content/Context;)Lcom/fanwei/jubaosdk/common/util/PrefsUtil;

    move-result-object v1

    const-string v2, "APK_VERSION_NEW"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/fanwei/jubaosdk/common/util/PrefsUtil;->read(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fanwei/jubaosdk/shell/internal/CheckUpdateReq;->setPluginVersion(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/fanwei/jubaosdk/shell/a;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/fanwei/jubaosdk/common/util/NetworkUtil;->getCurrentNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fanwei/jubaosdk/shell/internal/CheckUpdateReq;->setNetworkType(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/fanwei/jubaosdk/shell/a;->g:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fanwei/jubaosdk/shell/internal/CheckUpdateReq;->setErrorInfo(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/fanwei/jubaosdk/shell/a;->g:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/fanwei/jubaosdk/shell/a;->g:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const-string v1, "sdk.jubaopay.com/api/sdk/checkForUpdate.htm"

    invoke-static {v1}, Lcom/fanwei/jubaosdk/shell/internal/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "check for update start "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/fanwei/jubaosdk/common/util/LogUtil;->e(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/fanwei/jubaosdk/shell/a;->c:Lcom/fanwei/jubaosdk/common/core/Dispatcher;

    invoke-static {v2, v1, v0}, Lcom/fanwei/jubaosdk/common/http/JSONApi;->newPostHttpCall(Lcom/fanwei/jubaosdk/common/core/Dispatcher;Ljava/lang/String;Ljava/lang/Object;)Lcom/fanwei/jubaosdk/common/http/JSONCall;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/fanwei/jubaosdk/common/http/JSONCall;->setCallbackOnUi(Z)V

    new-instance v1, Lcom/fanwei/jubaosdk/shell/a$5;

    invoke-direct {v1, p0}, Lcom/fanwei/jubaosdk/shell/a$5;-><init>(Lcom/fanwei/jubaosdk/shell/a;)V

    invoke-virtual {v0, v1}, Lcom/fanwei/jubaosdk/common/http/JSONCall;->enqueue(Lcom/fanwei/jubaosdk/common/http/JSONCall$JSONCallback;)V

    return-void
.end method

.method static synthetic g(Lcom/fanwei/jubaosdk/shell/a;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/fanwei/jubaosdk/shell/a;->b:Landroid/content/Context;

    return-object v0
.end method

.method private g()V
    .registers 10

    iget-object v0, p0, Lcom/fanwei/jubaosdk/shell/a;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    sget v1, Lcom/fanwei/jubaosdk/shell/internal/a;->h:I

    if-lt v0, v1, :cond_10

    const-string v0, "download plugin failed reach max download count"

    invoke-static {v0}, Lcom/fanwei/jubaosdk/common/util/LogUtil;->e(Ljava/lang/String;)V

    :goto_f
    return-void

    :cond_10
    iget-object v0, p0, Lcom/fanwei/jubaosdk/shell/a;->f:Lcom/fanwei/jubaosdk/shell/internal/CheckUpdateResp;

    invoke-virtual {v0}, Lcom/fanwei/jubaosdk/shell/internal/CheckUpdateResp;->getUpdateUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fanwei/jubaosdk/common/util/FunctionUtil;->parseFilenamefromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-instance v4, Ljava/io/File;

    iget-object v0, p0, Lcom/fanwei/jubaosdk/shell/a;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".tmp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_b0

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_b0

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v2

    :goto_48
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_74

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v0

    iget-object v5, p0, Lcom/fanwei/jubaosdk/shell/a;->f:Lcom/fanwei/jubaosdk/shell/internal/CheckUpdateResp;

    invoke-virtual {v5}, Lcom/fanwei/jubaosdk/shell/internal/CheckUpdateResp;->getUpdateFileSize()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    cmp-long v0, v0, v5

    if-lez v0, :cond_68

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    const-string v0, "download plugin temp file larger delete file"

    invoke-static {v0}, Lcom/fanwei/jubaosdk/common/util/LogUtil;->e(Ljava/lang/String;)V

    :cond_68
    sget-boolean v0, Lcom/fanwei/jubaosdk/shell/internal/a;->c:Z

    if-nez v0, :cond_74

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    const-string v0, "download plugin not resume type delete file"

    invoke-static {v0}, Lcom/fanwei/jubaosdk/common/util/LogUtil;->e(Ljava/lang/String;)V

    :cond_74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "download plugin start "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fanwei/jubaosdk/shell/a;->f:Lcom/fanwei/jubaosdk/shell/internal/CheckUpdateResp;

    invoke-virtual {v1}, Lcom/fanwei/jubaosdk/shell/internal/CheckUpdateResp;->getUpdateUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fanwei/jubaosdk/common/util/LogUtil;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/fanwei/jubaosdk/shell/a;->c:Lcom/fanwei/jubaosdk/common/core/Dispatcher;

    iget-object v1, p0, Lcom/fanwei/jubaosdk/shell/a;->f:Lcom/fanwei/jubaosdk/shell/internal/CheckUpdateResp;

    invoke-virtual {v1}, Lcom/fanwei/jubaosdk/shell/internal/CheckUpdateResp;->getUpdateUrl()Ljava/lang/String;

    move-result-object v1

    sget-boolean v5, Lcom/fanwei/jubaosdk/shell/internal/a;->c:Z

    sget v6, Lcom/fanwei/jubaosdk/shell/internal/a;->j:I

    sget v7, Lcom/fanwei/jubaosdk/shell/internal/a;->i:I

    invoke-static/range {v0 .. v7}, Lcom/fanwei/jubaosdk/common/http/DownloadApi;->newDownloadCall(Lcom/fanwei/jubaosdk/common/core/Dispatcher;Ljava/lang/String;JLjava/io/File;ZII)Lcom/fanwei/jubaosdk/common/http/DownloadCall;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/fanwei/jubaosdk/common/http/DownloadCall;->setCallbackOnUi(Z)V

    new-instance v1, Lcom/fanwei/jubaosdk/shell/a$6;

    invoke-direct {v1, p0, v8, v4}, Lcom/fanwei/jubaosdk/shell/a$6;-><init>(Lcom/fanwei/jubaosdk/shell/a;Ljava/lang/String;Ljava/io/File;)V

    invoke-virtual {v0, v1}, Lcom/fanwei/jubaosdk/common/http/DownloadCall;->enqueue(Lcom/fanwei/jubaosdk/common/core/AbstractCall$Callback;)V

    goto/16 :goto_f

    :cond_b0
    const-wide/16 v2, 0x0

    goto :goto_48
.end method

.method private h()V
    .registers 5

    const-string v0, "handle network error start "

    invoke-static {v0}, Lcom/fanwei/jubaosdk/common/util/LogUtil;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/fanwei/jubaosdk/shell/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/fanwei/jubaosdk/common/util/NetworkUtil;->IsNetWorkEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const-string v0, "handle network error network available "

    invoke-static {v0}, Lcom/fanwei/jubaosdk/common/util/LogUtil;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/fanwei/jubaosdk/shell/a;->h:Landroid/os/Handler;

    const/4 v1, 0x2

    sget-wide v2, Lcom/fanwei/jubaosdk/shell/internal/a;->f:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_1a
    return-void

    :cond_1b
    const-string v0, "handle network error network not available "

    invoke-static {v0}, Lcom/fanwei/jubaosdk/common/util/LogUtil;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/fanwei/jubaosdk/shell/a;->h:Landroid/os/Handler;

    const/4 v1, 0x4

    sget-wide v2, Lcom/fanwei/jubaosdk/shell/internal/a;->g:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1a
.end method

.method static synthetic h(Lcom/fanwei/jubaosdk/shell/a;)V
    .registers 1

    invoke-direct {p0}, Lcom/fanwei/jubaosdk/shell/a;->d()V

    return-void
.end method

.method static synthetic i(Lcom/fanwei/jubaosdk/shell/a;)Ljava/lang/StringBuilder;
    .registers 2

    iget-object v0, p0, Lcom/fanwei/jubaosdk/shell/a;->g:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method static synthetic j(Lcom/fanwei/jubaosdk/shell/a;)Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 2

    iget-object v0, p0, Lcom/fanwei/jubaosdk/shell/a;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic k(Lcom/fanwei/jubaosdk/shell/a;)Ljava/io/File;
    .registers 2

    iget-object v0, p0, Lcom/fanwei/jubaosdk/shell/a;->d:Ljava/io/File;

    return-object v0
.end method

.method static synthetic l(Lcom/fanwei/jubaosdk/shell/a;)Lcom/fanwei/jubaosdk/shell/internal/CheckUpdateResp;
    .registers 2

    iget-object v0, p0, Lcom/fanwei/jubaosdk/shell/a;->f:Lcom/fanwei/jubaosdk/shell/internal/CheckUpdateResp;

    return-object v0
.end method


# virtual methods
.method a(Ljava/lang/String;Lcom/fanwei/jubaosdk/shell/PayOrder;)Lcom/fanwei/jubaosdk/common/entity/PayMethodResponse;
    .registers 6

    if-nez p2, :cond_a

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "PayOrder\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    new-instance v0, Lcom/fanwei/jubaosdk/common/entity/PayMethodsRequest;

    invoke-direct {v0}, Lcom/fanwei/jubaosdk/common/entity/PayMethodsRequest;-><init>()V

    invoke-virtual {v0, p1}, Lcom/fanwei/jubaosdk/common/entity/PayMethodsRequest;->setAppId(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/fanwei/jubaosdk/shell/PayOrder;->getAmount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fanwei/jubaosdk/common/entity/PayMethodsRequest;->setAmount(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/fanwei/jubaosdk/common/entity/PayMethodsRequest;->setUseApi(Z)V

    invoke-virtual {p2}, Lcom/fanwei/jubaosdk/shell/PayOrder;->getPlayerId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fanwei/jubaosdk/common/entity/PayMethodsRequest;->setPlayerId(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/fanwei/jubaosdk/shell/PayOrder;->getGoodsName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fanwei/jubaosdk/common/entity/PayMethodsRequest;->setGoodsName(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/fanwei/jubaosdk/shell/PayOrder;->getPayId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fanwei/jubaosdk/common/entity/PayMethodsRequest;->setPayId(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/fanwei/jubaosdk/shell/a;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/fanwei/jubaosdk/shell/internal/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fanwei/jubaosdk/common/entity/PayMethodsRequest;->setImsi(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/fanwei/jubaosdk/shell/a;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fanwei/jubaosdk/common/entity/PayMethodsRequest;->setPackageName(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/fanwei/jubaosdk/shell/PayOrder;->getChannelId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fanwei/jubaosdk/common/entity/PayMethodsRequest;->setChannelId(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/fanwei/jubaosdk/shell/PayOrder;->getRemark()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fanwei/jubaosdk/common/entity/PayMethodsRequest;->setRemark(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/fanwei/jubaosdk/shell/a;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/fanwei/jubaosdk/shell/internal/b;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fanwei/jubaosdk/common/entity/PayMethodsRequest;->setImei(Ljava/lang/String;)V

    const-string v1, "4.7"

    invoke-virtual {v0, v1}, Lcom/fanwei/jubaosdk/common/entity/PayMethodsRequest;->setSdkVersion(Ljava/lang/String;)V

    new-instance v1, Lcom/fanwei/jubaosdk/common/http/SyncJSONCall;

    const-string v2, "sdk.jubaopay.com/api/getAvailableChannels.do"

    invoke-static {v2}, Lcom/fanwei/jubaosdk/shell/internal/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/fanwei/jubaosdk/common/http/SyncJSONCall;-><init>(Ljava/lang/String;Lcom/fanwei/jubaosdk/common/entity/PayMethodsRequest;)V

    invoke-virtual {v1}, Lcom/fanwei/jubaosdk/common/http/SyncJSONCall;->execute()Lcom/fanwei/jubaosdk/common/entity/PayMethodResponse;

    move-result-object v0

    return-object v0
.end method

.method declared-synchronized a(Landroid/app/Activity;Lcom/fanwei/jubaosdk/shell/PayOrder;ZILcom/fanwei/jubaosdk/common/entity/PayMethodResponse;)V
    .registers 11

    monitor-enter p0

    :try_start_1
    invoke-static {}, Lcom/fanwei/bluearty/pluginmgr/PluginManager;->getSingleton()Lcom/fanwei/bluearty/pluginmgr/PluginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fanwei/bluearty/pluginmgr/PluginManager;->getUsingPackage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/fanwei/jubaosdk/shell/a;->h:Landroid/os/Handler;

    new-instance v1, Lcom/fanwei/jubaosdk/shell/a$9;

    invoke-direct {v1, p0}, Lcom/fanwei/jubaosdk/shell/a$9;-><init>(Lcom/fanwei/jubaosdk/shell/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_e5

    :cond_15
    :goto_15
    monitor-exit p0

    return-void

    :cond_17
    :try_start_17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pay start "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fanwei/jubaosdk/common/util/LogUtil;->e(Ljava/lang/String;)V

    invoke-static {}, Lcom/fanwei/bluearty/pluginmgr/PluginManager;->getSingleton()Lcom/fanwei/bluearty/pluginmgr/PluginManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/fanwei/bluearty/pluginmgr/PluginManager;->findPluginByPackageName(Ljava/lang/String;)Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    new-instance v3, Lcom/fanwei/jubaosdk/common/entity/OrderEntity;

    invoke-direct {v3}, Lcom/fanwei/jubaosdk/common/entity/OrderEntity;-><init>()V

    invoke-virtual {p2}, Lcom/fanwei/jubaosdk/shell/PayOrder;->getPayId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/fanwei/jubaosdk/common/entity/OrderEntity;->setPayId(Ljava/lang/String;)Lcom/fanwei/jubaosdk/common/entity/OrderEntity;

    move-result-object v3

    invoke-virtual {p2}, Lcom/fanwei/jubaosdk/shell/PayOrder;->getAmount()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/fanwei/jubaosdk/common/entity/OrderEntity;->setAmount(Ljava/lang/String;)Lcom/fanwei/jubaosdk/common/entity/OrderEntity;

    move-result-object v3

    invoke-virtual {p2}, Lcom/fanwei/jubaosdk/shell/PayOrder;->getGoodsName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/fanwei/jubaosdk/common/entity/OrderEntity;->setGoodsName(Ljava/lang/String;)Lcom/fanwei/jubaosdk/common/entity/OrderEntity;

    move-result-object v3

    invoke-virtual {p2}, Lcom/fanwei/jubaosdk/shell/PayOrder;->getRemark()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/fanwei/jubaosdk/common/entity/OrderEntity;->setRemark(Ljava/lang/String;)Lcom/fanwei/jubaosdk/common/entity/OrderEntity;

    move-result-object v3

    invoke-virtual {p2}, Lcom/fanwei/jubaosdk/shell/PayOrder;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/fanwei/jubaosdk/common/entity/OrderEntity;->setAppId(Ljava/lang/String;)Lcom/fanwei/jubaosdk/common/entity/OrderEntity;

    move-result-object v3

    invoke-virtual {p2}, Lcom/fanwei/jubaosdk/shell/PayOrder;->getPlayerId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/fanwei/jubaosdk/common/entity/OrderEntity;->setPlayerId(Ljava/lang/String;)Lcom/fanwei/jubaosdk/common/entity/OrderEntity;

    move-result-object v3

    const-string v4, "orderEntity"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v3, "payMethodResponse"

    invoke-virtual {v2, v3, p5}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v3, "useHttps"

    sget-boolean v4, Lcom/fanwei/jubaosdk/shell/internal/a;->a:Z

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v3, "enableLog"

    invoke-static {}, Lcom/fanwei/jubaosdk/common/util/LogUtil;->getEnableLog()Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v3, "sdkVersion"

    const-string v4, "4.7"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "useApi"

    invoke-virtual {v2, v3, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v3, "channelType"

    invoke-virtual {v2, v3, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "orientation"

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/app/Activity;->overridePendingTransition(II)V

    invoke-static {}, Lcom/fanwei/bluearty/pluginmgr/PluginManager;->getSingleton()Lcom/fanwei/bluearty/pluginmgr/PluginManager;

    move-result-object v2

    const/16 v3, 0x1f5f

    invoke-virtual {v2, p1, v0, v1, v3}, Lcom/fanwei/bluearty/pluginmgr/PluginManager;->startMainActivityForResult(Landroid/app/Activity;Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;Landroid/content/Intent;I)V

    sget-boolean v0, Lcom/fanwei/jubaosdk/shell/internal/a;->d:Z

    if-eqz v0, :cond_15

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pay sCheckForUpdate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/fanwei/jubaosdk/shell/internal/a;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fanwei/jubaosdk/common/util/LogUtil;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/fanwei/jubaosdk/shell/a;->h:Landroid/os/Handler;

    const/4 v1, 0x2

    sget-wide v2, Lcom/fanwei/jubaosdk/shell/internal/a;->e:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_e3
    .catchall {:try_start_17 .. :try_end_e3} :catchall_e5

    goto/16 :goto_15

    :catchall_e5
    move-exception v0

    monitor-exit p0

    throw v0
.end method
