.class Lokio/AsyncTimeout$1;
.super Ljava/lang/Object;

# interfaces
.implements Lokio/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokio/AsyncTimeout;->sink(Lokio/Sink;)Lokio/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lokio/Sink;

.field final synthetic b:Lokio/AsyncTimeout;


# direct methods
.method constructor <init>(Lokio/AsyncTimeout;Lokio/Sink;)V
    .registers 3

    iput-object p1, p0, Lokio/AsyncTimeout$1;->b:Lokio/AsyncTimeout;

    iput-object p2, p0, Lokio/AsyncTimeout$1;->a:Lokio/Sink;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lokio/AsyncTimeout$1;->b:Lokio/AsyncTimeout;

    invoke-virtual {v0}, Lokio/AsyncTimeout;->enter()V

    :try_start_6
    iget-object v0, p0, Lokio/AsyncTimeout$1;->a:Lokio/Sink;

    invoke-interface {v0}, Lokio/Sink;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_b} :catch_12
    .catchall {:try_start_6 .. :try_end_b} :catchall_1a

    const/4 v0, 0x1

    iget-object v1, p0, Lokio/AsyncTimeout$1;->b:Lokio/AsyncTimeout;

    invoke-virtual {v1, v0}, Lokio/AsyncTimeout;->exit(Z)V

    return-void

    :catch_12
    move-exception v0

    :try_start_13
    iget-object v2, p0, Lokio/AsyncTimeout$1;->b:Lokio/AsyncTimeout;

    invoke-virtual {v2, v0}, Lokio/AsyncTimeout;->exit(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_1a
    .catchall {:try_start_13 .. :try_end_1a} :catchall_1a

    :catchall_1a
    move-exception v0

    iget-object v2, p0, Lokio/AsyncTimeout$1;->b:Lokio/AsyncTimeout;

    invoke-virtual {v2, v1}, Lokio/AsyncTimeout;->exit(Z)V

    throw v0
.end method

.method public flush()V
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lokio/AsyncTimeout$1;->b:Lokio/AsyncTimeout;

    invoke-virtual {v0}, Lokio/AsyncTimeout;->enter()V

    :try_start_6
    iget-object v0, p0, Lokio/AsyncTimeout$1;->a:Lokio/Sink;

    invoke-interface {v0}, Lokio/Sink;->flush()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_b} :catch_12
    .catchall {:try_start_6 .. :try_end_b} :catchall_1a

    const/4 v0, 0x1

    iget-object v1, p0, Lokio/AsyncTimeout$1;->b:Lokio/AsyncTimeout;

    invoke-virtual {v1, v0}, Lokio/AsyncTimeout;->exit(Z)V

    return-void

    :catch_12
    move-exception v0

    :try_start_13
    iget-object v2, p0, Lokio/AsyncTimeout$1;->b:Lokio/AsyncTimeout;

    invoke-virtual {v2, v0}, Lokio/AsyncTimeout;->exit(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_1a
    .catchall {:try_start_13 .. :try_end_1a} :catchall_1a

    :catchall_1a
    move-exception v0

    iget-object v2, p0, Lokio/AsyncTimeout$1;->b:Lokio/AsyncTimeout;

    invoke-virtual {v2, v1}, Lokio/AsyncTimeout;->exit(Z)V

    throw v0
.end method

.method public timeout()Lokio/Timeout;
    .registers 2

    iget-object v0, p0, Lokio/AsyncTimeout$1;->b:Lokio/AsyncTimeout;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncTimeout.sink("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lokio/AsyncTimeout$1;->a:Lokio/Sink;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lokio/Buffer;J)V
    .registers 13

    const-wide/16 v2, 0x0

    iget-wide v0, p1, Lokio/Buffer;->b:J

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lokio/Util;->a(JJJ)V

    move-wide v4, p2

    :goto_9
    cmp-long v0, v4, v2

    if-lez v0, :cond_4f

    iget-object v0, p1, Lokio/Buffer;->a:Lokio/Segment;

    move-object v6, v0

    move-wide v0, v2

    :goto_11
    const-wide/32 v7, 0x10000

    cmp-long v7, v0, v7

    if-gez v7, :cond_28

    iget-object v7, p1, Lokio/Buffer;->a:Lokio/Segment;

    iget v7, v7, Lokio/Segment;->c:I

    iget-object v8, p1, Lokio/Buffer;->a:Lokio/Segment;

    iget v8, v8, Lokio/Segment;->b:I

    sub-int/2addr v7, v8

    int-to-long v7, v7

    add-long/2addr v7, v0

    cmp-long v0, v7, v4

    if-ltz v0, :cond_3b

    move-wide v0, v4

    :cond_28
    const/4 v6, 0x0

    iget-object v7, p0, Lokio/AsyncTimeout$1;->b:Lokio/AsyncTimeout;

    invoke-virtual {v7}, Lokio/AsyncTimeout;->enter()V

    :try_start_2e
    iget-object v7, p0, Lokio/AsyncTimeout$1;->a:Lokio/Sink;

    invoke-interface {v7, p1, v0, v1}, Lokio/Sink;->write(Lokio/Buffer;J)V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_33} :catch_40
    .catchall {:try_start_2e .. :try_end_33} :catchall_48

    sub-long/2addr v4, v0

    const/4 v0, 0x1

    iget-object v1, p0, Lokio/AsyncTimeout$1;->b:Lokio/AsyncTimeout;

    invoke-virtual {v1, v0}, Lokio/AsyncTimeout;->exit(Z)V

    goto :goto_9

    :cond_3b
    iget-object v0, v6, Lokio/Segment;->f:Lokio/Segment;

    move-object v6, v0

    move-wide v0, v7

    goto :goto_11

    :catch_40
    move-exception v0

    :try_start_41
    iget-object v1, p0, Lokio/AsyncTimeout$1;->b:Lokio/AsyncTimeout;

    invoke-virtual {v1, v0}, Lokio/AsyncTimeout;->exit(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_48
    .catchall {:try_start_41 .. :try_end_48} :catchall_48

    :catchall_48
    move-exception v0

    iget-object v1, p0, Lokio/AsyncTimeout$1;->b:Lokio/AsyncTimeout;

    invoke-virtual {v1, v6}, Lokio/AsyncTimeout;->exit(Z)V

    throw v0

    :cond_4f
    return-void
.end method
