.class public Lcom/vas/vassdk/bean/VasOrderInfo;
.super Ljava/lang/Object;
.source "VasOrderInfo.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:I

.field private h:D

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAmount()D
    .registers 3

    .prologue
    .line 102
    iget-wide v0, p0, Lcom/vas/vassdk/bean/VasOrderInfo;->h:D

    return-wide v0
.end method

.method public getCallbackUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/vas/vassdk/bean/VasOrderInfo;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 92
    iget v0, p0, Lcom/vas/vassdk/bean/VasOrderInfo;->g:I

    return v0
.end method

.method public getCpOrderId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/vas/vassdk/bean/VasOrderInfo;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getExternalParams()Ljava/lang/String;
    .registers 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/vas/vassdk/bean/VasOrderInfo;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getExtrasParams()Ljava/lang/String;
    .registers 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/vas/vassdk/bean/VasOrderInfo;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getGoodsDesc()Ljava/lang/String;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/vas/vassdk/bean/VasOrderInfo;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getGoodsId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/vas/vassdk/bean/VasOrderInfo;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getGoodsName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/vas/vassdk/bean/VasOrderInfo;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/vas/vassdk/bean/VasOrderInfo;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getQuantifier()Ljava/lang/String;
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/vas/vassdk/bean/VasOrderInfo;->d:Ljava/lang/String;

    return-object v0
.end method

.method public setAmount(D)V
    .registers 3

    .prologue
    .line 107
    iput-wide p1, p0, Lcom/vas/vassdk/bean/VasOrderInfo;->h:D

    .line 108
    return-void
.end method

.method public setCallbackUrl(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 117
    iput-object p1, p0, Lcom/vas/vassdk/bean/VasOrderInfo;->i:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public setCount(I)V
    .registers 2

    .prologue
    .line 97
    iput p1, p0, Lcom/vas/vassdk/bean/VasOrderInfo;->g:I

    .line 98
    return-void
.end method

.method public setCpOrderId(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 77
    iput-object p1, p0, Lcom/vas/vassdk/bean/VasOrderInfo;->e:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setExternalParams(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 137
    iput-object p1, p0, Lcom/vas/vassdk/bean/VasOrderInfo;->k:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public setExtrasParams(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 127
    iput-object p1, p0, Lcom/vas/vassdk/bean/VasOrderInfo;->j:Ljava/lang/String;

    .line 128
    return-void
.end method

.method public setGoodsDesc(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 57
    iput-object p1, p0, Lcom/vas/vassdk/bean/VasOrderInfo;->c:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setGoodsId(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 37
    iput-object p1, p0, Lcom/vas/vassdk/bean/VasOrderInfo;->a:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setGoodsName(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 47
    iput-object p1, p0, Lcom/vas/vassdk/bean/VasOrderInfo;->b:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setOrderId(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 147
    iput-object p1, p0, Lcom/vas/vassdk/bean/VasOrderInfo;->f:Ljava/lang/String;

    .line 148
    return-void
.end method

.method public setQuantifier(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 67
    iput-object p1, p0, Lcom/vas/vassdk/bean/VasOrderInfo;->d:Ljava/lang/String;

    .line 68
    return-void
.end method
