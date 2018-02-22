.class public final Lsdk/pay/e/j;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;)Z
    .registers 2

    const-string v0, "com.tencent.mm"

    invoke-static {p0, v0}, Lsdk/pay/e/j;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_25

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    :goto_24
    return v0

    :cond_25
    move v0, v1

    goto :goto_24
.end method

.method public static b(Landroid/content/Context;)Z
    .registers 2

    const-string v0, "com.eg.android.AlipayGphone"

    invoke-static {p0, v0}, Lsdk/pay/e/j;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
