.class public final Lcom/alipay/c/a/a/e/d;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, ""

    sput-object v0, Lcom/alipay/c/a/a/e/d;->a:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/alipay/c/a/a/e/d;->b:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/alipay/c/a/a/e/d;->c:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized a(Ljava/lang/String;)V
    .registers 3

    const-class v1, Lcom/alipay/c/a/a/e/d;

    monitor-enter v1

    :try_start_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lcom/alipay/c/a/a/e/d;->a(Ljava/util/List;)V
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    monitor-exit v1

    return-void

    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const-class v1, Lcom/alipay/c/a/a/e/d;

    monitor-enter v1

    :try_start_3
    sput-object p0, Lcom/alipay/c/a/a/e/d;->a:Ljava/lang/String;

    sput-object p1, Lcom/alipay/c/a/a/e/d;->b:Ljava/lang/String;

    sput-object p2, Lcom/alipay/c/a/a/e/d;->c:Ljava/lang/String;
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_b

    monitor-exit v1

    return-void

    :catchall_b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a(Ljava/lang/Throwable;)V
    .registers 5

    const-class v1, Lcom/alipay/c/a/a/e/d;

    monitor-enter v1

    :try_start_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_23

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1b
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v2}, Lcom/alipay/c/a/a/e/d;->a(Ljava/util/List;)V
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_26

    monitor-exit v1

    return-void

    :cond_23
    :try_start_23
    const-string v0, ""
    :try_end_25
    .catchall {:try_start_23 .. :try_end_25} :catchall_26

    goto :goto_1b

    :catchall_26
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized a(Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-class v1, Lcom/alipay/c/a/a/e/d;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/alipay/c/a/a/e/d;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/c/a/a/a/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    sget-object v0, Lcom/alipay/c/a/a/e/d;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/c/a/a/a/a;->a(Ljava/lang/String;)Z
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_42

    move-result v0

    if-eqz v0, :cond_15

    :cond_13
    :goto_13
    monitor-exit v1

    return-void

    :cond_15
    :try_start_15
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v0, Lcom/alipay/c/a/a/e/d;->c:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_23
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_41
    .catchall {:try_start_15 .. :try_end_41} :catchall_42

    goto :goto_23

    :catchall_42
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_45
    :try_start_45
    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_4a
    .catchall {:try_start_45 .. :try_end_4a} :catchall_42

    :try_start_4a
    new-instance v0, Ljava/io/File;

    sget-object v3, Lcom/alipay/c/a/a/e/d;->a:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_5a

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_5a
    new-instance v3, Ljava/io/File;

    sget-object v0, Lcom/alipay/c/a/a/e/d;->a:Ljava/lang/String;

    sget-object v4, Lcom/alipay/c/a/a/e/d;->b:Ljava/lang/String;

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_6c

    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    :cond_6c
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    int-to-long v6, v0

    add-long/2addr v4, v6

    const-wide/32 v6, 0xc800

    cmp-long v0, v4, v6

    if-gtz v0, :cond_93

    new-instance v0, Ljava/io/FileWriter;

    const/4 v4, 0x1

    invoke-direct {v0, v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    :goto_83
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/FileWriter;->flush()V

    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V

    goto :goto_13

    :catch_91
    move-exception v0

    goto :goto_13

    :cond_93
    new-instance v0, Ljava/io/FileWriter;

    invoke-direct {v0, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_98} :catch_91
    .catchall {:try_start_4a .. :try_end_98} :catchall_42

    goto :goto_83
.end method
