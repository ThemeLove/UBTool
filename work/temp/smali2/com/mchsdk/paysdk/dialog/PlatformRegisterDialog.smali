.class public Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;
.super Landroid/app/DialogFragment;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/mchsdk/paysdk/g/b;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog$a;
    }
.end annotation


# instance fields
.field a:Z

.field b:Landroid/widget/Button;

.field c:Landroid/widget/EditText;

.field d:Landroid/widget/EditText;

.field e:Landroid/widget/EditText;

.field f:Landroid/widget/Button;

.field g:Landroid/os/Handler;

.field h:Lcom/mchsdk/paysdk/b/d;

.field i:Landroid/view/View$OnClickListener;

.field j:Landroid/os/Handler;

.field private k:Landroid/content/Context;

.field private l:Landroid/content/DialogInterface$OnKeyListener;

.field private m:Lcom/mchsdk/paysdk/b/c;

.field private n:Landroid/view/View$OnClickListener;

.field private o:Landroid/view/View$OnClickListener;

.field private p:Landroid/view/View$OnFocusChangeListener;

.field private q:Ljava/lang/String;

.field private r:Landroid/widget/ImageView;

.field private s:Ljava/net/HttpURLConnection;

.field private t:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;->a:Z

    invoke-static {}, Lcom/mchsdk/paysdk/c/a;->a()Lcom/mchsdk/paysdk/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/c/a;->I()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;->q:Ljava/lang/String;

    new-instance v0, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog$1;

    invoke-direct {v0, p0}, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog$1;-><init>(Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;)V

    iput-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;->g:Landroid/os/Handler;

    new-instance v0, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog$8;

    invoke-direct {v0, p0}, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog$8;-><init>(Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;)V

    iput-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;->h:Lcom/mchsdk/paysdk/b/d;

    new-instance v0, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog$9;

    invoke-direct {v0, p0}, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog$9;-><init>(Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;)V

    iput-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;->i:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog$10;

    invoke-direct {v0, p0}, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog$10;-><init>(Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;)V

    iput-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;->j:Landroid/os/Handler;

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

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;->a:Z

    invoke-static {}, Lcom/mchsdk/paysdk/c/a;->a()Lcom/mchsdk/paysdk/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/c/a;->I()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;->q:Ljava/lang/String;

    new-instance v0, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog$1;

    invoke-direct {v0, p0}, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog$1;-><init>(Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;)V

    iput-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;->g:Landroid/os/Handler;

    new-instance v0, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog$8;

    invoke-direct {v0, p0}, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog$8;-><init>(Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;)V

    iput-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;->h:Lcom/mchsdk/paysdk/b/d;

    new-instance v0, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog$9;

    invoke-direct {v0, p0}, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog$9;-><init>(Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;)V

    iput-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;->i:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog$10;

    invoke-direct {v0, p0}, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog$10;-><init>(Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;)V

    iput-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;->j:Landroid/os/Handler;

    iput-object p1, p0, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;->k:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;->r:Landroid/widget/ImageView;

    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;->k:Landroid/content/Context;

    const-string v1, "id"

    const-string v2, "mch_iv_log"

    invoke-static {v0, v1, v2}, Lcom/mchsdk/paysdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;->r:Landroid/widget/ImageView;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog$2;

    invoke-direct {v1, p0}, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog$2;-><init>(Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic b(Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;)Landroid/graphics/Bitmap;
    .registers 2

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;->t:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private b()V
    .registers 6

    const/4 v1, 0x0

    :try_start_1
    new-instance v0, Ljava/net/URL;

    iget-object v2, p0, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;->q:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;->s:Ljava/net/HttpURLConnection;

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;->s:Ljava/net/HttpURLConnection;

    const-string v2, "GET"

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;->s:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;->s:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_92

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;->s:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_2b
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_2b} :catch_47
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_2b} :catch_60
    .catchall {:try_start_1 .. :try_end_2b} :catchall_73

    move-result-object v0

    :try_start_2c
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;->t:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;->g:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_38
    .catch Ljava/net/MalformedURLException; {:try_start_2c .. :try_end_38} :catch_8d
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_38} :catch_88
    .catchall {:try_start_2c .. :try_end_38} :catchall_83

    :goto_38
    iget-object v1, p0, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;->s:Ljava/net/HttpURLConnection;

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
    iget-object v2, p0, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;->g:Landroid/os/Handler;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V
    :try_end_51
    .catchall {:try_start_48 .. :try_end_51} :catchall_73

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;->s:Ljava/net/HttpURLConnection;

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

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;->s:Ljava/net/HttpURLConnection;

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
    iget-object v2, p0, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;->s:Ljava/net/HttpURLConnection;

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

