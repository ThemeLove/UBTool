.class Lcom/mchsdk/paysdk/utils/Lolly$6;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mchsdk/paysdk/utils/Lolly;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mchsdk/paysdk/utils/Lolly;


# direct methods
.method constructor <init>(Lcom/mchsdk/paysdk/utils/Lolly;)V
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/paysdk/utils/Lolly$6;->a:Lcom/mchsdk/paysdk/utils/Lolly;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 8

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string v1, "logcat -c"

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string v1, "logcat -v time"

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const-string v3, ""

    :goto_23
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3e

    iget-object v4, p0, Lcom/mchsdk/paysdk/utils/Lolly$6;->a:Lcom/mchsdk/paysdk/utils/Lolly;

    invoke-static {v4}, Lcom/mchsdk/paysdk/utils/Lolly;->i(Lcom/mchsdk/paysdk/utils/Lolly;)Z

    move-result v4

    if-eqz v4, :cond_3e

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    invoke-virtual {p0, v4}, Lcom/mchsdk/paysdk/utils/Lolly$6;->publishProgress([Ljava/lang/Object;)V

    goto :goto_23

    :catch_3b
    move-exception v0

    :cond_3c
    :goto_3c
    const/4 v0, 0x0

    return-object v0

    :cond_3e
    if-eqz v2, :cond_43

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    :cond_43
    if-eqz v1, :cond_48

    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V

    :cond_48
    if-eqz v0, :cond_3c

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4d} :catch_3b

    goto :goto_3c
.end method

.method protected varargs a([Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    aget-object v0, p1, v0

    sget-object v1, Lcom/mchsdk/paysdk/utils/Lolly;->a:Lcom/mchsdk/paysdk/utils/Lolly$a;

    invoke-virtual {v1, v0}, Lcom/mchsdk/paysdk/utils/Lolly$a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly$6;->a:Lcom/mchsdk/paysdk/utils/Lolly;

    invoke-static {v0}, Lcom/mchsdk/paysdk/utils/Lolly;->c(Lcom/mchsdk/paysdk/utils/Lolly;)Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/mchsdk/paysdk/utils/Lolly$6$1;

    invoke-direct {v1, p0}, Lcom/mchsdk/paysdk/utils/Lolly$6$1;-><init>(Lcom/mchsdk/paysdk/utils/Lolly$6;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    :cond_19
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/mchsdk/paysdk/utils/Lolly$6;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onProgressUpdate([Ljava/lang/Object;)V
    .registers 2

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/mchsdk/paysdk/utils/Lolly$6;->a([Ljava/lang/String;)V

    return-void
.end method
