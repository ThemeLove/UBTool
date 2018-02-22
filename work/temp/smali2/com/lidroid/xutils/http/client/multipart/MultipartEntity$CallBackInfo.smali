.class public Lcom/lidroid/xutils/http/client/multipart/MultipartEntity$CallBackInfo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lidroid/xutils/http/client/multipart/MultipartEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CallBackInfo"
.end annotation


# static fields
.field public static final DEFAULT:Lcom/lidroid/xutils/http/client/multipart/MultipartEntity$CallBackInfo;


# instance fields
.field public callBackHandler:Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;

.field public pos:J

.field public totalLength:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity$CallBackInfo;

    invoke-direct {v0}, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity$CallBackInfo;-><init>()V

    sput-object v0, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity$CallBackInfo;->DEFAULT:Lcom/lidroid/xutils/http/client/multipart/MultipartEntity$CallBackInfo;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    const-wide/16 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity$CallBackInfo;->callBackHandler:Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;

    iput-wide v1, p0, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity$CallBackInfo;->totalLength:J

    iput-wide v1, p0, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity$CallBackInfo;->pos:J

    return-void
.end method


# virtual methods
.method public doCallBack(Z)Z
    .registers 8

    iget-object v0, p0, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity$CallBackInfo;->callBackHandler:Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity$CallBackInfo;->callBackHandler:Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;

    iget-wide v1, p0, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity$CallBackInfo;->totalLength:J

    iget-wide v3, p0, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity$CallBackInfo;->pos:J

    move v5, p1

    invoke-interface/range {v0 .. v5}, Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;->updateProgress(JJZ)Z

    move-result v0

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x1

    goto :goto_f
.end method
