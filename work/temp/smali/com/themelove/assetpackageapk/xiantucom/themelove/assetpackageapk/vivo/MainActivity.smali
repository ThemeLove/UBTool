.class public Lcom/themelove/assetpackageapk/xiantucom/themelove/assetpackageapk/vivo/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# instance fields
.field private BASE_PATH:Ljava/lang/String;

.field private FILE_SPERATOR:Ljava/lang/String;

.field private LINE_SPERATOR:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 21
    const-string v0, "line.sperator"

    const-string v1, "\n"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/themelove/assetpackageapk/xiantucom/themelove/assetpackageapk/vivo/MainActivity;->LINE_SPERATOR:Ljava/lang/String;

    .line 22
    const-string v0, "file.sperator"

    const-string v1, "\\"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/themelove/assetpackageapk/xiantucom/themelove/assetpackageapk/vivo/MainActivity;->FILE_SPERATOR:Ljava/lang/String;

    .line 23
    const-string v0, "user.dir"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/themelove/assetpackageapk/xiantucom/themelove/assetpackageapk/vivo/MainActivity;->BASE_PATH:Ljava/lang/String;

    .line 19
    return-void
.end method

.method static synthetic access$0(Lcom/themelove/assetpackageapk/xiantucom/themelove/assetpackageapk/vivo/MainActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/themelove/assetpackageapk/xiantucom/themelove/assetpackageapk/vivo/MainActivity;->BASE_PATH:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/themelove/assetpackageapk/xiantucom/themelove/assetpackageapk/vivo/MainActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/themelove/assetpackageapk/xiantucom/themelove/assetpackageapk/vivo/MainActivity;->LINE_SPERATOR:Ljava/lang/String;

    return-object v0
.end method

.method private initView()V
    .locals 3

    .prologue
    .line 33
    const/high16 v2, 0x7f060000

    invoke-virtual {p0, v2}, Lcom/themelove/assetpackageapk/xiantucom/themelove/assetpackageapk/vivo/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 34
    .local v1, "packInfo":Landroid/widget/TextView;
    const v2, 0x7f060001

    invoke-virtual {p0, v2}, Lcom/themelove/assetpackageapk/xiantucom/themelove/assetpackageapk/vivo/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 35
    .local v0, "getPackInfoBtn":Landroid/widget/TextView;
    new-instance v2, Lcom/themelove/assetpackageapk/xiantucom/themelove/assetpackageapk/vivo/MainActivity$1;

    invoke-direct {v2, p0, v1}, Lcom/themelove/assetpackageapk/xiantucom/themelove/assetpackageapk/vivo/MainActivity$1;-><init>(Lcom/themelove/assetpackageapk/xiantucom/themelove/assetpackageapk/vivo/MainActivity;Landroid/widget/TextView;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    return-void
.end method


# virtual methods
.method protected getChannelInfoFromAssetConfig()[Ljava/lang/String;
    .locals 8

    .prologue
    .line 66
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 69
    .local v1, "channelInfo":Ljava/lang/StringBuffer;
    :try_start_0
    invoke-virtual {p0}, Lcom/themelove/assetpackageapk/xiantucom/themelove/assetpackageapk/vivo/MainActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    const-string v6, "vasconfig/channel.ini"

    invoke-virtual {v5, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 70
    .local v3, "in":Ljava/io/InputStream;
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 71
    .local v0, "br":Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .line 72
    .local v4, "line":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    .line 75
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "#"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 79
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "in":Ljava/io/InputStream;
    .end local v4    # "line":Ljava/lang/String;
    :goto_1
    return-object v5

    .line 73
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "in":Ljava/io/InputStream;
    .restart local v4    # "line":Ljava/lang/String;
    :cond_0
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "#"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 76
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "in":Ljava/io/InputStream;
    .end local v4    # "line":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 77
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 79
    const/4 v5, 0x0

    goto :goto_1
.end method

.method protected getChannelInfoFromMeta(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 56
    :try_start_0
    invoke-virtual {p0}, Lcom/themelove/assetpackageapk/xiantucom/themelove/assetpackageapk/vivo/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/themelove/assetpackageapk/xiantucom/themelove/assetpackageapk/vivo/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 57
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v3, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 58
    .local v2, "object":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    .line 62
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "object":Ljava/lang/Object;
    .end local p2    # "defaultValue":Ljava/lang/String;
    :goto_0
    return-object p2

    .line 59
    .restart local p2    # "defaultValue":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 60
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 27
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    const/high16 v0, 0x7f030000

    invoke-virtual {p0, v0}, Lcom/themelove/assetpackageapk/xiantucom/themelove/assetpackageapk/vivo/MainActivity;->setContentView(I)V

    .line 29
    invoke-direct {p0}, Lcom/themelove/assetpackageapk/xiantucom/themelove/assetpackageapk/vivo/MainActivity;->initView()V

    .line 30
    return-void
.end method
