.class public final Lsdk/pay/e/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsdk/pay/e/f$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lsdk/pay/e/f$1;)V
    .registers 2

    invoke-direct {p0}, Lsdk/pay/e/f;-><init>()V

    return-void
.end method

.method static synthetic a(Lsdk/pay/e/f;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lsdk/pay/e/f;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static a()Lsdk/pay/e/f;
    .registers 1

    sget-object v0, Lsdk/pay/e/f$a;->a:Lsdk/pay/e/f;

    return-object v0
.end method

.method private a(Ljava/lang/Throwable;)V
    .registers 3

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lsdk/pay/e/f;->b(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/Throwable;)Z
    .registers 4

    if-nez p1, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lsdk/pay/e/f$1;

    invoke-direct {v1, p0}, Lsdk/pay/e/f$1;-><init>(Lsdk/pay/e/f;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    invoke-direct {p0, p1}, Lsdk/pay/e/f;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x1

    goto :goto_3
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lsdk/pay/e/f;->a:Landroid/content/Context;

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lsdk/pay/e/f;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lsdk/pay/e/f;->b(Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "exception_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lsdk/pay/e/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".log"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lsdk/pay/e/f;->a:Landroid/content/Context;

    invoke-static {v1}, Lsdk/pay/e/g;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_8a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsdk/pay/e/f;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->canWrite()Z

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "canWrite = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lsdk/pay/e/h;->a(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_76

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    :cond_76
    monitor-enter p0

    :try_start_77
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_7c
    .catchall {:try_start_77 .. :try_end_7c} :catchall_94

    const/4 v2, 0x0

    :try_start_7d
    new-instance v1, Ljava/io/FileWriter;

    const/4 v0, 0x1

    invoke-direct {v1, v3, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V
    :try_end_83
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_83} :catch_8b
    .catchall {:try_start_7d .. :try_end_83} :catchall_97

    :try_start_83
    invoke-virtual {v1, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_86
    .catch Ljava/io/IOException; {:try_start_83 .. :try_end_86} :catch_9f
    .catchall {:try_start_83 .. :try_end_86} :catchall_9d

    :try_start_86
    invoke-static {v1}, Lsdk/pay/e/c;->a(Ljava/io/Closeable;)V

    :goto_89
    monitor-exit p0
    :try_end_8a
    .catchall {:try_start_86 .. :try_end_8a} :catchall_94

    :cond_8a
    return-void

    :catch_8b
    move-exception v0

    move-object v1, v2

    :goto_8d
    :try_start_8d
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_90
    .catchall {:try_start_8d .. :try_end_90} :catchall_9d

    :try_start_90
    invoke-static {v1}, Lsdk/pay/e/c;->a(Ljava/io/Closeable;)V

    goto :goto_89

    :catchall_94
    move-exception v0

    monitor-exit p0
    :try_end_96
    .catchall {:try_start_90 .. :try_end_96} :catchall_94

    throw v0

    :catchall_97
    move-exception v0

    move-object v1, v2

    :goto_99
    :try_start_99
    invoke-static {v1}, Lsdk/pay/e/c;->a(Ljava/io/Closeable;)V

    throw v0
    :try_end_9d
    .catchall {:try_start_99 .. :try_end_9d} :catchall_94

    :catchall_9d
    move-exception v0

    goto :goto_99

    :catch_9f
    move-exception v0

    goto :goto_8d
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 4

    invoke-direct {p0, p2}, Lsdk/pay/e/f;->b(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lsdk/pay/e/f;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lsdk/pay/e/f;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :goto_f
    return-void

    :cond_10
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    goto :goto_f
.end method
