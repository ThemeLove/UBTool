.class public final Lokhttp3/l;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/l$a;
    }
.end annotation


# static fields
.field public static final a:Lokhttp3/l;

.field public static final b:Lokhttp3/l;

.field public static final c:Lokhttp3/l;

.field private static final d:[Lokhttp3/i;


# instance fields
.field private final e:Z

.field private final f:Z

.field private final g:[Ljava/lang/String;

.field private final h:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/16 v0, 0xd

    new-array v0, v0, [Lokhttp3/i;

    sget-object v1, Lokhttp3/i;->aK:Lokhttp3/i;

    aput-object v1, v0, v4

    sget-object v1, Lokhttp3/i;->aO:Lokhttp3/i;

    aput-object v1, v0, v3

    sget-object v1, Lokhttp3/i;->W:Lokhttp3/i;

    aput-object v1, v0, v5

    sget-object v1, Lokhttp3/i;->am:Lokhttp3/i;

    aput-object v1, v0, v6

    const/4 v1, 0x4

    sget-object v2, Lokhttp3/i;->al:Lokhttp3/i;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lokhttp3/i;->av:Lokhttp3/i;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lokhttp3/i;->aw:Lokhttp3/i;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lokhttp3/i;->F:Lokhttp3/i;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lokhttp3/i;->J:Lokhttp3/i;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lokhttp3/i;->U:Lokhttp3/i;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lokhttp3/i;->D:Lokhttp3/i;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lokhttp3/i;->H:Lokhttp3/i;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lokhttp3/i;->h:Lokhttp3/i;

    aput-object v2, v0, v1

    sput-object v0, Lokhttp3/l;->d:[Lokhttp3/i;

    new-instance v0, Lokhttp3/l$a;

    invoke-direct {v0, v3}, Lokhttp3/l$a;-><init>(Z)V

    sget-object v1, Lokhttp3/l;->d:[Lokhttp3/i;

    invoke-virtual {v0, v1}, Lokhttp3/l$a;->a([Lokhttp3/i;)Lokhttp3/l$a;

    move-result-object v0

    new-array v1, v6, [Lokhttp3/ad;

    sget-object v2, Lokhttp3/ad;->a:Lokhttp3/ad;

    aput-object v2, v1, v4

    sget-object v2, Lokhttp3/ad;->b:Lokhttp3/ad;

    aput-object v2, v1, v3

    sget-object v2, Lokhttp3/ad;->c:Lokhttp3/ad;

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lokhttp3/l$a;->a([Lokhttp3/ad;)Lokhttp3/l$a;

    move-result-object v0

    invoke-virtual {v0, v3}, Lokhttp3/l$a;->a(Z)Lokhttp3/l$a;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/l$a;->a()Lokhttp3/l;

    move-result-object v0

    sput-object v0, Lokhttp3/l;->a:Lokhttp3/l;

    new-instance v0, Lokhttp3/l$a;

    sget-object v1, Lokhttp3/l;->a:Lokhttp3/l;

    invoke-direct {v0, v1}, Lokhttp3/l$a;-><init>(Lokhttp3/l;)V

    new-array v1, v3, [Lokhttp3/ad;

    sget-object v2, Lokhttp3/ad;->c:Lokhttp3/ad;

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lokhttp3/l$a;->a([Lokhttp3/ad;)Lokhttp3/l$a;

    move-result-object v0

    invoke-virtual {v0, v3}, Lokhttp3/l$a;->a(Z)Lokhttp3/l$a;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/l$a;->a()Lokhttp3/l;

    move-result-object v0

    sput-object v0, Lokhttp3/l;->b:Lokhttp3/l;

    new-instance v0, Lokhttp3/l$a;

    invoke-direct {v0, v4}, Lokhttp3/l$a;-><init>(Z)V

    invoke-virtual {v0}, Lokhttp3/l$a;->a()Lokhttp3/l;

    move-result-object v0

    sput-object v0, Lokhttp3/l;->c:Lokhttp3/l;

    return-void
.end method

.method private constructor <init>(Lokhttp3/l$a;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lokhttp3/l$a;->a(Lokhttp3/l$a;)Z

    move-result v0

    iput-boolean v0, p0, Lokhttp3/l;->e:Z

    invoke-static {p1}, Lokhttp3/l$a;->b(Lokhttp3/l$a;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/l;->g:[Ljava/lang/String;

    invoke-static {p1}, Lokhttp3/l$a;->c(Lokhttp3/l$a;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/l;->h:[Ljava/lang/String;

    invoke-static {p1}, Lokhttp3/l$a;->d(Lokhttp3/l$a;)Z

    move-result v0

    iput-boolean v0, p0, Lokhttp3/l;->f:Z

    return-void
.end method

.method synthetic constructor <init>(Lokhttp3/l$a;Lokhttp3/l$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lokhttp3/l;-><init>(Lokhttp3/l$a;)V

    return-void
.end method

.method static synthetic a(Lokhttp3/l;)Z
    .registers 2

    iget-boolean v0, p0, Lokhttp3/l;->e:Z

    return v0
.end method

.method private static a([Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 7

    const/4 v0, 0x0

    if-eqz p0, :cond_b

    if-eqz p1, :cond_b

    array-length v1, p0

    if-eqz v1, :cond_b

    array-length v1, p1

    if-nez v1, :cond_c

    :cond_b
    :goto_b
    return v0

    :cond_c
    array-length v2, p0

    move v1, v0

    :goto_e
    if-ge v1, v2, :cond_b

    aget-object v3, p0, v1

    invoke-static {p1, v3}, Lokhttp3/internal/Util;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1b

    const/4 v0, 0x1

    goto :goto_b

    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_e
.end method

.method private b(Ljavax/net/ssl/SSLSocket;Z)Lokhttp3/l;
    .registers 7

    iget-object v0, p0, Lokhttp3/l;->g:[Ljava/lang/String;

    if-eqz v0, :cond_4c

    const-class v0, Ljava/lang/String;

    iget-object v1, p0, Lokhttp3/l;->g:[Ljava/lang/String;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lokhttp3/internal/Util;->intersect(Ljava/lang/Class;[Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    move-object v1, v0

    :goto_13
    iget-object v0, p0, Lokhttp3/l;->h:[Ljava/lang/String;

    if-eqz v0, :cond_52

    const-class v0, Ljava/lang/String;

    iget-object v2, p0, Lokhttp3/l;->h:[Ljava/lang/String;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lokhttp3/internal/Util;->intersect(Ljava/lang/Class;[Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    :goto_25
    if-eqz p2, :cond_3a

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v2

    const-string v3, "TLS_FALLBACK_SCSV"

    invoke-static {v2, v3}, Lokhttp3/internal/Util;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3a

    const-string v2, "TLS_FALLBACK_SCSV"

    invoke-static {v1, v2}, Lokhttp3/internal/Util;->concat([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    :cond_3a
    new-instance v2, Lokhttp3/l$a;

    invoke-direct {v2, p0}, Lokhttp3/l$a;-><init>(Lokhttp3/l;)V

    invoke-virtual {v2, v1}, Lokhttp3/l$a;->a([Ljava/lang/String;)Lokhttp3/l$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lokhttp3/l$a;->b([Ljava/lang/String;)Lokhttp3/l$a;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/l$a;->a()Lokhttp3/l;

    move-result-object v0

    return-object v0

    :cond_4c
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_13

    :cond_52
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v0

    goto :goto_25
.end method

.method static synthetic b(Lokhttp3/l;)[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lokhttp3/l;->g:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lokhttp3/l;)[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lokhttp3/l;->h:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lokhttp3/l;)Z
    .registers 2

    iget-boolean v0, p0, Lokhttp3/l;->f:Z

    return v0
.end method


# virtual methods
.method a(Ljavax/net/ssl/SSLSocket;Z)V
    .registers 5

    invoke-direct {p0, p1, p2}, Lokhttp3/l;->b(Ljavax/net/ssl/SSLSocket;Z)Lokhttp3/l;

    move-result-object v0

    iget-object v1, v0, Lokhttp3/l;->h:[Ljava/lang/String;

    if-eqz v1, :cond_d

    iget-object v1, v0, Lokhttp3/l;->h:[Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    :cond_d
    iget-object v1, v0, Lokhttp3/l;->g:[Ljava/lang/String;

    if-eqz v1, :cond_16

    iget-object v0, v0, Lokhttp3/l;->g:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    :cond_16
    return-void
.end method

.method public a()Z
    .registers 2

    iget-boolean v0, p0, Lokhttp3/l;->e:Z

    return v0
.end method

.method public a(Ljavax/net/ssl/SSLSocket;)Z
    .registers 5

    const/4 v0, 0x0

    iget-boolean v1, p0, Lokhttp3/l;->e:Z

    if-nez v1, :cond_6

    :cond_5
    :goto_5
    return v0

    :cond_6
    iget-object v1, p0, Lokhttp3/l;->h:[Ljava/lang/String;

    if-eqz v1, :cond_16

    iget-object v1, p0, Lokhttp3/l;->h:[Ljava/lang/String;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lokhttp3/l;->a([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_16
    iget-object v1, p0, Lokhttp3/l;->g:[Ljava/lang/String;

    if-eqz v1, :cond_26

    iget-object v1, p0, Lokhttp3/l;->g:[Ljava/lang/String;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lokhttp3/l;->a([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_26
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public b()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lokhttp3/i;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/l;->g:[Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lokhttp3/l;->g:[Ljava/lang/String;

    array-length v0, v0

    new-array v1, v0, [Lokhttp3/i;

    const/4 v0, 0x0

    :goto_c
    iget-object v2, p0, Lokhttp3/l;->g:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1e

    iget-object v2, p0, Lokhttp3/l;->g:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v2}, Lokhttp3/i;->a(Ljava/lang/String;)Lokhttp3/i;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_1e
    invoke-static {v1}, Lokhttp3/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_5
.end method

.method public c()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lokhttp3/ad;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/l;->h:[Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lokhttp3/l;->h:[Ljava/lang/String;

    array-length v0, v0

    new-array v1, v0, [Lokhttp3/ad;

    const/4 v0, 0x0

    :goto_c
    iget-object v2, p0, Lokhttp3/l;->h:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1e

    iget-object v2, p0, Lokhttp3/l;->h:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v2}, Lokhttp3/ad;->a(Ljava/lang/String;)Lokhttp3/ad;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_1e
    invoke-static {v1}, Lokhttp3/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_5
.end method

.method public d()Z
    .registers 2

    iget-boolean v0, p0, Lokhttp3/l;->f:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    instance-of v2, p1, Lokhttp3/l;

    if-nez v2, :cond_7

    :cond_6
    :goto_6
    return v0

    :cond_7
    if-ne p1, p0, :cond_b

    move v0, v1

    goto :goto_6

    :cond_b
    check-cast p1, Lokhttp3/l;

    iget-boolean v2, p0, Lokhttp3/l;->e:Z

    iget-boolean v3, p1, Lokhttp3/l;->e:Z

    if-ne v2, v3, :cond_6

    iget-boolean v2, p0, Lokhttp3/l;->e:Z

    if-eqz v2, :cond_31

    iget-object v2, p0, Lokhttp3/l;->g:[Ljava/lang/String;

    iget-object v3, p1, Lokhttp3/l;->g:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lokhttp3/l;->h:[Ljava/lang/String;

    iget-object v3, p1, Lokhttp3/l;->h:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-boolean v2, p0, Lokhttp3/l;->f:Z

    iget-boolean v3, p1, Lokhttp3/l;->f:Z

    if-ne v2, v3, :cond_6

    :cond_31
    move v0, v1

    goto :goto_6
.end method

.method public hashCode()I
    .registers 3

    const/16 v0, 0x11

    iget-boolean v1, p0, Lokhttp3/l;->e:Z

    if-eqz v1, :cond_1f

    iget-object v0, p0, Lokhttp3/l;->g:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lokhttp3/l;->h:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v0, p0, Lokhttp3/l;->f:Z

    if-eqz v0, :cond_20

    const/4 v0, 0x0

    :goto_1e
    add-int/2addr v0, v1

    :cond_1f
    return v0

    :cond_20
    const/4 v0, 0x1

    goto :goto_1e
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    iget-boolean v0, p0, Lokhttp3/l;->e:Z

    if-nez v0, :cond_7

    const-string v0, "ConnectionSpec()"

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lokhttp3/l;->g:[Ljava/lang/String;

    if-eqz v0, :cond_4f

    invoke-virtual {p0}, Lokhttp3/l;->b()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_13
    iget-object v1, p0, Lokhttp3/l;->h:[Ljava/lang/String;

    if-eqz v1, :cond_52

    invoke-virtual {p0}, Lokhttp3/l;->c()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ConnectionSpec(cipherSuites="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", tlsVersions="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", supportsTlsExtensions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lokhttp3/l;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_4f
    const-string v0, "[all enabled]"

    goto :goto_13

    :cond_52
    const-string v1, "[all enabled]"

    goto :goto_1f
.end method
