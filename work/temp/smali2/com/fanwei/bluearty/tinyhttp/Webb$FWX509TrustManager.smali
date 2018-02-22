.class public Lcom/fanwei/bluearty/tinyhttp/Webb$FWX509TrustManager;
.super Ljava/lang/Object;

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fanwei/bluearty/tinyhttp/Webb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FWX509TrustManager"
.end annotation


# instance fields
.field private mFanweiPubKey:Ljava/lang/String;

.field final synthetic this$0:Lcom/fanwei/bluearty/tinyhttp/Webb;


# direct methods
.method public constructor <init>(Lcom/fanwei/bluearty/tinyhttp/Webb;)V
    .registers 3

    iput-object p1, p0, Lcom/fanwei/bluearty/tinyhttp/Webb$FWX509TrustManager;->this$0:Lcom/fanwei/bluearty/tinyhttp/Webb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "30820122300d06092a864886f70d01010105000382010f003082010a0282010100d382a1e93b08fe7e46c6643258f9110a8a72e23d75fecab5824c3ec1252a02c6ccc40c2cc62fccb63a2f7db4166679e17d1a877bee4298c177c4693ae88e0eacbb0a0413431d43b2afc1897532d719af785b6ec9559ec2dc2a3eecc12f91455949dbe8e31254881f5e9d578a75cdcf96a1a076ae19d76702b57ffcdea1b03261d99e38ac62bd80d91c6410194894f2525dda7933c2bf60e5fa6b1b7292053bfa9dcec916fc95e95028669184ab862a60f4d133edddd7ad14f5df5275478d58180cd7425080ca6fd39a336256989b89ffd200a1efe06df5c0ac72287dafef4c0afc92c27739bfa5a7476c927b5c180c27685bc01aa09406e439dd379e2f6b5fe10203010001"

    iput-object v0, p0, Lcom/fanwei/bluearty/tinyhttp/Webb$FWX509TrustManager;->mFanweiPubKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .registers 8

    const/4 v2, 0x0

    const-string v0, "checkServerTrusted start "

    invoke-static {v0}, Lcom/fanwei/bluearty/tinyhttp/Const;->print(Ljava/lang/String;)V

    if-eqz p1, :cond_a

    if-nez p2, :cond_12

    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "checkServerTrusted: params wrong"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    array-length v0, p1

    if-gtz v0, :cond_1d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "checkServerTrusted: X509Certificate is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1d
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "rsa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_31

    new-instance v0, Ljava/security/cert/CertificateException;

    const-string v1, "checkServerTrusted: AuthType is not RSA"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_31
    :try_start_31
    const-string v0, "X509"

    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v1

    const/4 v0, 0x0

    check-cast v0, Ljava/security/KeyStore;

    invoke-virtual {v1, v0}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    invoke-virtual {v1}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v3

    array-length v4, v3

    move v1, v2

    :goto_43
    if-ge v1, v4, :cond_5b

    aget-object v0, v3, v1

    check-cast v0, Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_4c} :catch_50

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_43

    :catch_50
    move-exception v0

    new-instance v1, Ljava/security/cert/CertificateException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5b
    const-string v0, "checkServerTrusted system check ok"

    invoke-static {v0}, Lcom/fanwei/bluearty/tinyhttp/Const;->print(Ljava/lang/String;)V

    aget-object v0, p1, v2

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    check-cast v0, Ljava/security/interfaces/RSAPublicKey;

    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-interface {v0}, Ljava/security/interfaces/RSAPublicKey;->getEncoded()[B

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkServerTrusted key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fanwei/bluearty/tinyhttp/Const;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/fanwei/bluearty/tinyhttp/Webb$FWX509TrustManager;->mFanweiPubKey:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_bb

    new-instance v1, Ljava/security/cert/CertificateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkServerTrusted: Expected public key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/fanwei/bluearty/tinyhttp/Webb$FWX509TrustManager;->mFanweiPubKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", got public key:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_bb
    const-string v0, "checkServerTrusted success"

    invoke-static {v0}, Lcom/fanwei/bluearty/tinyhttp/Const;->print(Ljava/lang/String;)V

    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method
