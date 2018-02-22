.class public Lokhttp3/v;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/v$a;
    }
.end annotation


# static fields
.field private static final A:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokhttp3/l;",
            ">;"
        }
    .end annotation
.end field

.field private static final z:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokhttp3/w;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final a:Lokhttp3/o;

.field final b:Ljava/net/Proxy;

.field final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokhttp3/w;",
            ">;"
        }
    .end annotation
.end field

.field final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokhttp3/l;",
            ">;"
        }
    .end annotation
.end field

.field final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokhttp3/t;",
            ">;"
        }
    .end annotation
.end field

.field final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokhttp3/t;",
            ">;"
        }
    .end annotation
.end field

.field final g:Ljava/net/ProxySelector;

.field final h:Lokhttp3/n;

.field final i:Lokhttp3/c;

.field final j:Lokhttp3/internal/cache/InternalCache;

.field final k:Ljavax/net/SocketFactory;

.field final l:Ljavax/net/ssl/SSLSocketFactory;

.field final m:Lokhttp3/internal/tls/CertificateChainCleaner;

.field final n:Ljavax/net/ssl/HostnameVerifier;

.field final o:Lokhttp3/g;

.field final p:Lokhttp3/b;

.field final q:Lokhttp3/b;

.field final r:Lokhttp3/k;

.field final s:Lokhttp3/p;

.field final t:Z

.field final u:Z

.field final v:Z

.field final w:I

.field final x:I

