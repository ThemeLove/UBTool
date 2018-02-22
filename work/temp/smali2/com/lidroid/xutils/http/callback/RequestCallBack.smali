.class public abstract Lcom/lidroid/xutils/http/callback/RequestCallBack;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DEFAULT_RATE:I = 0x3e8

.field private static final MIN_RATE:I = 0xc8


# instance fields
.field private rate:I

.field private requestUrl:Ljava/lang/String;

.field protected userTag:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/lidroid/xutils/http/callback/RequestCallBack;->rate:I

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/lidroid/xutils/http/callback/RequestCallBack;->rate:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/lidroid/xutils/http/callback/RequestCallBack;->rate:I

    iput-object p2, p0, Lcom/lidroid/xutils/http/callback/RequestCallBack;->userTag:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/lidroid/xutils/http/callback/RequestCallBack;->rate:I

    iput-object p1, p0, Lcom/lidroid/xutils/http/callback/RequestCallBack;->userTag:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final getRate()I
    .registers 3

    const/16 v0, 0xc8

    iget v1, p0, Lcom/lidroid/xutils/http/callback/RequestCallBack;->rate:I

    if-ge v1, v0, :cond_7

    :goto_6
    return v0

    :cond_7
    iget v0, p0, Lcom/lidroid/xutils/http/callback/RequestCallBack;->rate:I

    goto :goto_6
.end method

.method public final getRequestUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/lidroid/xutils/http/callback/RequestCallBack;->requestUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getUserTag()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/lidroid/xutils/http/callback/RequestCallBack;->userTag:Ljava/lang/Object;

    return-object v0
.end method

.method public onCancelled()V
    .registers 1

    return-void
.end method

.method public abstract onFailure(Lcom/lidroid/xutils/exception/HttpException;Ljava/lang/String;)V
.end method

.method public onLoading(JJZ)V
    .registers 6

    return-void
.end method

.method public onStart()V
    .registers 1

    return-void
.end method

.method public abstract onSuccess(Lcom/lidroid/xutils/http/ResponseInfo;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lidroid/xutils/http/ResponseInfo",
            "<TT;>;)V"
        }
    .end annotation
.end method

.method public final setRate(I)V
    .registers 2

    iput p1, p0, Lcom/lidroid/xutils/http/callback/RequestCallBack;->rate:I

    return-void
.end method

.method public final setRequestUrl(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/lidroid/xutils/http/callback/RequestCallBack;->requestUrl:Ljava/lang/String;

    return-void
.end method

.method public setUserTag(Ljava/lang/Object;)V
    .registers 2

    iput-object p1, p0, Lcom/lidroid/xutils/http/callback/RequestCallBack;->userTag:Ljava/lang/Object;

    return-void
.end method
