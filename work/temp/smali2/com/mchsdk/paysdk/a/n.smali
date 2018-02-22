.class public Lcom/mchsdk/paysdk/a/n;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/mchsdk/paysdk/a/n;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/mchsdk/paysdk/a/n;
    .registers 1

    sget-object v0, Lcom/mchsdk/paysdk/a/n;->a:Lcom/mchsdk/paysdk/a/n;

    if-nez v0, :cond_b

    new-instance v0, Lcom/mchsdk/paysdk/a/n;

    invoke-direct {v0}, Lcom/mchsdk/paysdk/a/n;-><init>()V

    sput-object v0, Lcom/mchsdk/paysdk/a/n;->a:Lcom/mchsdk/paysdk/a/n;

    :cond_b
    sget-object v0, Lcom/mchsdk/paysdk/a/n;->a:Lcom/mchsdk/paysdk/a/n;

    return-object v0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const-string v0, ""

    :try_start_2
    invoke-direct {p0, p1}, Lcom/mchsdk/paysdk/a/n;->e(Landroid/content/Context;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, ""

    invoke-virtual {v0, p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_d} :catch_f

    move-result-object v0

    :goto_e
    return-object v0

    :catch_f
    move-exception v0

    const-string v1, "SdkDomain"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is null."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mchsdk/paysdk/utils/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    goto :goto_e
.end method

.method private b(Landroid/content/Context;)V
    .registers 3

    const-string v0, ""

    iput-object v0, p0, Lcom/mchsdk/paysdk/a/n;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/mchsdk/paysdk/a/n;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/mchsdk/paysdk/a/n;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/mchsdk/paysdk/a/n;->e:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/mchsdk/paysdk/a/n;->f:Ljava/lang/String;

    return-void
.end method

.method private c(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const-string v0, "paysdk_signkey"

    invoke-direct {p0, p1, v0}, Lcom/mchsdk/paysdk/a/n;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mchsdk/paysdk/utils/p;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-static {}, Lcom/mchsdk/open/MCApiFactory;->getMCApi()Lcom/mchsdk/open/MCApiFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mchsdk/open/MCApiFactory;->getMap()Ljava/util/Map;

    move-result-object v0

    const-string v1, "paysdk_signkey"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_1c
    invoke-static {v0}, Lcom/mchsdk/paysdk/utils/p;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2b

    invoke-static {}, Lcom/mchsdk/paysdk/jni/MCHKeyTools;->a()Lcom/mchsdk/paysdk/jni/MCHKeyTools;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mchsdk/paysdk/jni/MCHKeyTools;->secToNor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2a
    return-object v0

    :cond_2b
    const-string v0, "mengchuang"

    goto :goto_2a
.end method

.method private d(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const-string v0, "paysdk_address"

    invoke-direct {p0, p1, v0}, Lcom/mchsdk/paysdk/a/n;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mchsdk/paysdk/utils/p;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-static {}, Lcom/mchsdk/open/MCApiFactory;->getMCApi()Lcom/mchsdk/open/MCApiFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mchsdk/open/MCApiFactory;->getMap()Ljava/util/Map;

    move-result-object v0

    const-string v1, "paysdk_address"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_1c
    return-object v0
.end method

.method private e(Landroid/content/Context;)Landroid/content/pm/ApplicationInfo;
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_4

    :goto_3
    return-object v0

    :cond_4
    :try_start_4
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_11
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_11} :catch_13

    move-result-object v0

    goto :goto_3

    :catch_13
    move-exception v1

    const-string v2, "SdkDomain"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "package name not found, error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/mchsdk/paysdk/utils/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .registers 4

    invoke-static {}, Lcom/mchsdk/paysdk/c/a;->a()Lcom/mchsdk/paysdk/c/a;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/mchsdk/paysdk/a/n;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/c/a;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/mchsdk/paysdk/c/a;->a()Lcom/mchsdk/paysdk/c/a;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/mchsdk/paysdk/a/n;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/c/a;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/mchsdk/paysdk/c/a;->a()Lcom/mchsdk/paysdk/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/c/a;->b()V

    invoke-direct {p0, p1}, Lcom/mchsdk/paysdk/a/n;->b(Landroid/content/Context;)V

    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/n;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/mchsdk/paysdk/utils/p;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-static {}, Lcom/mchsdk/open/MCApiFactory;->getMCApi()Lcom/mchsdk/open/MCApiFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mchsdk/open/MCApiFactory;->getMap()Ljava/util/Map;

    move-result-object v0

    const-string v1, "paysdk_promoteid"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/mchsdk/paysdk/a/n;->b:Ljava/lang/String;

    :cond_1a
    iget-object v0, p0, Lcom/mchsdk/paysdk/a/n;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/n;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/mchsdk/paysdk/utils/p;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-static {}, Lcom/mchsdk/open/MCApiFactory;->getMCApi()Lcom/mchsdk/open/MCApiFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mchsdk/open/MCApiFactory;->getMap()Ljava/util/Map;

    move-result-object v0

    const-string v1, "paysdk_promotename"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/mchsdk/paysdk/a/n;->c:Ljava/lang/String;

    :cond_1a
    iget-object v0, p0, Lcom/mchsdk/paysdk/a/n;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/n;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/mchsdk/paysdk/utils/p;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-static {}, Lcom/mchsdk/open/MCApiFactory;->getMCApi()Lcom/mchsdk/open/MCApiFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mchsdk/open/MCApiFactory;->getMap()Ljava/util/Map;

    move-result-object v0

    const-string v1, "paysdk_gameappid"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/mchsdk/paysdk/a/n;->f:Ljava/lang/String;

    :cond_1a
    iget-object v0, p0, Lcom/mchsdk/paysdk/a/n;->f:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/n;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/mchsdk/paysdk/utils/p;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-static {}, Lcom/mchsdk/open/MCApiFactory;->getMCApi()Lcom/mchsdk/open/MCApiFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mchsdk/open/MCApiFactory;->getMap()Ljava/util/Map;

    move-result-object v0

    const-string v1, "paysdk_gameid"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/mchsdk/paysdk/a/n;->d:Ljava/lang/String;

    :cond_1a
    iget-object v0, p0, Lcom/mchsdk/paysdk/a/n;->d:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/n;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/mchsdk/paysdk/utils/p;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-static {}, Lcom/mchsdk/open/MCApiFactory;->getMCApi()Lcom/mchsdk/open/MCApiFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mchsdk/open/MCApiFactory;->getMap()Ljava/util/Map;

    move-result-object v0

    const-string v1, "paysdk_gamename"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/mchsdk/paysdk/a/n;->e:Ljava/lang/String;

    :cond_1a
    iget-object v0, p0, Lcom/mchsdk/paysdk/a/n;->e:Ljava/lang/String;

    return-object v0
.end method
