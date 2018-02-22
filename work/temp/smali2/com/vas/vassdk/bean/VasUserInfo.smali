.class public Lcom/vas/vassdk/bean/VasUserInfo;
.super Ljava/lang/Object;
.source "VasUserInfo.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getExtra()Ljava/lang/String;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/vas/vassdk/bean/VasUserInfo;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/vas/vassdk/bean/VasUserInfo;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .registers 2

    .prologue
    .line 16
    iget-object v0, p0, Lcom/vas/vassdk/bean/VasUserInfo;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/vas/vassdk/bean/VasUserInfo;->b:Ljava/lang/String;

    return-object v0
.end method

.method public setExtra(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 52
    iput-object p1, p0, Lcom/vas/vassdk/bean/VasUserInfo;->d:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 42
    iput-object p1, p0, Lcom/vas/vassdk/bean/VasUserInfo;->c:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 21
    iput-object p1, p0, Lcom/vas/vassdk/bean/VasUserInfo;->a:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 31
    iput-object p1, p0, Lcom/vas/vassdk/bean/VasUserInfo;->b:Ljava/lang/String;

    .line 32
    return-void
.end method
