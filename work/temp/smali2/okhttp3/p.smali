.class public interface abstract Lokhttp3/p;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lokhttp3/p;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lokhttp3/p$1;

    invoke-direct {v0}, Lokhttp3/p$1;-><init>()V

    sput-object v0, Lokhttp3/p;->a:Lokhttp3/p;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end method
