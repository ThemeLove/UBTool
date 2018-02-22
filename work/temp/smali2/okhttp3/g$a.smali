.class public final Lokhttp3/g$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokhttp3/g$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lokhttp3/g$a;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()Lokhttp3/g;
    .registers 4

    const/4 v2, 0x0

    new-instance v0, Lokhttp3/g;

    iget-object v1, p0, Lokhttp3/g$a;->a:Ljava/util/List;

    invoke-static {v1}, Lokhttp3/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1, v2, v2}, Lokhttp3/g;-><init>(Ljava/util/List;Lokhttp3/internal/tls/CertificateChainCleaner;Lokhttp3/g$1;)V

    return-object v0
.end method
