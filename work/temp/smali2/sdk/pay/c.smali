.class abstract Lsdk/pay/c;
.super Ljava/lang/Object;

# interfaces
.implements Lsdk/pay/c/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsdk/pay/c$a;
    }
.end annotation


# static fields
.field static a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lsdk/pay/d/f;",
            ">;"
        }
    .end annotation
.end field

.field static b:Lsdk/pay/d/e;

.field static c:Lsdk/pay/d/b;

.field private static m:Lokhttp3/v;


# instance fields
.field d:Landroid/os/HandlerThread;

.field e:Landroid/app/Activity;

.field f:Landroid/os/Handler;

.field g:Landroid/content/SharedPreferences;

.field h:Lsdk/pay/e;

.field i:Lsdk/pay/c/c;

.field j:Lsdk/pay/c/b;

.field k:Z

.field private l:Z

.field private n:Lsdk/pay/c/d;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide/16 v2, 0x1e

    new-instance v0, Lokhttp3/v$a;

    invoke-direct {v0}, Lokhttp3/v$a;-><init>()V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/v$a;->a(JLjava/util/concurrent/TimeUnit;)Lokhttp3/v$a;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/v$a;->b(JLjava/util/concurrent/TimeUnit;)Lokhttp3/v$a;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/v$a;->a()Lokhttp3/v;

    move-result-object v0

    sput-object v0, Lsdk/pay/c;->m:Lokhttp3/v;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lsdk/pay/c;->a:Ljava/util/HashMap;

    new-instance v0, Lsdk/pay/d/e;

    invoke-direct {v0}, Lsdk/pay/d/e;-><init>()V

    sput-object v0, Lsdk/pay/c;->b:Lsdk/pay/d/e;

    return-void
.end method

.method constructor <init>(Landroid/app/Activity;Lsdk/pay/c/d;Z)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsdk/pay/c;->e:Landroid/app/Activity;

    iput-object p2, p0, Lsdk/pay/c;->n:Lsdk/pay/c/d;

    iput-boolean p3, p0, Lsdk/pay/c;->k:Z

    new-instance v0, Lsdk/pay/e;

    iget-object v1, p0, Lsdk/pay/c;->e:Landroid/app/Activity;

    sget-object v2, Lsdk/pay/c;->b:Lsdk/pay/d/e;

    invoke-direct {v0, v1, v2}, Lsdk/pay/e;-><init>(Landroid/content/Context;Lsdk/pay/d/e;)V

    iput-object v0, p0, Lsdk/pay/c;->h:Lsdk/pay/e;

    const-string v0, "paySdk"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lsdk/pay/c;->g:Landroid/content/SharedPreferences;

    return-void
.end method

.method static synthetic a(Lsdk/pay/c;)Lsdk/pay/c/d;
    .registers 2

    iget-object v0, p0, Lsdk/pay/c;->n:Lsdk/pay/c/d;

    return-object v0
.end method

.method private i()V
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    iget-object v0, p0, Lsdk/pay/c;->d:Landroid/os/HandlerThread;

    if-eqz v0, :cond_f

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_10

    iget-object v0, p0, Lsdk/pay/c;->d:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    :cond_f
    :goto_f
    return-void

    :cond_10
    iget-object v0, p0, Lsdk/pay/c;->d:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    goto :goto_f
.end method

