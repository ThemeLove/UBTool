.class public interface abstract Lokhttp3/n;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lokhttp3/n;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lokhttp3/n$1;

    invoke-direct {v0}, Lokhttp3/n$1;-><init>()V

    sput-object v0, Lokhttp3/n;->a:Lokhttp3/n;

    return-void
.end method


# virtual methods
.method public abstract a(Lokhttp3/s;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/s;",
            ")",
            "Ljava/util/List",
            "<",
            "Lokhttp3/m;",
            ">;"
        }
    .end annotation
.end method

.method public abstract a(Lokhttp3/s;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/s;",
            "Ljava/util/List",
            "<",
            "Lokhttp3/m;",
            ">;)V"
        }
    .end annotation
.end method
