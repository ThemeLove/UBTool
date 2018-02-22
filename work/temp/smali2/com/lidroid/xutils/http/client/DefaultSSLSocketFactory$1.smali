.class Lcom/lidroid/xutils/http/client/DefaultSSLSocketFactory$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lidroid/xutils/http/client/DefaultSSLSocketFactory;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lidroid/xutils/http/client/DefaultSSLSocketFactory;


# direct methods
.method constructor <init>(Lcom/lidroid/xutils/http/client/DefaultSSLSocketFactory;)V
    .registers 2

    iput-object p1, p0, Lcom/lidroid/xutils/http/client/DefaultSSLSocketFactory$1;->this$0:Lcom/lidroid/xutils/http/client/DefaultSSLSocketFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method