.method private j()V
    .registers 3

    const/4 v1, 0x0

    sput-object v1, Lsdk/pay/c;->c:Lsdk/pay/d/b;

    iget-object v0, p0, Lsdk/pay/c;->f:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lsdk/pay/c;->h:Lsdk/pay/e;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lsdk/pay/c;->h:Lsdk/pay/e;

    invoke-virtual {v0}, Lsdk/pay/e;->stopLoading()V

    iget-object v0, p0, Lsdk/pay/c;->h:Lsdk/pay/e;

    invoke-virtual {v0}, Lsdk/pay/e;->clearHistory()V

    iget-object v0, p0, Lsdk/pay/c;->h:Lsdk/pay/e;

    invoke-virtual {v0}, Lsdk/pay/e;->removeAllViews()V

    iget-object v0, p0, Lsdk/pay/c;->h:Lsdk/pay/e;

    invoke-virtual {v0}, Lsdk/pay/e;->destroy()V

    :cond_20
    iput-object v1, p0, Lsdk/pay/c;->h:Lsdk/pay/e;

    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const/4 v0, 0x0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_27

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " encrypt info = null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lsdk/pay/e/h;->c(Ljava/lang/String;)V

    sget-object v1, Lsdk/pay/b/a;->h:Lsdk/pay/b/a;

    invoke-virtual {v1}, Lsdk/pay/b/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lsdk/pay/c;->c(Ljava/lang/String;)V

    :goto_26
    return-object v0

    :cond_27
    sget-object v1, Lsdk/pay/c;->b:Lsdk/pay/d/e;

    invoke-virtual {v1}, Lsdk/pay/d/e;->q()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lsdk/pay/c;->b:Lsdk/pay/d/e;

    invoke-virtual {v2}, Lsdk/pay/d/e;->r()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v1, v2}, Lsdk/pay/e/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    if-nez v1, :cond_43

    sget-object v1, Lsdk/pay/b/a;->i:Lsdk/pay/b/a;

    invoke-virtual {v1}, Lsdk/pay/b/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lsdk/pay/c;->c(Ljava/lang/String;)V

    goto :goto_26

    :cond_43
    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    const-string v2, "+"

    const-string v3, "-"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    const-string v3, "_"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "="

    const-string v3, "~"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\r|\n"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    :try_start_68
    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_6d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_68 .. :try_end_6d} :catch_6f

    move-result-object v0

    goto :goto_26

    :catch_6f
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " UnsupportedEncodingException = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lsdk/pay/e/h;->e(Ljava/lang/String;)V

    sget-object v2, Lsdk/pay/b/a;->a:Lsdk/pay/b/a;

    invoke-virtual {v2}, Lsdk/pay/b/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lsdk/pay/c;->c(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    invoke-static {}, Lsdk/pay/e/f;->a()Lsdk/pay/e/f;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " UnsupportedEncodingException e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lsdk/pay/e/f;->a(Ljava/lang/String;)V

    goto/16 :goto_26
.end method

.method a()V
    .registers 5

    const/4 v3, 0x0

    const/4 v2, 0x0

    sput-object v2, Lsdk/pay/b/b;->a:Ljava/lang/String;

    iget-object v0, p0, Lsdk/pay/c;->g:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "PaySdkServersSum"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "PaySdkServersCurrent"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "PaySdkMsg"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "PaySdkNonce"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method a(I)V
    .registers 3

    iget-object v0, p0, Lsdk/pay/c;->f:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method a(II)V
    .registers 5

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput p2, v0, Landroid/os/Message;->arg1:I

    iput p1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lsdk/pay/c;->f:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method a(IJ)V
    .registers 5

    iget-object v0, p0, Lsdk/pay/c;->f:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method a(Ljava/lang/String;Ljava/lang/String;Lsdk/pay/c$a;)V
    .registers 6

    sget-object v0, Lsdk/pay/c;->m:Lokhttp3/v;

    new-instance v1, Lokhttp3/y$a;

    invoke-direct {v1}, Lokhttp3/y$a;-><init>()V

    invoke-virtual {v1, p2}, Lokhttp3/y$a;->a(Ljava/lang/String;)Lokhttp3/y$a;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/y$a;->a()Lokhttp3/y;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/v;->a(Lokhttp3/y;)Lokhttp3/e;

    move-result-object v0

    new-instance v1, Lsdk/pay/c$4;

    invoke-direct {v1, p0, p1, p3}, Lsdk/pay/c$4;-><init>(Lsdk/pay/c;Ljava/lang/String;Lsdk/pay/c$a;)V

    invoke-interface {v0, v1}, Lokhttp3/e;->a(Lokhttp3/f;)V

    return-void
.end method

.method abstract a(Ljava/lang/String;Z)V
.end method

.method abstract a(Z)V
.end method

.method abstract a(ZLjava/lang/String;)V
.end method

.method a(Ljava/lang/String;)Z
    .registers 7

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    :goto_7
    return v0

    :cond_8
    :try_start_8
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_d
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_d} :catch_f

    const/4 v0, 0x1

    goto :goto_7

    :catch_f
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isJson JSONException = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lsdk/pay/e/h;->e(Ljava/lang/String;)V

    invoke-static {}, Lsdk/pay/e/f;->a()Lsdk/pay/e/f;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isJson JSONException = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lsdk/pay/e/f;->a(Ljava/lang/String;)V

    goto :goto_7
.end method

