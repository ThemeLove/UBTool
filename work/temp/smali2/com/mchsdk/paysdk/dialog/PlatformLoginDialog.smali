.class public Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;
.super Landroid/app/DialogFragment;

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog$a;
    }
.end annotation


# instance fields
.field a:Z

.field b:Landroid/widget/Button;

.field c:Landroid/widget/LinearLayout;

.field d:Landroid/widget/LinearLayout;

.field e:Landroid/widget/LinearLayout;

.field f:Landroid/widget/LinearLayout;

.field g:Landroid/widget/EditText;

.field h:Landroid/widget/EditText;

.field i:Landroid/os/Handler;

.field j:Landroid/view/View$OnClickListener;

.field private k:Landroid/content/Context;

.field private l:Landroid/content/DialogInterface$OnKeyListener;

.field private m:Lcom/mchsdk/paysdk/b/b;

.field private n:Landroid/view/View$OnClickListener;

.field private o:Landroid/view/View$OnClickListener;

.field private p:Landroid/view/View$OnClickListener;

.field private q:Landroid/view/View$OnClickListener;

.field private r:Landroid/view/View$OnClickListener;

.field private s:Landroid/view/View$OnFocusChangeListener;

.field private t:Ljava/lang/String;

.field private u:Landroid/widget/ImageView;

.field private v:Ljava/net/HttpURLConnection;

.field private w:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    invoke-static {}, Lcom/mchsdk/paysdk/c/a;->a()Lcom/mchsdk/paysdk/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/c/a;->I()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;->t:Ljava/lang/String;

    new-instance v0, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog$1;

    invoke-direct {v0, p0}, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog$1;-><init>(Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;)V

    iput-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;->i:Landroid/os/Handler;

    new-instance v0, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog$9;

    invoke-direct {v0, p0}, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog$9;-><init>(Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;)V

    iput-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;->j:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ValidFragment"
        }
    .end annotation

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    invoke-static {}, Lcom/mchsdk/paysdk/c/a;->a()Lcom/mchsdk/paysdk/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/c/a;->I()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;->t:Ljava/lang/String;

    new-instance v0, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog$1;

    invoke-direct {v0, p0}, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog$1;-><init>(Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;)V

    iput-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;->i:Landroid/os/Handler;

    new-instance v0, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog$9;

    invoke-direct {v0, p0}, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog$9;-><init>(Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;)V

    iput-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;->j:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;->k:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;->u:Landroid/widget/ImageView;

    return-object v0
.end method

.method private a()V
    .registers 6

    const/4 v1, 0x0

    :try_start_1
    new-instance v0, Ljava/net/URL;

    iget-object v2, p0, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;->t:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;->v:Ljava/net/HttpURLConnection;

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;->v:Ljava/net/HttpURLConnection;

    const-string v2, "GET"

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;->v:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;->v:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_92

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;->v:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_2b
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_2b} :catch_47
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_2b} :catch_60
    .catchall {:try_start_1 .. :try_end_2b} :catchall_73

    move-result-object v0

    :try_start_2c
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;->w:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;->i:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_38
    .catch Ljava/net/MalformedURLException; {:try_start_2c .. :try_end_38} :catch_8d
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_38} :catch_88
    .catchall {:try_start_2c .. :try_end_38} :catchall_83

    :goto_38
    iget-object v1, p0, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;->v:Ljava/net/HttpURLConnection;

    if-eqz v1, :cond_41

    if-eqz v0, :cond_41

    :try_start_3e
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_42

    :cond_41
    :goto_41
    return-void

    :catch_42
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_41

    :catch_47
    move-exception v0

    :goto_48
    :try_start_48
    iget-object v2, p0, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;->i:Landroid/os/Handler;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V
    :try_end_51
    .catchall {:try_start_48 .. :try_end_51} :catchall_73

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;->v:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_41

    if-eqz v1, :cond_41

    :try_start_57
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_5a} :catch_5b

    goto :goto_41

    :catch_5b
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_41

    :catch_60
    move-exception v0

    :goto_61
    :try_start_61
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_64
    .catchall {:try_start_61 .. :try_end_64} :catchall_73

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;->v:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_41

    if-eqz v1, :cond_41

    :try_start_6a
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_6d} :catch_6e

    goto :goto_41

    :catch_6e
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_41

    :catchall_73
    move-exception v0

    :goto_74
    iget-object v2, p0, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;->v:Ljava/net/HttpURLConnection;

    if-eqz v2, :cond_7d

    if-eqz v1, :cond_7d

    :try_start_7a
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7d
    .catch Ljava/io/IOException; {:try_start_7a .. :try_end_7d} :catch_7e

    :cond_7d
    :goto_7d
    throw v0

    :catch_7e
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7d

    :catchall_83
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_74

    :catch_88
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_61

    :catch_8d
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_48

    :cond_92
    move-object v0, v1

    goto :goto_38