.method static synthetic c(Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;)Landroid/view/View$OnClickListener;
    .registers 2

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;->o:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic d(Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;)Landroid/view/View$OnClickListener;
    .registers 2

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;->n:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic e(Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;->k:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic f(Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;)Lcom/mchsdk/paysdk/b/c;
    .registers 2

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;->m:Lcom/mchsdk/paysdk/b/c;

    return-object v0
.end method

.method static synthetic g(Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;)Landroid/content/DialogInterface$OnKeyListener;
    .registers 2

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;->l:Landroid/content/DialogInterface$OnKeyListener;

    return-object v0
.end method

.method static synthetic h(Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;)V
    .registers 1

    invoke-direct {p0}, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;->b()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 5

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;->f:Landroid/widget/Button;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;->f:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;->f:Landroid/widget/Button;

    const-string v1, "\u83b7\u53d6\u9a8c\u8bc1\u7801"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;->f:Landroid/widget/Button;

    iget-object v1, p0, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;->k:Landroid/content/Context;

    const-string v2, "drawable"

    const-string v3, "mc_login_reg_phone_num"

    invoke-static {v1, v2, v3}, Lcom/mchsdk/paysdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    :cond_20
    return-void
.end method

.method public a(Landroid/content/DialogInterface$OnKeyListener;)V
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;->l:Landroid/content/DialogInterface$OnKeyListener;

    return-void
.end method

.method public a(Landroid/view/View$OnClickListener;)V
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;->n:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public a(Landroid/view/View$OnFocusChangeListener;)V
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;->p:Landroid/view/View$OnFocusChangeListener;

    return-void
.end method

.method public a(Lcom/mchsdk/paysdk/b/c;)V
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;->m:Lcom/mchsdk/paysdk/b/c;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;->j:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public b(Landroid/view/View$OnClickListener;)V
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;->o:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;->k:Landroid/content/Context;

    const-string v2, "style"

    const-string v3, "MCCustomDialog"

    invoke-static {v1, v2, v3}, Lcom/mchsdk/paysdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;->setStyle(II)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 10

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;->k:Landroid/content/Context;

    const-string v1, "layout"

    const-string v2, "dialog_mch_platform_register"

    invoke-static {v0, v1, v2}, Lcom/mchsdk/paysdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;->k:Landroid/content/Context;

    const-string v2, "id"

    const-string v3, "edt_mc_platform_register_account"

    invoke-static {v0, v2, v3}, Lcom/mchsdk/paysdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;->c:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;->k:Landroid/content/Context;

    const-string v2, "id"

    const-string v3, "edt_mc_platform_register_password"

    invoke-static {v0, v2, v3}, Lcom/mchsdk/paysdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;->d:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;->k:Landroid/content/Context;

    const-string v2, "id"

    const-string v3, "edt_mc_platform_register_msg"

    invoke-static {v0, v2, v3}, Lcom/mchsdk/paysdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;->e:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;->k:Landroid/content/Context;

    const-string v2, "id"

    const-string v3, "btn_mc_platform_registertologin"

    invoke-static {v0, v2, v3}, Lcom/mchsdk/paysdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mchsdk/paysdk/utils/o;->a(Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog$3;

    invoke-direct {v2, p0}, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog$3;-><init>(Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;->k:Landroid/content/Context;

    const-string v2, "id"

    const-string v3, "btn_mc_read"

    invoke-static {v0, v2, v3}, Lcom/mchsdk/paysdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;->b:Landroid/widget/Button;

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;->b:Landroid/widget/Button;

    iget-object v2, p0, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;->k:Landroid/content/Context;

    const-string v3, "drawable"

    const-string v4, "mch_checkbox_pressed"

    invoke-static {v2, v3, v4}, Lcom/mchsdk/paysdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;->b:Landroid/widget/Button;

    iget-object v2, p0, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;->i:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;->k:Landroid/content/Context;

    const-string v2, "id"

    const-string v3, "txt_mc_read"

    invoke-static {v0, v2, v3}, Lcom/mchsdk/paysdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;->i:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;->k:Landroid/content/Context;

    const-string v2, "id"

    const-string v3, "txt_mc_agreement"

    invoke-static {v0, v2, v3}, Lcom/mchsdk/paysdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;->i:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;->k:Landroid/content/Context;

    const-string v2, "id"

    const-string v3, "btn_reg"

    invoke-static {v0, v2, v3}, Lcom/mchsdk/paysdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mchsdk/paysdk/utils/o;->a(Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog$4;

    invoke-direct {v2, p0}, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog$4;-><init>(Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;->k:Landroid/content/Context;

    const-string v2, "id"

    const-string v3, "btn_mc_platform_register"

    invoke-static {v0, v2, v3}, Lcom/mchsdk/paysdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v2, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog$5;

    invoke-direct {v2, p0}, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog$5;-><init>(Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;->k:Landroid/content/Context;

    const-string v2, "id"

    const-string v3, "msg_mm"

    invoke-static {v0, v2, v3}, Lcom/mchsdk/paysdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;->f:Landroid/widget/Button;

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;->f:Landroid/widget/Button;

    new-instance v2, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog$6;

    invoke-direct {v2, p0}, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog$6;-><init>(Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v5}, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;->setCancelable(Z)V

    invoke-virtual {p0}, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    new-instance v2, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog$7;

    invoke-direct {v2, p0}, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog$7;-><init>(Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;)V

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    return-object v1
.end method

.method public onStart()V
    .registers 9

    const v7, 0x3f4147ae

    invoke-virtual {p0}, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;->getDialog()Landroid/app/Dialog;

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
