.class final Lokhttp3/x$a;
.super Lokhttp3/internal/NamedRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lokhttp3/x;

.field private final b:Lokhttp3/f;


# direct methods
.method private constructor <init>(Lokhttp3/x;Lokhttp3/f;)V
    .registers 7

    iput-object p1, p0, Lokhttp3/x$a;->a:Lokhttp3/x;

    const-string v0, "OkHttp %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lokhttp3/x;->c()Lokhttp3/s;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/s;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lokhttp3/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p2, p0, Lokhttp3/x$a;->b:Lokhttp3/f;

    return-void
.end method

.method synthetic constructor <init>(Lokhttp3/x;Lokhttp3/f;Lokhttp3/x$1;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lokhttp3/x$a;-><init>(Lokhttp3/x;Lokhttp3/f;)V

    return-void
.end method


# virtual methods
.method a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lokhttp3/x$a;->a:Lokhttp3/x;

    iget-object v0, v0, Lokhttp3/x;->a:Lokhttp3/y;

    invoke-virtual {v0}, Lokhttp3/y;->a()Lokhttp3/s;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/s;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected execute()V
    .registers 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_2
    iget-object v0, p0, Lokhttp3/x$a;->a:Lokhttp3/x;

    invoke-static {v0}, Lokhttp3/x;->a(Lokhttp3/x;)Lokhttp3/aa;

    move-result-object v0

    iget-object v3, p0, Lokhttp3/x$a;->a:Lokhttp3/x;

    invoke-static {v3}, Lokhttp3/x;->b(Lokhttp3/x;)Lokhttp3/internal/http/RetryAndFollowUpInterceptor;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->isCanceled()Z
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_11} :catch_81
    .catchall {:try_start_2 .. :try_end_11} :catchall_72

    move-result v2

    if-eqz v2, :cond_30

    :try_start_14
    iget-object v0, p0, Lokhttp3/x$a;->b:Lokhttp3/f;

    iget-object v2, p0, Lokhttp3/x$a;->a:Lokhttp3/x;

    new-instance v3, Ljava/io/IOException;

    const-string v4, "Canceled"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2, v3}, Lokhttp3/f;->a(Lokhttp3/e;Ljava/io/IOException;)V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_22} :catch_38
    .catchall {:try_start_14 .. :try_end_22} :catchall_72

    :goto_22
    iget-object v0, p0, Lokhttp3/x$a;->a:Lokhttp3/x;

    invoke-static {v0}, Lokhttp3/x;->d(Lokhttp3/x;)Lokhttp3/v;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/v;->s()Lokhttp3/o;

    move-result-object v0

    invoke-virtual {v0, p0}, Lokhttp3/o;->b(Lokhttp3/x$a;)V

    :goto_2f
    return-void

    :cond_30
    :try_start_30
    iget-object v2, p0, Lokhttp3/x$a;->b:Lokhttp3/f;

    iget-object v3, p0, Lokhttp3/x$a;->a:Lokhttp3/x;

    invoke-interface {v2, v3, v0}, Lokhttp3/f;->a(Lokhttp3/e;Lokhttp3/aa;)V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_37} :catch_38
    .catchall {:try_start_30 .. :try_end_37} :catchall_72

    goto :goto_22

    :catch_38
    move-exception v0

    :goto_39
    if-eqz v1, :cond_6a

    :try_start_3b
    invoke-static {}, Lokhttp3/internal/platform/Platform;->get()Lokhttp3/internal/platform/Platform;

    move-result-object v1

    const/4 v2, 0x4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Callback failure for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lokhttp3/x$a;->a:Lokhttp3/x;

    invoke-static {v4}, Lokhttp3/x;->c(Lokhttp3/x;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lokhttp3/internal/platform/Platform;->log(ILjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5c
    .catchall {:try_start_3b .. :try_end_5c} :catchall_72

    :goto_5c
    iget-object v0, p0, Lokhttp3/x$a;->a:Lokhttp3/x;

    invoke-static {v0}, Lokhttp3/x;->d(Lokhttp3/x;)Lokhttp3/v;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/v;->s()Lokhttp3/o;

    move-result-object v0

    invoke-virtual {v0, p0}, Lokhttp3/o;->b(Lokhttp3/x$a;)V

    goto :goto_2f

    :cond_6a
    :try_start_6a
    iget-object v1, p0, Lokhttp3/x$a;->b:Lokhttp3/f;

    iget-object v2, p0, Lokhttp3/x$a;->a:Lokhttp3/x;

    invoke-interface {v1, v2, v0}, Lokhttp3/f;->a(Lokhttp3/e;Ljava/io/IOException;)V
    :try_end_71
    .catchall {:try_start_6a .. :try_end_71} :catchall_72

    goto :goto_5c

    :catchall_72
    move-exception v0

    iget-object v1, p0, Lokhttp3/x$a;->a:Lokhttp3/x;

    invoke-static {v1}, Lokhttp3/x;->d(Lokhttp3/x;)Lokhttp3/v;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/v;->s()Lokhttp3/o;

    move-result-object v1

    invoke-virtual {v1, p0}, Lokhttp3/o;->b(Lokhttp3/x$a;)V

    throw v0

    :catch_81
    move-exception v0

    move v1, v2

    goto :goto_39
.end method
