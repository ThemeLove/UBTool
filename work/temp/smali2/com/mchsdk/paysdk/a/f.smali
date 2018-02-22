.class public Lcom/mchsdk/paysdk/a/f;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mchcontrol.apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mchsdk/paysdk/a/f;->a:Ljava/lang/String;

    return-void
.end method

.method public static a()V
    .registers 2

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/mchsdk/paysdk/a/f;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/mchsdk/paysdk/a/f;->a(Ljava/io/File;)V

    return-void
.end method

.method private static a(Ljava/io/File;)V
    .registers 4

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :cond_f
    return-void

    :cond_10
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    const/4 v0, 0x0

    :goto_1b
    array-length v2, v1

    if-ge v0, v2, :cond_f

    aget-object v2, v1, v0

    invoke-static {v2}, Lcom/mchsdk/paysdk/a/f;->a(Ljava/io/File;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1b
.end method

.method public static a(Landroid/content/Context;)Z
    .registers 10

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-nez p0, :cond_b

    invoke-static {}, Lcom/mchsdk/paysdk/a/f;->b()V

    sput-boolean v8, Lcom/mchsdk/paysdk/a/h;->a:Z

    move v0, v7

    :goto_a
    return v0

    :cond_b
    invoke-static {p0}, Lcom/mchsdk/paysdk/a/f;->h(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-static {p0}, Lcom/mchsdk/paysdk/a/f;->f(Landroid/content/Context;)V

    invoke-static {}, Lcom/mchsdk/paysdk/a/f;->b()V

    sput-boolean v8, Lcom/mchsdk/paysdk/a/h;->a:Z

    move v0, v7

    goto :goto_a

    :cond_1b
    invoke-static {p0}, Lcom/mchsdk/paysdk/a/f;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_41

    const-string v1, "\u63d0\u793a"

    const-string v2, "\u8bf7\u91cd\u65b0\u5b89\u88c5\u652f\u4ed8\u63a7\u4ef6"

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "\u786e\u5b9a"

    const-string v5, "\u53d6\u6d88"

    new-instance v6, Lcom/mchsdk/paysdk/a/f$1;

    invoke-direct {v6, p0}, Lcom/mchsdk/paysdk/a/f$1;-><init>(Landroid/content/Context;)V

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/mchsdk/paysdk/dialog/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    invoke-static {}, Lcom/mchsdk/paysdk/a/f;->b()V

    sput-boolean v8, Lcom/mchsdk/paysdk/a/h;->a:Z

    move v0, v7

    goto :goto_a

    :cond_41
    move v0, v8

    goto :goto_a
.end method

.method private static b()V
    .registers 1

    sget-object v0, Lcom/mchsdk/paysdk/activity/TransparencyActivity;->a:Lcom/mchsdk/paysdk/activity/TransparencyActivity;

    if-eqz v0, :cond_11

    sget-object v0, Lcom/mchsdk/paysdk/activity/TransparencyActivity;->a:Lcom/mchsdk/paysdk/activity/TransparencyActivity;

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/activity/TransparencyActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_11

    sget-object v0, Lcom/mchsdk/paysdk/activity/TransparencyActivity;->a:Lcom/mchsdk/paysdk/activity/TransparencyActivity;

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/activity/TransparencyActivity;->finish()V

    :cond_11
    return-void
.end method

.method public static b(Landroid/content/Context;)Z
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/mchsdk/paysdk/a/f;->d(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_9

    :goto_8
    return v1

    :cond_9
    :try_start_9
    const-string v2, "ControlInstallUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fun#copyApkFromAssets#fileName:mchcontrol, apk:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/mchsdk/paysdk/a/f;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mchsdk/paysdk/utils/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "mchcontrol"

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/io/File;

    sget-object v5, Lcom/mchsdk/paysdk/a/f;->a:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v4, 0x400

    new-array v4, v4, [B

    :goto_3d
    invoke-virtual {v2, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-lez v5, :cond_4f

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_47
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_47} :catch_48
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_47} :catch_91

    goto :goto_3d

    :catch_48
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    move v0, v1

    :goto_4d
    move v1, v0

    goto :goto_8

    :cond_4f
    :try_start_4f
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v3, v4, :cond_97

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".fileprovider"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    sget-object v5, Lcom/mchsdk/paysdk/a/f;->a:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v3, v4}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "application/vnd.android.package-archive"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    :goto_8d
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_90
    .catch Ljava/io/FileNotFoundException; {:try_start_4f .. :try_end_90} :catch_48
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_90} :catch_91

    goto :goto_4d

    :catch_91
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move v0, v1

    goto :goto_4d

    :cond_97
    :try_start_97
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/mchsdk/paysdk/a/f;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "application/vnd.android.package-archive"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_ba
    .catch Ljava/io/FileNotFoundException; {:try_start_97 .. :try_end_ba} :catch_48
    .catch Ljava/io/IOException; {:try_start_97 .. :try_end_ba} :catch_91

    goto :goto_8d
.end method

.method static synthetic c(Landroid/content/Context;)V
    .registers 1

    invoke-static {p0}, Lcom/mchsdk/paysdk/a/f;->g(Landroid/content/Context;)V

    return-void
.end method

.method private static d(Landroid/content/Context;)Z
    .registers 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    :try_start_2
    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v2}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_19

    check-cast p0, Landroid/app/Activity;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V
    :try_end_18
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_18} :catch_1b

    :goto_18
    return v0

    :cond_19
    move v0, v1

    goto :goto_18

    :catch_1b
    move-exception v1

    goto :goto_18
.end method

.method private static e(Landroid/content/Context;)Z
    .registers 4

    const/4 v0, 0x1

    :try_start_1
    const-string v1, "app.webchat.payments.agree"

    invoke-static {p0, v1}, Lcom/mchsdk/paysdk/utils/a;->a(Landroid/content/Context;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_11

    move-result v1

    const/4 v2, 0x4

    if-gt v2, v1, :cond_e

    const/16 v2, 0x3e8

    if-le v1, v2, :cond_f

    :cond_e
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e

    :catch_11
    move-exception v1

    goto :goto_e
.end method

.method private static f(Landroid/content/Context;)V
    .registers 3

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mchsdk/paysdk/a/f$2;

    invoke-direct {v1, p0}, Lcom/mchsdk/paysdk/a/f$2;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static g(Landroid/content/Context;)V
    .registers 3

    if-nez p0, :cond_3

    :goto_2
    return-void

    :cond_3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.DELETE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "package:app.webchat.payments.agree"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_2
.end method

.method private static h(Landroid/content/Context;)Z
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "app.webchat.payments.agree"

    const/16 v3, 0x2000

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_c} :catch_11

    move-result-object v1

    if-eqz v1, :cond_10

    const/4 v0, 0x1

    :cond_10
    :goto_10
    return v0

    :catch_11
    move-exception v1

    goto :goto_10
.end method
