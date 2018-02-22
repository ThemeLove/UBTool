.class public Lcom/mchsdk/paysdk/f/a/a;
.super Ljava/lang/Object;


# instance fields
.field public a:Lcom/mchsdk/paysdk/f/d;

.field public b:Landroid/content/Context;

.field c:Lcom/lidroid/xutils/http/callback/RequestCallBack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lidroid/xutils/http/callback/RequestCallBack",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "CheckRequest"

    iput-object v0, p0, Lcom/mchsdk/paysdk/f/a/a;->d:Ljava/lang/String;

    new-instance v0, Lcom/mchsdk/paysdk/f/a/a$1;

    invoke-direct {v0, p0}, Lcom/mchsdk/paysdk/f/a/a$1;-><init>(Lcom/mchsdk/paysdk/f/a/a;)V

    iput-object v0, p0, Lcom/mchsdk/paysdk/f/a/a;->c:Lcom/lidroid/xutils/http/callback/RequestCallBack;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/mchsdk/paysdk/f/d;
    .registers 7

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "account"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "game_id"

    invoke-static {}, Lcom/mchsdk/paysdk/a/d;->a()Lcom/mchsdk/paysdk/a/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mchsdk/paysdk/a/d;->e()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mchsdk/paysdk/c/a;->a()Lcom/mchsdk/paysdk/c/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mchsdk/paysdk/c/a;->x()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/User/checkAccount"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mchsdk/paysdk/f/a/a;->a:Lcom/mchsdk/paysdk/f/d;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/mchsdk/paysdk/f/a/a;->c:Lcom/lidroid/xutils/http/callback/RequestCallBack;

    invoke-virtual {v2, v3, v1, v0, v4}, Lcom/mchsdk/paysdk/f/d;->a(ILjava/lang/String;Ljava/util/Map;Lcom/lidroid/xutils/http/callback/RequestCallBack;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/f/a/a;->a:Lcom/mchsdk/paysdk/f/d;

    return-object v0
.end method
