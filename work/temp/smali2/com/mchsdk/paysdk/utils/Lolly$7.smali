.class Lcom/mchsdk/paysdk/utils/Lolly$7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mchsdk/paysdk/utils/Lolly;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mchsdk/paysdk/utils/Lolly;


# direct methods
.method constructor <init>(Lcom/mchsdk/paysdk/utils/Lolly;)V
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/paysdk/utils/Lolly$7;->a:Lcom/mchsdk/paysdk/utils/Lolly;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly$7;->a:Lcom/mchsdk/paysdk/utils/Lolly;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/Lolly;->b(Lcom/mchsdk/paysdk/utils/Lolly;Z)Z

    sget-object v0, Lcom/mchsdk/paysdk/utils/Lolly;->a:Lcom/mchsdk/paysdk/utils/Lolly$a;

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/utils/Lolly$a;->a()Ljava/util/List;

    move-result-object v3

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    const-string v4, "/SDK3.0"

    invoke-direct {v1, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_21

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    :cond_21
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v4, "yy-MM-dd-HH:mm:ss:SSS"

    invoke-direct {v0, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/sdk-log-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ".txt"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v0, "Lolly"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "log Path = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_6e
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    new-instance v4, Ljava/io/OutputStreamWriter;

    invoke-direct {v4, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    new-instance v6, Ljava/io/BufferedWriter;

    invoke-direct {v6, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    move v1, v2

    :goto_7e
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_a4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "\n"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7e

    :cond_a4
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->close()V

    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_ad
    .catch Ljava/io/FileNotFoundException; {:try_start_6e .. :try_end_ad} :catch_b3
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_ad} :catch_bd
    .catchall {:try_start_6e .. :try_end_ad} :catchall_c7

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly$7;->a:Lcom/mchsdk/paysdk/utils/Lolly;

    invoke-static {v0, v2}, Lcom/mchsdk/paysdk/utils/Lolly;->b(Lcom/mchsdk/paysdk/utils/Lolly;Z)Z

    :goto_b2
    return-void

    :catch_b3
    move-exception v0

    :try_start_b4
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_b7
    .catchall {:try_start_b4 .. :try_end_b7} :catchall_c7

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly$7;->a:Lcom/mchsdk/paysdk/utils/Lolly;

    invoke-static {v0, v2}, Lcom/mchsdk/paysdk/utils/Lolly;->b(Lcom/mchsdk/paysdk/utils/Lolly;Z)Z

    goto :goto_b2

    :catch_bd
    move-exception v0

    :try_start_be
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_c1
    .catchall {:try_start_be .. :try_end_c1} :catchall_c7

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly$7;->a:Lcom/mchsdk/paysdk/utils/Lolly;

    invoke-static {v0, v2}, Lcom/mchsdk/paysdk/utils/Lolly;->b(Lcom/mchsdk/paysdk/utils/Lolly;Z)Z

    goto :goto_b2

    :catchall_c7
    move-exception v0

    iget-object v1, p0, Lcom/mchsdk/paysdk/utils/Lolly$7;->a:Lcom/mchsdk/paysdk/utils/Lolly;

    invoke-static {v1, v2}, Lcom/mchsdk/paysdk/utils/Lolly;->b(Lcom/mchsdk/paysdk/utils/Lolly;Z)Z

    throw v0
.end method