.method varargs a([Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    array-length v2, p1

    move v1, v0

    :goto_3
    if-ge v1, v2, :cond_11

    aget-object v3, p1, v1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_e

    :goto_d
    return v0

    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_11
    const/4 v0, 0x1

    goto :goto_d
.end method

.method b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    const-string v1, "-"

    const-string v2, "+"

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "_"

    const-string v3, "/"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "~"

    const-string v3, "="

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onResponse msg = null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lsdk/pay/e/h;->f(Ljava/lang/String;)V

    sget-object v1, Lsdk/pay/b/a;->h:Lsdk/pay/b/a;

    invoke-virtual {v1}, Lsdk/pay/b/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lsdk/pay/c;->c(Ljava/lang/String;)V

    :goto_3e
    return-object v0

    :cond_3f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " onResponse msg = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lsdk/pay/e/h;->c(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    sget-object v2, Lsdk/pay/c;->b:Lsdk/pay/d/e;

    invoke-virtual {v2}, Lsdk/pay/d/e;->q()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lsdk/pay/c;->b:Lsdk/pay/d/e;

    invoke-virtual {v3}, Lsdk/pay/d/e;->r()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lsdk/pay/e/b;->a([BLjava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    if-nez v1, :cond_90

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " decryptResult exception"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lsdk/pay/e/h;->f(Ljava/lang/String;)V

    sget-object v1, Lsdk/pay/b/a;->j:Lsdk/pay/b/a;

    invoke-virtual {v1}, Lsdk/pay/b/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lsdk/pay/c;->c(Ljava/lang/String;)V

    goto :goto_3e

    :cond_90
    new-instance v0, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto :goto_3e
.end method

.method b()V
    .registers 3

    iget-object v0, p0, Lsdk/pay/c;->i:Lsdk/pay/c/c;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lsdk/pay/c;->e:Landroid/app/Activity;

    new-instance v1, Lsdk/pay/c$2;

    invoke-direct {v1, p0}, Lsdk/pay/c$2;-><init>(Lsdk/pay/c;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_e
    return-void
.end method

.method b(I)V
    .registers 4

    iget-object v0, p0, Lsdk/pay/c;->j:Lsdk/pay/c/b;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lsdk/pay/c;->e:Landroid/app/Activity;

    new-instance v1, Lsdk/pay/c$3;

    invoke-direct {v1, p0, p1}, Lsdk/pay/c$3;-><init>(Lsdk/pay/c;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_e
    return-void
.end method

.method abstract b(Z)V
.end method

.method b(Ljava/lang/String;)Z
    .registers 7

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    :goto_7
    return v0

    :cond_8
    :try_start_8
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_d
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_d} :catch_f

    const/4 v0, 0x1

    goto :goto_7

    :catch_f
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isJsonArray JSONException = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lsdk/pay/e/h;->e(Ljava/lang/String;)V

    invoke-static {}, Lsdk/pay/e/f;->a()Lsdk/pay/e/f;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isJson JSONException = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lsdk/pay/e/f;->a(Ljava/lang/String;)V

    goto :goto_7
.end method

.method varargs b([Ljava/lang/String;)Z
    .registers 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    aget-object v2, p1, v1

    invoke-static {v2}, Lsdk/pay/e/a/a;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    aget-object v3, p1, v0

    invoke-static {v3}, Lsdk/pay/e/a/b;->a(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x2

    aget-object v4, p1, v4

    invoke-static {v4}, Lsdk/pay/e/a/d;->a(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x3

    aget-object v5, p1, v5

    invoke-static {v5}, Lsdk/pay/e/a/c;->a(Ljava/lang/CharSequence;)Z

    move-result v5

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    if-nez v2, :cond_28

    const-string v7, "appid is error "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_28
    if-nez v3, :cond_2f

    const-string v7, "key is error "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2f
    if-nez v4, :cond_36

    const-string v7, "vector is error "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_36
    if-nez v5, :cond_3d

    const-string v7, "system is error"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3d
    if-eqz v2, :cond_45

    if-eqz v3, :cond_45

    if-eqz v4, :cond_45

    if-nez v5, :cond_56

    :cond_45
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsdk/pay/e/h;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lsdk/pay/c;->e:Landroid/app/Activity;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lsdk/pay/e/l;->a(Landroid/content/Context;Ljava/lang/String;)V

    move v0, v1

    :cond_56
    return v0
.end method

.method public c()V
    .registers 1

    invoke-direct {p0}, Lsdk/pay/c;->j()V

    invoke-direct {p0}, Lsdk/pay/c;->i()V

    return-void
.end method

.method protected c(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lsdk/pay/c;->n:Lsdk/pay/c/d;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lsdk/pay/c;->e:Landroid/app/Activity;

    new-instance v1, Lsdk/pay/c$1;

    invoke-direct {v1, p0, p1}, Lsdk/pay/c$1;-><init>(Lsdk/pay/c;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_e
    return-void
.end method

.method abstract c(Z)V
.end method

.method abstract d()V
.end method

.method abstract d(Ljava/lang/String;)V
.end method

.method abstract d(Z)V
.end method

.method abstract e()V
.end method

.method abstract e(Ljava/lang/String;)V
.end method

.method e(Z)V
    .registers 2

    iput-boolean p1, p0, Lsdk/pay/c;->l:Z

    return-void
.end method

.method abstract f()V
.end method

.method abstract f(Ljava/lang/String;)V
.end method

.method abstract g()V
.end method

.method abstract g(Ljava/lang/String;)V
.end method

.method h()Z
    .registers 2

    iget-boolean v0, p0, Lsdk/pay/c;->l:Z

    return v0
.end method