.field final y:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v5, [Lokhttp3/w;

    sget-object v1, Lokhttp3/w;->d:Lokhttp3/w;

    aput-object v1, v0, v2

    sget-object v1, Lokhttp3/w;->c:Lokhttp3/w;

    aput-object v1, v0, v3

    sget-object v1, Lokhttp3/w;->b:Lokhttp3/w;

    aput-object v1, v0, v4

    invoke-static {v0}, Lokhttp3/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lokhttp3/v;->z:Ljava/util/List;

    new-array v0, v5, [Lokhttp3/l;

    sget-object v1, Lokhttp3/l;->a:Lokhttp3/l;

    aput-object v1, v0, v2

    sget-object v1, Lokhttp3/l;->b:Lokhttp3/l;

    aput-object v1, v0, v3

    sget-object v1, Lokhttp3/l;->c:Lokhttp3/l;

    aput-object v1, v0, v4

    invoke-static {v0}, Lokhttp3/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lokhttp3/v;->A:Ljava/util/List;

    new-instance v0, Lokhttp3/v$1;

    invoke-direct {v0}, Lokhttp3/v$1;-><init>()V

    sput-object v0, Lokhttp3/internal/Internal;->instance:Lokhttp3/internal/Internal;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    new-instance v0, Lokhttp3/v$a;

    invoke-direct {v0}, Lokhttp3/v$a;-><init>()V

    invoke-direct {p0, v0}, Lokhttp3/v;-><init>(Lokhttp3/v$a;)V

    return-void
.end method

.method private constructor <init>(Lokhttp3/v$a;)V
    .registers 6

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lokhttp3/v$a;->a:Lokhttp3/o;

    iput-object v0, p0, Lokhttp3/v;->a:Lokhttp3/o;

    iget-object v0, p1, Lokhttp3/v$a;->b:Ljava/net/Proxy;

    iput-object v0, p0, Lokhttp3/v;->b:Ljava/net/Proxy;

    iget-object v0, p1, Lokhttp3/v$a;->c:Ljava/util/List;

    iput-object v0, p0, Lokhttp3/v;->c:Ljava/util/List;

    iget-object v0, p1, Lokhttp3/v$a;->d:Ljava/util/List;

    iput-object v0, p0, Lokhttp3/v;->d:Ljava/util/List;

    iget-object v0, p1, Lokhttp3/v$a;->e:Ljava/util/List;

    invoke-static {v0}, Lokhttp3/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/v;->e:Ljava/util/List;

    iget-object v0, p1, Lokhttp3/v$a;->f:Ljava/util/List;

    invoke-static {v0}, Lokhttp3/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/v;->f:Ljava/util/List;

    iget-object v0, p1, Lokhttp3/v$a;->g:Ljava/net/ProxySelector;

    iput-object v0, p0, Lokhttp3/v;->g:Ljava/net/ProxySelector;

    iget-object v0, p1, Lokhttp3/v$a;->h:Lokhttp3/n;

    iput-object v0, p0, Lokhttp3/v;->h:Lokhttp3/n;

    iget-object v0, p1, Lokhttp3/v$a;->i:Lokhttp3/c;

    iput-object v0, p0, Lokhttp3/v;->i:Lokhttp3/c;

    iget-object v0, p1, Lokhttp3/v$a;->j:Lokhttp3/internal/cache/InternalCache;

    iput-object v0, p0, Lokhttp3/v;->j:Lokhttp3/internal/cache/InternalCache;

    iget-object v0, p1, Lokhttp3/v$a;->k:Ljavax/net/SocketFactory;

    iput-object v0, p0, Lokhttp3/v;->k:Ljavax/net/SocketFactory;

    iget-object v0, p0, Lokhttp3/v;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_3f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_58

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/l;

    if-nez v1, :cond_53

    invoke-virtual {v0}, Lokhttp3/l;->a()Z

    move-result v0

    if-eqz v0, :cond_56

    :cond_53
    const/4 v0, 0x1

    :goto_54
    move v1, v0

    goto :goto_3f

    :cond_56
    move v0, v2

    goto :goto_54

    :cond_58
    iget-object v0, p1, Lokhttp3/v$a;->l:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_5e

    if-nez v1, :cond_9d

    :cond_5e
    iget-object v0, p1, Lokhttp3/v$a;->l:Ljavax/net/ssl/SSLSocketFactory;

    iput-object v0, p0, Lokhttp3/v;->l:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v0, p1, Lokhttp3/v$a;->m:Lokhttp3/internal/tls/CertificateChainCleaner;

    iput-object v0, p0, Lokhttp3/v;->m:Lokhttp3/internal/tls/CertificateChainCleaner;

    :goto_66
    iget-object v0, p1, Lokhttp3/v$a;->n:Ljavax/net/ssl/HostnameVerifier;

    iput-object v0, p0, Lokhttp3/v;->n:Ljavax/net/ssl/HostnameVerifier;

    iget-object v0, p1, Lokhttp3/v$a;->o:Lokhttp3/g;

    iget-object v1, p0, Lokhttp3/v;->m:Lokhttp3/internal/tls/CertificateChainCleaner;

    invoke-virtual {v0, v1}, Lokhttp3/g;->a(Lokhttp3/internal/tls/CertificateChainCleaner;)Lokhttp3/g;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/v;->o:Lokhttp3/g;

    iget-object v0, p1, Lokhttp3/v$a;->p:Lokhttp3/b;

    iput-object v0, p0, Lokhttp3/v;->p:Lokhttp3/b;

    iget-object v0, p1, Lokhttp3/v$a;->q:Lokhttp3/b;

    iput-object v0, p0, Lokhttp3/v;->q:Lokhttp3/b;

    iget-object v0, p1, Lokhttp3/v$a;->r:Lokhttp3/k;

    iput-object v0, p0, Lokhttp3/v;->r:Lokhttp3/k;

    iget-object v0, p1, Lokhttp3/v$a;->s:Lokhttp3/p;

    iput-object v0, p0, Lokhttp3/v;->s:Lokhttp3/p;

    iget-boolean v0, p1, Lokhttp3/v$a;->t:Z

    iput-boolean v0, p0, Lokhttp3/v;->t:Z

    iget-boolean v0, p1, Lokhttp3/v$a;->u:Z

    iput-boolean v0, p0, Lokhttp3/v;->u:Z

    iget-boolean v0, p1, Lokhttp3/v$a;->v:Z

    iput-boolean v0, p0, Lokhttp3/v;->v:Z

    iget v0, p1, Lokhttp3/v$a;->w:I

    iput v0, p0, Lokhttp3/v;->w:I

    iget v0, p1, Lokhttp3/v$a;->x:I

    iput v0, p0, Lokhttp3/v;->x:I

    iget v0, p1, Lokhttp3/v$a;->y:I

    iput v0, p0, Lokhttp3/v;->y:I

    return-void

    :cond_9d
    invoke-direct {p0}, Lokhttp3/v;->z()Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    invoke-direct {p0, v0}, Lokhttp3/v;->a(Ljavax/net/ssl/X509TrustManager;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    iput-object v1, p0, Lokhttp3/v;->l:Ljavax/net/ssl/SSLSocketFactory;

    invoke-static {v0}, Lokhttp3/internal/tls/CertificateChainCleaner;->get(Ljavax/net/ssl/X509TrustManager;)Lokhttp3/internal/tls/CertificateChainCleaner;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/v;->m:Lokhttp3/internal/tls/CertificateChainCleaner;

    goto :goto_66
.end method

.method synthetic constructor <init>(Lokhttp3/v$a;Lokhttp3/v$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lokhttp3/v;-><init>(Lokhttp3/v$a;)V

    return-void
.end method

.method private a(Ljavax/net/ssl/X509TrustManager;)Ljavax/net/ssl/SSLSocketFactory;
    .registers 6

    :try_start_0
    const-string v0, "TLS"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljavax/net/ssl/TrustManager;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    :try_end_14
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_14} :catch_16

    move-result-object v0

    return-object v0

    :catch_16
    move-exception v0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method static synthetic x()Ljava/util/List;
    .registers 1

    sget-object v0, Lokhttp3/v;->z:Ljava/util/List;

    return-object v0
.end method

.method static synthetic y()Ljava/util/List;
    .registers 1

    sget-object v0, Lokhttp3/v;->A:Ljava/util/List;

    return-object v0
.end method

.method private z()Ljavax/net/ssl/X509TrustManager;
    .registers 5

    :try_start_0
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v1

    const/4 v0, 0x0

    check-cast v0, Ljava/security/KeyStore;

    invoke-virtual {v1, v0}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    invoke-virtual {v1}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1d

    const/4 v1, 0x0

    aget-object v1, v0, v1

    instance-of v1, v1, Ljavax/net/ssl/X509TrustManager;

    if-nez v1, :cond_41

    :cond_1d
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected default trust managers:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3a
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_3a} :catch_3a

    :catch_3a
    move-exception v0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_41
    const/4 v1, 0x0

    :try_start_42
    aget-object v0, v0, v1

    check-cast v0, Ljavax/net/ssl/X509TrustManager;
    :try_end_46
    .catch Ljava/security/GeneralSecurityException; {:try_start_42 .. :try_end_46} :catch_3a

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lokhttp3/v;->w:I

    return v0
.end method

.method public a(Lokhttp3/y;)Lokhttp3/e;
    .registers 3

    new-instance v0, Lokhttp3/x;

    invoke-direct {v0, p0, p1}, Lokhttp3/x;-><init>(Lokhttp3/v;Lokhttp3/y;)V

    return-object v0
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lokhttp3/v;->x:I

    return v0
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lokhttp3/v;->y:I

    return v0
.end method

.method public d()Ljava/net/Proxy;
    .registers 2

    iget-object v0, p0, Lokhttp3/v;->b:Ljava/net/Proxy;

    return-object v0
.end method

.method public e()Ljava/net/ProxySelector;
    .registers 2

    iget-object v0, p0, Lokhttp3/v;->g:Ljava/net/ProxySelector;

    return-object v0
.end method

.method public f()Lokhttp3/n;
    .registers 2

    iget-object v0, p0, Lokhttp3/v;->h:Lokhttp3/n;

    return-object v0
.end method

.method g()Lokhttp3/internal/cache/InternalCache;
    .registers 2

    iget-object v0, p0, Lokhttp3/v;->i:Lokhttp3/c;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lokhttp3/v;->i:Lokhttp3/c;

    iget-object v0, v0, Lokhttp3/c;->a:Lokhttp3/internal/cache/InternalCache;

    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p0, Lokhttp3/v;->j:Lokhttp3/internal/cache/InternalCache;

    goto :goto_8
.end method

.method public h()Lokhttp3/p;
    .registers 2

    iget-object v0, p0, Lokhttp3/v;->s:Lokhttp3/p;

    return-object v0
.end method

.method public i()Ljavax/net/SocketFactory;
    .registers 2

    iget-object v0, p0, Lokhttp3/v;->k:Ljavax/net/SocketFactory;

    return-object v0
.end method

.method public j()Ljavax/net/ssl/SSLSocketFactory;
    .registers 2

    iget-object v0, p0, Lokhttp3/v;->l:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public k()Ljavax/net/ssl/HostnameVerifier;
    .registers 2

    iget-object v0, p0, Lokhttp3/v;->n:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method public l()Lokhttp3/g;
    .registers 2

    iget-object v0, p0, Lokhttp3/v;->o:Lokhttp3/g;

    return-object v0
.end method

.method public m()Lokhttp3/b;
    .registers 2

    iget-object v0, p0, Lokhttp3/v;->q:Lokhttp3/b;

    return-object v0
.end method

.method public n()Lokhttp3/b;
    .registers 2

    iget-object v0, p0, Lokhttp3/v;->p:Lokhttp3/b;

    return-object v0
.end method

.method public o()Lokhttp3/k;
    .registers 2

    iget-object v0, p0, Lokhttp3/v;->r:Lokhttp3/k;

    return-object v0
.end method

.method public p()Z
    .registers 2

    iget-boolean v0, p0, Lokhttp3/v;->t:Z

    return v0
.end method

.method public q()Z
    .registers 2

    iget-boolean v0, p0, Lokhttp3/v;->u:Z

    return v0
.end method

.method public r()Z
    .registers 2

    iget-boolean v0, p0, Lokhttp3/v;->v:Z

    return v0
.end method

.method public s()Lokhttp3/o;
    .registers 2

    iget-object v0, p0, Lokhttp3/v;->a:Lokhttp3/o;

    return-object v0
.end method

.method public t()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lokhttp3/w;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/v;->c:Ljava/util/List;

    return-object v0
.end method

.method public u()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lokhttp3/l;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/v;->d:Ljava/util/List;

    return-object v0
.end method

.method public v()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lokhttp3/t;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/v;->e:Ljava/util/List;

    return-object v0
.end method

.method public w()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lokhttp3/t;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/v;->f:Ljava/util/List;

    return-object v0
.end method
