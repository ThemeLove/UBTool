.class final Lokio/RealBufferedSource;
.super Ljava/lang/Object;

# interfaces
.implements Lokio/BufferedSource;


# instance fields
.field public final a:Lokio/Buffer;

.field public final b:Lokio/Source;

.field c:Z


# direct methods
.method constructor <init>(Lokio/Source;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    iput-object v0, p0, Lokio/RealBufferedSource;->a:Lokio/Buffer;

    if-nez p1, :cond_14

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    iput-object p1, p0, Lokio/RealBufferedSource;->b:Lokio/Source;

    return-void
.end method


# virtual methods
.method public a(B)J
    .registers 4

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lokio/RealBufferedSource;->a(BJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(BJ)J
    .registers 12

    const-wide/16 v2, -0x1

    iget-boolean v0, p0, Lokio/RealBufferedSource;->c:Z

    if-eqz v0, :cond_12

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    :cond_12
    iget-object v0, p0, Lokio/RealBufferedSource;->a:Lokio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lokio/Buffer;->a(BJ)J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1d

    :goto_1c
    return-wide v0

    :cond_1d
    iget-object v0, p0, Lokio/RealBufferedSource;->a:Lokio/Buffer;

    iget-wide v0, v0, Lokio/Buffer;->b:J

    iget-object v4, p0, Lokio/RealBufferedSource;->b:Lokio/Source;

    iget-object v5, p0, Lokio/RealBufferedSource;->a:Lokio/Buffer;

    const-wide/16 v6, 0x2000

    invoke-interface {v4, v5, v6, v7}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-nez v4, :cond_e

    move-wide v0, v2

    goto :goto_1c
.end method

.method public a(J)V
    .registers 4

    invoke-virtual {p0, p1, p2}, Lokio/RealBufferedSource;->b(J)Z

    move-result v0

    if-nez v0, :cond_c

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_c
    return-void
.end method

.method public b()Lokio/Buffer;
    .registers 2

    iget-object v0, p0, Lokio/RealBufferedSource;->a:Lokio/Buffer;

    return-object v0
.end method

.method public b(J)Z
    .registers 7

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_1f

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteCount < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    iget-boolean v0, p0, Lokio/RealBufferedSource;->c:Z

    if-eqz v0, :cond_2b

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2b
    iget-object v0, p0, Lokio/RealBufferedSource;->a:Lokio/Buffer;

    iget-wide v0, v0, Lokio/Buffer;->b:J

    cmp-long v0, v0, p1

    if-gez v0, :cond_45

    iget-object v0, p0, Lokio/RealBufferedSource;->b:Lokio/Source;

    iget-object v1, p0, Lokio/RealBufferedSource;->a:Lokio/Buffer;

    const-wide/16 v2, 0x2000

    invoke-interface {v0, v1, v2, v3}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_2b

    const/4 v0, 0x0

    :goto_44
    return v0

    :cond_45
    const/4 v0, 0x1

    goto :goto_44
.end method

.method public c(J)Lokio/ByteString;
    .registers 4

    invoke-virtual {p0, p1, p2}, Lokio/RealBufferedSource;->a(J)V

    iget-object v0, p0, Lokio/RealBufferedSource;->a:Lokio/Buffer;

    invoke-virtual {v0, p1, p2}, Lokio/Buffer;->c(J)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .registers 2

    iget-boolean v0, p0, Lokio/RealBufferedSource;->c:Z

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokio/RealBufferedSource;->c:Z

    iget-object v0, p0, Lokio/RealBufferedSource;->b:Lokio/Source;

    invoke-interface {v0}, Lokio/Source;->close()V

    iget-object v0, p0, Lokio/RealBufferedSource;->a:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->q()V

    goto :goto_4
.end method

.method public d()Z
    .registers 5

    iget-boolean v0, p0, Lokio/RealBufferedSource;->c:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-object v0, p0, Lokio/RealBufferedSource;->a:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->d()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lokio/RealBufferedSource;->b:Lokio/Source;

    iget-object v1, p0, Lokio/RealBufferedSource;->a:Lokio/Buffer;

    const-wide/16 v2, 0x2000

    invoke-interface {v0, v1, v2, v3}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_26

    const/4 v0, 0x1

    :goto_25
    return v0

    :cond_26
    const/4 v0, 0x0

    goto :goto_25
.end method

.method public e()Ljava/io/InputStream;
    .registers 2

    new-instance v0, Lokio/RealBufferedSource$1;

    invoke-direct {v0, p0}, Lokio/RealBufferedSource$1;-><init>(Lokio/RealBufferedSource;)V

    return-object v0
.end method

.method public f(J)[B
    .registers 4

    invoke-virtual {p0, p1, p2}, Lokio/RealBufferedSource;->a(J)V

    iget-object v0, p0, Lokio/RealBufferedSource;->a:Lokio/Buffer;

    invoke-virtual {v0, p1, p2}, Lokio/Buffer;->f(J)[B

    move-result-object v0

    return-object v0
.end method

.method public g()B
    .registers 3

    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lokio/RealBufferedSource;->a(J)V

    iget-object v0, p0, Lokio/RealBufferedSource;->a:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->g()B

    move-result v0

    return v0
.end method

.method public g(J)V
    .registers 9

    const-wide/16 v4, 0x0

    iget-boolean v0, p0, Lokio/RealBufferedSource;->c:Z

    if-eqz v0, :cond_1e

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    iget-object v0, p0, Lokio/RealBufferedSource;->a:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->a()J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iget-object v2, p0, Lokio/RealBufferedSource;->a:Lokio/Buffer;

    invoke-virtual {v2, v0, v1}, Lokio/Buffer;->g(J)V

    sub-long/2addr p1, v0

    :cond_1e
    cmp-long v0, p1, v4

    if-lez v0, :cond_40

    iget-object v0, p0, Lokio/RealBufferedSource;->a:Lokio/Buffer;

    iget-wide v0, v0, Lokio/Buffer;->b:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_e

    iget-object v0, p0, Lokio/RealBufferedSource;->b:Lokio/Source;

    iget-object v1, p0, Lokio/RealBufferedSource;->a:Lokio/Buffer;

    const-wide/16 v2, 0x2000

    invoke-interface {v0, v1, v2, v3}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_e

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_40
    return-void
.end method

.method public h()S
    .registers 3

    const-wide/16 v0, 0x2

    invoke-virtual {p0, v0, v1}, Lokio/RealBufferedSource;->a(J)V

    iget-object v0, p0, Lokio/RealBufferedSource;->a:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->h()S

    move-result v0

    return v0
.end method

.method public i()I
    .registers 3

    const-wide/16 v0, 0x4

    invoke-virtual {p0, v0, v1}, Lokio/RealBufferedSource;->a(J)V

    iget-object v0, p0, Lokio/RealBufferedSource;->a:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->i()I

    move-result v0

    return v0
.end method

.method public j()S
    .registers 3

    const-wide/16 v0, 0x2

    invoke-virtual {p0, v0, v1}, Lokio/RealBufferedSource;->a(J)V

    iget-object v0, p0, Lokio/RealBufferedSource;->a:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->j()S

    move-result v0

    return v0
.end method

.method public k()I
    .registers 3

    const-wide/16 v0, 0x4

    invoke-virtual {p0, v0, v1}, Lokio/RealBufferedSource;->a(J)V

    iget-object v0, p0, Lokio/RealBufferedSource;->a:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->k()I

    move-result v0

    return v0
.end method

.method public l()J
    .registers 6

    const/4 v1, 0x0

    const-wide/16 v2, 0x1

    invoke-virtual {p0, v2, v3}, Lokio/RealBufferedSource;->a(J)V

    move v0, v1

    :goto_7
    add-int/lit8 v2, v0, 0x1

    int-to-long v2, v2

    invoke-virtual {p0, v2, v3}, Lokio/RealBufferedSource;->b(J)Z

    move-result v2

    if-eqz v2, :cond_49

    iget-object v2, p0, Lokio/RealBufferedSource;->a:Lokio/Buffer;

    int-to-long v3, v0

    invoke-virtual {v2, v3, v4}, Lokio/Buffer;->b(J)B

    move-result v2

    const/16 v3, 0x30

    if-lt v2, v3, :cond_1f

    const/16 v3, 0x39

    if-le v2, v3, :cond_46

    :cond_1f
    const/16 v3, 0x61

    if-lt v2, v3, :cond_27

    const/16 v3, 0x66

    if-le v2, v3, :cond_46

    :cond_27
    const/16 v3, 0x41

    if-lt v2, v3, :cond_2f

    const/16 v3, 0x46

    if-le v2, v3, :cond_46

    :cond_2f
    if-nez v0, :cond_49

    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v3, "Expected leading [0-9a-fA-F] character but was %#x"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_46
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_49
    iget-object v0, p0, Lokio/RealBufferedSource;->a:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->l()J

    move-result-wide v0

    return-wide v0
.end method

.method public o()Ljava/lang/String;
    .registers 9

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lokio/RealBufferedSource;->a(B)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_5b

    new-instance v1, Lokio/Buffer;

    invoke-direct {v1}, Lokio/Buffer;-><init>()V

    iget-object v0, p0, Lokio/RealBufferedSource;->a:Lokio/Buffer;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x20

    iget-object v6, p0, Lokio/RealBufferedSource;->a:Lokio/Buffer;

    invoke-virtual {v6}, Lokio/Buffer;->a()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lokio/Buffer;->a(Lokio/Buffer;JJ)Lokio/Buffer;

    new-instance v0, Ljava/io/EOFException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\\n not found: size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lokio/RealBufferedSource;->a:Lokio/Buffer;

    invoke-virtual {v3}, Lokio/Buffer;->a()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " content="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lokio/Buffer;->m()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lokio/ByteString;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u2026"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5b
    iget-object v2, p0, Lokio/RealBufferedSource;->a:Lokio/Buffer;

    invoke-virtual {v2, v0, v1}, Lokio/Buffer;->e(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public p()[B
    .registers 3

    iget-object v0, p0, Lokio/RealBufferedSource;->a:Lokio/Buffer;

    iget-object v1, p0, Lokio/RealBufferedSource;->b:Lokio/Source;

    invoke-virtual {v0, v1}, Lokio/Buffer;->a(Lokio/Source;)J

    iget-object v0, p0, Lokio/RealBufferedSource;->a:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->p()[B

    move-result-object v0

    return-object v0
.end method

.method public read(Lokio/Buffer;J)J
    .registers 10

    const-wide/16 v4, 0x0

    const-wide/16 v0, -0x1

    if-nez p1, :cond_e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sink == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    cmp-long v2, p2, v4

    if-gez v2, :cond_2b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteCount < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2b
    iget-boolean v2, p0, Lokio/RealBufferedSource;->c:Z

    if-eqz v2, :cond_37

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_37
    iget-object v2, p0, Lokio/RealBufferedSource;->a:Lokio/Buffer;

    iget-wide v2, v2, Lokio/Buffer;->b:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_4e

    iget-object v2, p0, Lokio/RealBufferedSource;->b:Lokio/Source;

    iget-object v3, p0, Lokio/RealBufferedSource;->a:Lokio/Buffer;

    const-wide/16 v4, 0x2000

    invoke-interface {v2, v3, v4, v5}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-nez v2, :cond_4e

    :goto_4d
    return-wide v0

    :cond_4e
    iget-object v0, p0, Lokio/RealBufferedSource;->a:Lokio/Buffer;

    iget-wide v0, v0, Lokio/Buffer;->b:J

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iget-object v2, p0, Lokio/RealBufferedSource;->a:Lokio/Buffer;

    invoke-virtual {v2, p1, v0, v1}, Lokio/Buffer;->read(Lokio/Buffer;J)J

    move-result-wide v0

    goto :goto_4d
.end method

.method public timeout()Lokio/Timeout;
    .registers 2

    iget-object v0, p0, Lokio/RealBufferedSource;->b:Lokio/Source;

    invoke-interface {v0}, Lokio/Source;->timeout()Lokio/Timeout;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "buffer("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lokio/RealBufferedSource;->b:Lokio/Source;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
