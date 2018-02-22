.class public Lcom/mchsdk/open/GPUserResult;
.super Ljava/lang/Object;


# static fields
.field public static final USER_RESULT_LOGIN_FAIL:I = -0x1

.field public static final USER_RESULT_LOGIN_SUCC:I = 0x1


# instance fields
.field private account:Ljava/lang/String;

.field private accountNo:Ljava/lang/String;

.field private mErrCode:I

.field private sign:Ljava/lang/String;

.field private timeStamp:Ljava/lang/String;

.field private token:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccount()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/mchsdk/open/GPUserResult;->account:Ljava/lang/String;

    return-object v0
.end method

.method public getAccountNo()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/mchsdk/open/GPUserResult;->accountNo:Ljava/lang/String;

    return-object v0
.end method

.method public getSign()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/mchsdk/open/GPUserResult;->sign:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeStamp()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/mchsdk/open/GPUserResult;->timeStamp:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/mchsdk/open/GPUserResult;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getmErrCode()I
    .registers 2

    iget v0, p0, Lcom/mchsdk/open/GPUserResult;->mErrCode:I

    return v0
.end method

.method public setAccount(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/open/GPUserResult;->account:Ljava/lang/String;

    return-void
.end method

.method public setAccountNo(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/open/GPUserResult;->accountNo:Ljava/lang/String;

    return-void
.end method

.method public setSign(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/open/GPUserResult;->sign:Ljava/lang/String;

    return-void
.end method

.method public setTimeStamp(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/open/GPUserResult;->timeStamp:Ljava/lang/String;

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/open/GPUserResult;->token:Ljava/lang/String;

    return-void
.end method

.method public setmErrCode(I)V
    .registers 2

    iput p1, p0, Lcom/mchsdk/open/GPUserResult;->mErrCode:I

    return-void
.end method
