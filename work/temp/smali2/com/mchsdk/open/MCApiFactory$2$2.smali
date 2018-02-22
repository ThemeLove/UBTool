.class Lcom/mchsdk/open/MCApiFactory$2$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mchsdk/open/MCApiFactory$2;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mchsdk/open/MCApiFactory$2;


# direct methods
.method constructor <init>(Lcom/mchsdk/open/MCApiFactory$2;)V
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/open/MCApiFactory$2$2;->a:Lcom/mchsdk/open/MCApiFactory$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 8

    iget-object v0, p0, Lcom/mchsdk/open/MCApiFactory$2$2;->a:Lcom/mchsdk/open/MCApiFactory$2;

    iget-object v0, v0, Lcom/mchsdk/open/MCApiFactory$2;->a:Lcom/mchsdk/open/MCApiFactory;

    # getter for: Lcom/mchsdk/open/MCApiFactory;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/mchsdk/open/MCApiFactory;->access$000(Lcom/mchsdk/open/MCApiFactory;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u8df3\u8f6c\u4e0b\u8f7d\u9875\u9762"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/mchsdk/open/MCApiFactory$2$2;->a:Lcom/mchsdk/open/MCApiFactory$2;

    iget-object v0, v0, Lcom/mchsdk/open/MCApiFactory$2;->a:Lcom/mchsdk/open/MCApiFactory;

    invoke-virtual {v0}, Lcom/mchsdk/open/MCApiFactory;->getGameName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/app/DownloadManager$Request;

    iget-object v2, p0, Lcom/mchsdk/open/MCApiFactory$2$2;->a:Lcom/mchsdk/open/MCApiFactory$2;

    iget-object v2, v2, Lcom/mchsdk/open/MCApiFactory$2;->a:Lcom/mchsdk/open/MCApiFactory;

    iget-object v2, v2, Lcom/mchsdk/open/MCApiFactory;->return_msg:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    invoke-virtual {v1, v0}, Landroid/app/DownloadManager$Request;->setTitle(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".apk"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/DownloadManager$Request;->setDescription(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ".apk"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/DownloadManager$Request;->setDestinationUri(Landroid/net/Uri;)Landroid/app/DownloadManager$Request;

    iget-object v0, p0, Lcom/mchsdk/open/MCApiFactory$2$2;->a:Lcom/mchsdk/open/MCApiFactory$2;

    iget-object v0, v0, Lcom/mchsdk/open/MCApiFactory$2;->a:Lcom/mchsdk/open/MCApiFactory;

    # getter for: Lcom/mchsdk/open/MCApiFactory;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/mchsdk/open/MCApiFactory;->access$000(Lcom/mchsdk/open/MCApiFactory;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "download"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    invoke-virtual {v0, v1}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    return-void
.end method
