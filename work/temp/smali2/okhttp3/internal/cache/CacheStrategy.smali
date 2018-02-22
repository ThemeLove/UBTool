.class public final Lokhttp3/internal/cache/CacheStrategy;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/cache/CacheStrategy$Factory;
    }
.end annotation


# instance fields
.field public final cacheResponse:Lokhttp3/aa;

.field public final networkRequest:Lokhttp3/y;


# direct methods
.method private constructor <init>(Lokhttp3/y;Lokhttp3/aa;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/cache/CacheStrategy;->networkRequest:Lokhttp3/y;

    iput-object p2, p0, Lokhttp3/internal/cache/CacheStrategy;->cacheResponse:Lokhttp3/aa;

    return-void
.end method

.method synthetic constructor <init>(Lokhttp3/y;Lokhttp3/aa;Lokhttp3/internal/cache/CacheStrategy$1;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lokhttp3/internal/cache/CacheStrategy;-><init>(Lokhttp3/y;Lokhttp3/aa;)V

    return-void
.end method

.method public static isCacheable(Lokhttp3/aa;Lokhttp3/y;)Z
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Lokhttp3/aa;->c()I

    move-result v1

    sparse-switch v1, :sswitch_data_46

    :cond_8
    :goto_8
    return v0

    :sswitch_9
    const-string v1, "Expires"

    invoke-virtual {p0, v1}, Lokhttp3/aa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_30

    invoke-virtual {p0}, Lokhttp3/aa;->k()Lokhttp3/d;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/d;->c()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_30

    invoke-virtual {p0}, Lokhttp3/aa;->k()Lokhttp3/d;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/d;->e()Z

    move-result v1

    if-nez v1, :cond_30

    invoke-virtual {p0}, Lokhttp3/aa;->k()Lokhttp3/d;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/d;->d()Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_30
    :sswitch_30
    invoke-virtual {p0}, Lokhttp3/aa;->k()Lokhttp3/d;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/d;->b()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {p1}, Lokhttp3/y;->f()Lokhttp3/d;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/d;->b()Z

    move-result v1

    if-nez v1, :cond_8

    const/4 v0, 0x1

    goto :goto_8

    :sswitch_data_46
    .sparse-switch
        0xc8 -> :sswitch_30
        0xcb -> :sswitch_30
        0xcc -> :sswitch_30
        0x12c -> :sswitch_30
        0x12d -> :sswitch_30
        0x12e -> :sswitch_9
        0x133 -> :sswitch_9
        0x134 -> :sswitch_30
        0x194 -> :sswitch_30
        0x195 -> :sswitch_30
        0x19a -> :sswitch_30
        0x19e -> :sswitch_30
        0x1f5 -> :sswitch_30
    .end sparse-switch
.end method
