.class public final Lcom/alipay/android/a/a/a/u;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/android/a/a/a/u;->a:Ljava/lang/Boolean;

    return-void
.end method

.method public static final a(Landroid/content/Context;)Z
    .registers 5

    const/4 v0, 0x0

    sget-object v1, Lcom/alipay/android/a/a/a/u;->a:Ljava/lang/Boolean;

    if-eqz v1, :cond_c

    sget-object v0, Lcom/alipay/android/a/a/a/u;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_b
    return v0

    :cond_c
    :try_start_c
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2b

    const/4 v1, 0x1

    :goto_20
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/alipay/android/a/a/a/u;->a:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_29} :catch_2d

    move-result v0

    goto :goto_b

    :cond_2b
    move v1, v0

    goto :goto_20

    :catch_2d
    move-exception v1

    goto :goto_b
.end method
