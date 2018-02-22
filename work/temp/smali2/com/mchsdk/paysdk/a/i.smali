.class public Lcom/mchsdk/paysdk/a/i;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/mchsdk/paysdk/a/i;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lcom/mchsdk/paysdk/a/i;
    .registers 2

    const-class v1, Lcom/mchsdk/paysdk/a/i;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/mchsdk/paysdk/a/i;->a:Lcom/mchsdk/paysdk/a/i;

    if-nez v0, :cond_e

    new-instance v0, Lcom/mchsdk/paysdk/a/i;

    invoke-direct {v0}, Lcom/mchsdk/paysdk/a/i;-><init>()V

    sput-object v0, Lcom/mchsdk/paysdk/a/i;->a:Lcom/mchsdk/paysdk/a/i;

    :cond_e
    sget-object v0, Lcom/mchsdk/paysdk/a/i;->a:Lcom/mchsdk/paysdk/a/i;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/mchsdk/open/IGPSDKInitObsv;)V
    .registers 6

    const-string v0, "InitModel"

    const-string v1, "init model do init start"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mchsdk/paysdk/a/n;->a()Lcom/mchsdk/paysdk/a/n;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mchsdk/paysdk/a/n;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/mchsdk/paysdk/a/d;->a()Lcom/mchsdk/paysdk/a/d;

    const-string v0, "InitModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init model do init end."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/mchsdk/paysdk/a/d;->a()Lcom/mchsdk/paysdk/a/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mchsdk/paysdk/a/d;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