.end method

.method private a(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;->k:Landroid/content/Context;

    const-string v1, "id"

    const-string v2, "mch_iv_log"

    invoke-static {v0, v1, v2}, Lcom/mchsdk/paysdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;->u:Landroid/widget/ImageView;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog$8;

    invoke-direct {v1, p0}, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog$8;-><init>(Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 4

    new-instance v1, Lcom/mchsdk/paysdk/a/a/a;

    invoke-direct {v1}, Lcom/mchsdk/paysdk/a/a/a;-><init>()V

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;->k:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iput-object v0, v1, Lcom/mchsdk/paysdk/a/a/a;->a:Landroid/app/Activity;

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;->g:Landroid/widget/EditText;

    iput-object v0, v1, Lcom/mchsdk/paysdk/a/a/a;->b:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;->h:Landroid/widget/EditText;

    iput-object v0, v1, Lcom/mchsdk/paysdk/a/a/a;->c:Landroid/widget/EditText;

    invoke-virtual {v1}, Lcom/mchsdk/paysdk/a/a/a;->a()V

    return-void
.end method

.method static synthetic b(Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;)Landroid/graphics/Bitmap;
    .registers 2

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;->w:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic c(Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;)Landroid/view/View$OnClickListener;
    .registers 2

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;->o:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic d(Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;)Landroid/view/View$OnClickListener;
    .registers 2

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;->p:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic e(Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;)Landroid/view/View$OnClickListener;
    .registers 2

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;->n:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic f(Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;)Lcom/mchsdk/paysdk/b/b;
    .registers 2

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;->m:Lcom/mchsdk/paysdk/b/b;

    return-object v0
.end method

.method static synthetic g(Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;)Landroid/view/View$OnClickListener;
    .registers 2

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;->q:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic h(Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;)Landroid/content/DialogInterface$OnKeyListener;
    .registers 2

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;->l:Landroid/content/DialogInterface$OnKeyListener;

    return-object v0
.end method

.method static synthetic i(Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;)V
    .registers 1

    invoke-direct {p0}, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;->a()V

    return-void
.end method

.method static synthetic j(Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;->k:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/DialogInterface$OnKeyListener;)V
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;->l:Landroid/content/DialogInterface$OnKeyListener;

    return-void
.end method

.method public a(Landroid/view/View$OnClickListener;)V
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;->n:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public a(Lcom/mchsdk/paysdk/b/b;)V
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;->m:Lcom/mchsdk/paysdk/b/b;

    return-void
.end method

.method public a(ZZZZ)V
    .registers 9

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;->c:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_23

    move v0, v1

    :goto_8
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v3, p0, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;->d:Landroid/widget/LinearLayout;

    if-eqz p2, :cond_25

    move v0, v1

    :goto_10
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v3, p0, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;->e:Landroid/widget/LinearLayout;

    if-eqz p3, :cond_27

    move v0, v1

    :goto_18
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;->f:Landroid/widget/LinearLayout;

    if-eqz p4, :cond_29

    :goto_1f
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    :cond_23
    move v0, v2

    goto :goto_8

    :cond_25
    move v0, v2

    goto :goto_10

    :cond_27
    move v0, v2

    goto :goto_18

    :cond_29
    move v1, v2

    goto :goto_1f
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2

    return-void
.end method

.method public b(Landroid/view/View$OnClickListener;)V
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;->o:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public c(Landroid/view/View$OnClickListener;)V
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;->p:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public d(Landroid/view/View$OnClickListener;)V
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;->q:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public e(Landroid/view/View$OnClickListener;)V
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;->r:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;->k:Landroid/content/Context;

    const-string v2, "style"

    const-string v3, "MCCustomDialog"

    invoke-static {v1, v2, v3}, Lcom/mchsdk/paysdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;->setStyle(II)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 13
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v8, 0x0

    const/16 v7, 0x8

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;->k:Landroid/content/Context;

    const-string v1, "layout"

    const-string v2, "dialog_mch_platform_login"

    invoke-static {v0, v1, v2}, Lcom/mchsdk/paysdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0, p2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0}, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v1, ""

    const-string v0, ""

    if-eqz v2, :cond_1f9

    const-string v0, "mc_account"

    const-string v1, ""

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "mc_password"

    const-string v3, ""

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v1

    move-object v1, v0

    :goto_2d
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;->a:Z

    invoke-direct {p0, v4}, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;->k:Landroid/content/Context;

    const-string v3, "id"

    const-string v5, "edt_mc_platform_login_account"

    invoke-static {v0, v3, v5}, Lcom/mchsdk/paysdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;->g:Landroid/widget/EditText;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_50

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;->g:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_50
    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;->k:Landroid/content/Context;

    const-string v2, "id"

    const-string v3, "edt_mc_platform_login_password"

    invoke-static {v0, v2, v3}, Lcom/mchsdk/paysdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;->h:Landroid/widget/EditText;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6d

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;->h:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_6d
    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;->k:Landroid/content/Context;

    const-string v1, "id"

    const-string v2, "txt_mc_save_password"

    invoke-static {v0, v1, v2}, Lcom/mchsdk/paysdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;->j:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;->k:Landroid/content/Context;

    const-string v1, "id"

    const-string v2, "btn_mc_save_password"

    invoke-static {v0, v1, v2}, Lcom/mchsdk/paysdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;->b:Landroid/widget/Button;

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;->b:Landroid/widget/Button;

    iget-object v1, p0, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;->k:Landroid/content/Context;

    const-string v2, "drawable"

    const-string v3, "mc_platform_login_seleceted"

    invoke-static {v1, v2, v3}, Lcom/mchsdk/paysdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;->b:Landroid/widget/Button;

    iget-object v1, p0, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;->j:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;->k:Landroid/content/Context;

    const-string v1, "id"

    const-string v2, "btn_mc_platform_toregister"

    invoke-static {v0, v1, v2}, Lcom/mchsdk/paysdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog$2;

    invoke-direct {v1, p0}, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog$2;-><init>(Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;->k:Landroid/content/Context;

    const-string v1, "id"

    const-string v2, "btn_mc_platform_toquickregister"

    invoke-static {v0, v1, v2}, Lcom/mchsdk/paysdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog$3;

    invoke-direct {v1, p0}, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog$3;-><init>(Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;->k:Landroid/content/Context;

    const-string v1, "id"

    const-string v2, "btn_mc_platform_forgment_pwd"

    invoke-static {v0, v1, v2}, Lcom/mchsdk/paysdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog$4;

    invoke-direct {v1, p0}, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog$4;-><init>(Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;->k:Landroid/content/Context;

    const-string v1, "id"

    const-string v2, "btn_mc_platform_login"

    invoke-static {v0, v1, v2}, Lcom/mchsdk/paysdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog$5;

    invoke-direct {v1, p0}, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog$5;-><init>(Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;->k:Landroid/content/Context;

    const-string v1, "id"

    const-string v2, "ll_wblogin"

    invoke-static {v0, v1, v2}, Lcom/mchsdk/paysdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;->k:Landroid/content/Context;

    const-string v2, "id"

    const-string v3, "ll_qqlogin"

    invoke-static {v1, v2, v3}, Lcom/mchsdk/paysdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;->k:Landroid/content/Context;

    const-string v3, "id"

    const-string v5, "ll_wxlogin"

    invoke-static {v2, v3, v5}, Lcom/mchsdk/paysdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;->k:Landroid/content/Context;

    const-string v5, "id"

    const-string v6, "ll_bdlogin"

    invoke-static {v3, v5, v6}, Lcom/mchsdk/paysdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    new-instance v5, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog$6;

    invoke-direct {v5, p0}, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog$6;-><init>(Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;)V

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const-string v6, "wb"

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const-string v6, "qq"

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    const-string v6, "wx"

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    const-string v6, "bd"

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;->k:Landroid/content/Context;

    const-string v1, "id"

    const-string v2, "ll_mch_wblogin"

    invoke-static {v0, v1, v2}, Lcom/mchsdk/paysdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;->c:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;->k:Landroid/content/Context;

    const-string v1, "id"

    const-string v2, "ll_mch_qqlogin"

    invoke-static {v0, v1, v2}, Lcom/mchsdk/paysdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;->d:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;->k:Landroid/content/Context;

    const-string v1, "id"

    const-string v2, "ll_mch_wxlogin"

    invoke-static {v0, v1, v2}, Lcom/mchsdk/paysdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;->e:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;->k:Landroid/content/Context;

    const-string v1, "id"

    const-string v2, "ll_mch_bdlogin"

    invoke-static {v0, v1, v2}, Lcom/mchsdk/paysdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;->f:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {p0, v8}, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;->setCancelable(Z)V

    invoke-virtual {p0}, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    new-instance v1, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog$7;

    invoke-direct {v1, p0}, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog$7;-><init>(Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    return-object v4

    :cond_1f9
    move-object v2, v1

    move-object v1, v0

    goto/16 :goto_2d
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .registers 6

    move-object v0, p1

    check-cast v0, Landroid/widget/EditText;

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;->k:Landroid/content/Context;

    const-string v1, "id"

    const-string v2, "edt_mc_platform_login_account"

    invoke-static {v0, v1, v2}, Lcom/mchsdk/paysdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v1, v0, :cond_1e

    if-nez p2, :cond_1e

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;->s:Landroid/view/View$OnFocusChangeListener;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;->s:Landroid/view/View$OnFocusChangeListener;

    invoke-interface {v0, p1, p2}, Landroid/view/View$OnFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V

    :cond_1e
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 4

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "\u957f\u6309\u4e8b\u4ef6"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    check-cast p1, Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public onStart()V
    .registers 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const v7, 0x3f4147ae

    invoke-virtual {p0}, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget v1, v2, Landroid/graphics/Point;->x:I

    iget v3, v2, Landroid/graphics/Point;->y:I

    if-lt v1, v3, :cond_47

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v3, v2, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    mul-float/2addr v3, v7

    float-to-double v3, v3

    const-wide v5, 0x3ff199999999999aL

    mul-double/2addr v3, v5

    double-to-int v3, v3

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    mul-float/2addr v2, v7

    float-to-int v2, v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    :goto_3e
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    invoke-super {p0}, Landroid/app/DialogFragment;->onStart()V

    return-void

    :cond_47
    const v1, 0x3f51eb85

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v4, v2, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    mul-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    mul-float/2addr v2, v7

    float-to-int v2, v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_3e
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method
