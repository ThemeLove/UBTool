.class public Lcom/mchsdk/paysdk/a/d;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/mchsdk/paysdk/a/d;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/mchsdk/paysdk/utils/f;

    invoke-direct {v0}, Lcom/mchsdk/paysdk/utils/f;-><init>()V

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/utils/f;->d()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mchsdk/paysdk/a/d;->b:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/utils/f;->e()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mchsdk/paysdk/a/d;->c:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/utils/f;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mchsdk/paysdk/a/d;->d:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/utils/f;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mchsdk/paysdk/a/d;->e:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/utils/f;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mchsdk/paysdk/a/d;->f:Ljava/lang/String;

    return-void
.end method

.method public static a()Lcom/mchsdk/paysdk/a/d;
    .registers 1

    sget-object v0, Lcom/mchsdk/paysdk/a/d;->a:Lcom/mchsdk/paysdk/a/d;

    if-nez v0, :cond_b

    new-instance v0, Lcom/mchsdk/paysdk/a/d;

    invoke-direct {v0}, Lcom/mchsdk/paysdk/a/d;-><init>()V

    sput-object v0, Lcom/mchsdk/paysdk/a/d;->a:Lcom/mchsdk/paysdk/a/d;

    :cond_b
    sget-object v0, Lcom/mchsdk/paysdk/a/d;->a:Lcom/mchsdk/paysdk/a/d;

    return-object v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/d;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/mchsdk/paysdk/utils/p;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-static {}, Lcom/mchsdk/paysdk/a/n;->a()Lcom/mchsdk/paysdk/a/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/a/n;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mchsdk/paysdk/a/d;->b:Ljava/lang/String;

    :cond_12
    iget-object v0, p0, Lcom/mchsdk/paysdk/a/d;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/d;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/mchsdk/paysdk/utils/p;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-static {}, Lcom/mchsdk/paysdk/a/n;->a()Lcom/mchsdk/paysdk/a/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/a/n;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mchsdk/paysdk/a/d;->c:Ljava/lang/String;

    :cond_12
    iget-object v0, p0, Lcom/mchsdk/paysdk/a/d;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/d;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/mchsdk/paysdk/utils/p;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-static {}, Lcom/mchsdk/paysdk/a/n;->a()Lcom/mchsdk/paysdk/a/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/a/n;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mchsdk/paysdk/a/d;->f:Ljava/lang/String;

    :cond_12
    iget-object v0, p0, Lcom/mchsdk/paysdk/a/d;->f:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/d;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/mchsdk/paysdk/utils/p;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-static {}, Lcom/mchsdk/paysdk/a/n;->a()Lcom/mchsdk/paysdk/a/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/a/n;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mchsdk/paysdk/a/d;->d:Ljava/lang/String;

    :cond_12
    iget-object v0, p0, Lcom/mchsdk/paysdk/a/d;->d:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/d;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/mchsdk/paysdk/utils/p;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-static {}, Lcom/mchsdk/paysdk/a/n;->a()Lcom/mchsdk/paysdk/a/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/a/n;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mchsdk/paysdk/a/d;->e:Ljava/lang/String;

    :cond_12
    iget-object v0, p0, Lcom/mchsdk/paysdk/a/d;->e:Ljava/lang/String;

    return-object v0
.end method

.method public g()Z
    .registers 2

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/d;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/mchsdk/paysdk/utils/p;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/d;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/mchsdk/paysdk/utils/p;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/d;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/d;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/d;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2a

    :cond_28
    const/4 v0, 0x0

    :goto_29
    return v0

    :cond_2a
    const/4 v0, 0x1

    goto :goto_29
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const/16 v2, 0x27

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChannelAndGameInfo{channelId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mchsdk/paysdk/a/d;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", channelName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mchsdk/paysdk/a/d;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", gameId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mchsdk/paysdk/a/d;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", gameName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mchsdk/paysdk/a/d;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", gameAppId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mchsdk/paysdk/a/d;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
