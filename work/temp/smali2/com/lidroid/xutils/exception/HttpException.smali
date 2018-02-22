.class public Lcom/lidroid/xutils/exception/HttpException;
.super Lcom/lidroid/xutils/exception/BaseException;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private exceptionCode:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/lidroid/xutils/exception/BaseException;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Lcom/lidroid/xutils/exception/BaseException;-><init>()V

    iput p1, p0, Lcom/lidroid/xutils/exception/HttpException;->exceptionCode:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p2}, Lcom/lidroid/xutils/exception/BaseException;-><init>(Ljava/lang/String;)V

    iput p1, p0, Lcom/lidroid/xutils/exception/HttpException;->exceptionCode:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    invoke-direct {p0, p2, p3}, Lcom/lidroid/xutils/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput p1, p0, Lcom/lidroid/xutils/exception/HttpException;->exceptionCode:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/Throwable;)V
    .registers 3

    invoke-direct {p0, p2}, Lcom/lidroid/xutils/exception/BaseException;-><init>(Ljava/lang/Throwable;)V

    iput p1, p0, Lcom/lidroid/xutils/exception/HttpException;->exceptionCode:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/lidroid/xutils/exception/BaseException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/lidroid/xutils/exception/BaseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/lidroid/xutils/exception/BaseException;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public getExceptionCode()I
    .registers 2

    iget v0, p0, Lcom/lidroid/xutils/exception/HttpException;->exceptionCode:I

    return v0
.end method
