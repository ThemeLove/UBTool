.class Lcom/lidroid/xutils/http/HttpCache$1;
.super Lcom/lidroid/xutils/cache/LruMemoryCache;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lidroid/xutils/http/HttpCache;-><init>(IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lidroid/xutils/cache/LruMemoryCache",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lidroid/xutils/http/HttpCache;


# direct methods
.method constructor <init>(Lcom/lidroid/xutils/http/HttpCache;I)V
    .registers 3

    iput-object p1, p0, Lcom/lidroid/xutils/http/HttpCache$1;->this$0:Lcom/lidroid/xutils/http/HttpCache;

    invoke-direct {p0, p2}, Lcom/lidroid/xutils/cache/LruMemoryCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/lidroid/xutils/http/HttpCache$1;->sizeOf(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected sizeOf(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    if-nez p2, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_3
.end method
