.class public final Lokhttp3/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# instance fields
.field final a:Lokhttp3/internal/cache/InternalCache;

.field private final b:Lokhttp3/internal/cache/DiskLruCache;


# virtual methods
.method public close()V
    .registers 2

    iget-object v0, p0, Lokhttp3/c;->b:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache;->close()V

    return-void
.end method

.method public flush()V
    .registers 2

    iget-object v0, p0, Lokhttp3/c;->b:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache;->flush()V

    return-void
.end method
