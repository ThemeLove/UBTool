.class public final Lokhttp3/i;
.super Ljava/lang/Object;


# static fields
.field public static final A:Lokhttp3/i;

.field public static final B:Lokhttp3/i;

.field public static final C:Lokhttp3/i;

.field public static final D:Lokhttp3/i;

.field public static final E:Lokhttp3/i;

.field public static final F:Lokhttp3/i;

.field public static final G:Lokhttp3/i;

.field public static final H:Lokhttp3/i;

.field public static final I:Lokhttp3/i;

.field public static final J:Lokhttp3/i;

.field public static final K:Lokhttp3/i;

.field public static final L:Lokhttp3/i;

.field public static final M:Lokhttp3/i;

.field public static final N:Lokhttp3/i;

.field public static final O:Lokhttp3/i;

.field public static final P:Lokhttp3/i;

.field public static final Q:Lokhttp3/i;

.field public static final R:Lokhttp3/i;

.field public static final S:Lokhttp3/i;

.field public static final T:Lokhttp3/i;

.field public static final U:Lokhttp3/i;

.field public static final V:Lokhttp3/i;

.field public static final W:Lokhttp3/i;

.field public static final X:Lokhttp3/i;

.field public static final Y:Lokhttp3/i;

.field public static final Z:Lokhttp3/i;

.field public static final a:Lokhttp3/i;

.field public static final aA:Lokhttp3/i;

.field public static final aB:Lokhttp3/i;

.field public static final aC:Lokhttp3/i;

.field public static final aD:Lokhttp3/i;

.field public static final aE:Lokhttp3/i;

.field public static final aF:Lokhttp3/i;

.field public static final aG:Lokhttp3/i;

.field public static final aH:Lokhttp3/i;

.field public static final aI:Lokhttp3/i;

.field public static final aJ:Lokhttp3/i;

.field public static final aK:Lokhttp3/i;

.field public static final aL:Lokhttp3/i;

.field public static final aM:Lokhttp3/i;

.field public static final aN:Lokhttp3/i;

.field public static final aO:Lokhttp3/i;

.field public static final aP:Lokhttp3/i;

.field public static final aQ:Lokhttp3/i;

.field public static final aR:Lokhttp3/i;

.field private static final aT:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Lokhttp3/i;",
            ">;"
        }
    .end annotation
.end field

.field public static final aa:Lokhttp3/i;

.field public static final ab:Lokhttp3/i;

.field public static final ac:Lokhttp3/i;

.field public static final ad:Lokhttp3/i;

.field public static final ae:Lokhttp3/i;

.field public static final af:Lokhttp3/i;

.field public static final ag:Lokhttp3/i;

.field public static final ah:Lokhttp3/i;

.field public static final ai:Lokhttp3/i;

.field public static final aj:Lokhttp3/i;

.field public static final ak:Lokhttp3/i;

.field public static final al:Lokhttp3/i;

.field public static final am:Lokhttp3/i;

.field public static final an:Lokhttp3/i;

.field public static final ao:Lokhttp3/i;

.field public static final ap:Lokhttp3/i;

.field public static final aq:Lokhttp3/i;

.field public static final ar:Lokhttp3/i;

.field public static final as:Lokhttp3/i;

.field public static final at:Lokhttp3/i;

.field public static final au:Lokhttp3/i;

.field public static final av:Lokhttp3/i;

.field public static final aw:Lokhttp3/i;

.field public static final ax:Lokhttp3/i;

.field public static final ay:Lokhttp3/i;

.field public static final az:Lokhttp3/i;

.field public static final b:Lokhttp3/i;

.field public static final c:Lokhttp3/i;

.field public static final d:Lokhttp3/i;

.field public static final e:Lokhttp3/i;

.field public static final f:Lokhttp3/i;

.field public static final g:Lokhttp3/i;

.field public static final h:Lokhttp3/i;

.field public static final i:Lokhttp3/i;

.field public static final j:Lokhttp3/i;

.field public static final k:Lokhttp3/i;

.field public static final l:Lokhttp3/i;

.field public static final m:Lokhttp3/i;

.field public static final n:Lokhttp3/i;

.field public static final o:Lokhttp3/i;

.field public static final p:Lokhttp3/i;

.field public static final q:Lokhttp3/i;

.field public static final r:Lokhttp3/i;

.field public static final s:Lokhttp3/i;

.field public static final t:Lokhttp3/i;

.field public static final u:Lokhttp3/i;

.field public static final v:Lokhttp3/i;

.field public static final w:Lokhttp3/i;

.field public static final x:Lokhttp3/i;

.field public static final y:Lokhttp3/i;

.field public static final z:Lokhttp3/i;


# instance fields
.field final aS:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    const/16 v8, 0xe

    const/16 v7, 0xa

    const/16 v6, 0x15

    const/4 v5, 0x6

    const/4 v4, 0x7

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lokhttp3/i;->aT:Ljava/util/concurrent/ConcurrentMap;

    const-string v0, "SSL_RSA_WITH_NULL_MD5"

    const/4 v1, 0x1

    const/16 v2, 0x147e

    invoke-static {v0, v1, v2, v5, v7}, Lokhttp3/i;->a(Ljava/lang/String;IIII)Lokhttp3/i;

    move-result-object v0

    sput-object v0, Lokhttp3/i;->a:Lokhttp3/i;

    const-string v0, "SSL_RSA_WITH_NULL_SHA"

    const/4 v1, 0x2

    const/16 v2, 0x147e

    invoke-static {v0, v1, v2, v5, v7}, Lokhttp3/i;->a(Ljava/lang/String;IIII)Lokhttp3/i;

    move-result-object v0

    sput-object v0, Lokhttp3/i;->b:Lokhttp3/i;

    const-string v0, "SSL_RSA_EXPORT_WITH_RC4_40_MD5"

    const/4 v1, 0x3

    const/16 v2, 0x10fa

    invoke-static {v0, v1, v2, v5, v7}, Lokhttp3/i;->a(Ljava/lang/String;IIII)Lokhttp3/i;

    move-result-object v0

    sput-object v0, Lokhttp3/i;->c:Lokhttp3/i;

    const-string v0, "SSL_RSA_WITH_RC4_128_MD5"

    const/4 v1, 0x4

    const/16 v2, 0x147e

    invoke-static {v0, v1, v2, v5, v7}, Lokhttp3/i;->a(Ljava/lang/String;IIII)Lokhttp3/i;

    move-result-object v0

    sput-object v0, Lokhttp3/i;->d:Lokhttp3/i;

    const-string v0, "SSL_RSA_WITH_RC4_128_SHA"

    const/4 v1, 0x5

    const/16 v2, 0x147e

    invoke-static {v0, v1, v2, v5, v7}, Lokhttp3/i;->a(Ljava/lang/String;IIII)Lokhttp3/i;

    move-result-object v0

    sput-object v0, Lokhttp3/i;->e:Lokhttp3/i;

    const-string v0, "SSL_RSA_EXPORT_WITH_DES40_CBC_SHA"

    const/16 v1, 0x8

    const/16 v2, 0x10fa

    invoke-static {v0, v1, v2, v5, v7}, Lokhttp3/i;->a(Ljava/lang/String;IIII)Lokhttp3/i;

    move-result-object v0

    sput-object v0, Lokhttp3/i;->f:Lokhttp3/i;

    const-string v0, "SSL_RSA_WITH_DES_CBC_SHA"

    const/16 v1, 0x9

    const/16 v2, 0x155d

    invoke-static {v0, v1, v2, v5, v7}, Lokhttp3/i;->a(Ljava/lang/String;IIII)Lokhttp3/i;

    move-result-object v0

    sput-object v0, Lokhttp3/i;->g:Lokhttp3/i;

    const-string v0, "SSL_RSA_WITH_3DES_EDE_CBC_SHA"

    const/16 v1, 0x147e

    invoke-static {v0, v7, v1, v5, v7}, Lokhttp3/i;->a(Ljava/lang/String;IIII)Lokhttp3/i;

    move-result-object v0

    sput-object v0, Lokhttp3/i;->h:Lokhttp3/i;

    const-string v0, "SSL_DHE_DSS_EXPORT_WITH_DES40_CBC_SHA"

    const/16 v1, 0x11

    const/16 v2, 0x10fa

    invoke-static {v0, v1, v2, v5, v7}, Lokhttp3/i;->a(Ljava/lang/String;IIII)Lokhttp3/i;

    move-result-object v0

    sput-object v0, Lokhttp3/i;->i:Lokhttp3/i;

    const-string v0, "SSL_DHE_DSS_WITH_DES_CBC_SHA"

    const/16 v1, 0x12

    const/16 v2, 0x155d

    invoke-static {v0, v1, v2, v5, v7}, Lokhttp3/i;->a(Ljava/lang/String;IIII)Lokhttp3/i;

    move-result-object v0

    sput-object v0, Lokhttp3/i;->j:Lokhttp3/i;

    const-string v0, "SSL_DHE_DSS_WITH_3DES_EDE_CBC_SHA"

    const/16 v1, 0x13

    const/16 v2, 0x147e

    invoke-static {v0, v1, v2, v5, v7}, Lokhttp3/i;->a(Ljava/lang/String;IIII)Lokhttp3/i;

    move-result-object v0

    sput-object v0, Lokhttp3/i;->k:Lokhttp3/i;

    const-string v0, "SSL_DHE_RSA_EXPORT_WITH_DES40_CBC_SHA"

    const/16 v1, 0x14

    const/16 v2, 0x10fa

    invoke-static {v0, v1, v2, v5, v7}, Lokhttp3/i;->a(Ljava/lang/String;IIII)Lokhttp3/i;

    move-result-object v0

    sput-object v0, Lokhttp3/i;->l:Lokhttp3/i;

    const-string v0, "SSL_DHE_RSA_WITH_DES_CBC_SHA"

    const/16 v1, 0x155d

    invoke-static {v0, v6, v1, v5, v7}, Lokhttp3/i;->a(Ljava/lang/String;IIII)Lokhttp3/i;

    move-result-object v0

    sput-object v0, Lokhttp3/i;->m:Lokhttp3/i;

    const-string v0, "SSL_DHE_RSA_WITH_3DES_EDE_CBC_SHA"

    const/16 v1, 0x16

    const/16 v2, 0x147e

    invoke-static {v0, v1, v2, v5, v7}, Lokhttp3/i;->a(Ljava/lang/String;IIII)Lokhttp3/i;

    move-result-object v0

    sput-object v0, Lokhttp3/i;->n:Lokhttp3/i;

    const-string v0, "SSL_DH_anon_EXPORT_WITH_RC4_40_MD5"

    const/16 v1, 0x17

    const/16 v2, 0x10fa

    invoke-static {v0, v1, v2, v5, v7}, Lokhttp3/i;->a(Ljava/lang/String;IIII)Lokhttp3/i;

    move-result-object v0

    sput-object v0, Lokhttp3/i;->o:Lokhttp3/i;

    const-string v0, "SSL_DH_anon_WITH_RC4_128_MD5"

    const/16 v1, 0x18

    const/16 v2, 0x147e

    invoke-static {v0, v1, v2, v5, v7}, Lokhttp3/i;->a(Ljava/lang/String;IIII)Lokhttp3/i;

    move-result-object v0

    sput-object v0, Lokhttp3/i;->p:Lokhttp3/i;

    const-string v0, "SSL_DH_anon_EXPORT_WITH_DES40_CBC_SHA"

    const/16 v1, 0x19

    const/16 v2, 0x10fa

    invoke-static {v0, v1, v2, v5, v7}, Lokhttp3/i;->a(Ljava/lang/String;IIII)Lokhttp3/i;

    move-result-object v0

    sput-object v0, Lokhttp3/i;->q:Lokhttp3/i;

    const-string v0, "SSL_DH_anon_WITH_DES_CBC_SHA"

    const/16 v1, 0x1a

    const/16 v2, 0x155d

    invoke-static {v0, v1, v2, v5, v7}, Lokhttp3/i;->a(Ljava/lang/String;IIII)Lokhttp3/i;

    move-result-object v0

    sput-object v0, Lokhttp3/i;->r:Lokhttp3/i;

    const-string v0, "SSL_DH_anon_WITH_3DES_EDE_CBC_SHA"

    const/16 v1, 0x1b

    const/16 v2, 0x147e

    invoke-static {v0, v1, v2, v5, v7}, Lokhttp3/i;->a(Ljava/lang/String;IIII)Lokhttp3/i;

    move-result-object v0

    sput-object v0, Lokhttp3/i;->s:Lokhttp3/i;

    const-string v0, "TLS_KRB5_WITH_DES_CBC_SHA"

    const/16 v1, 0x1e

    const/16 v2, 0xa98

    const v3, 0x7fffffff

    invoke-static {v0, v1, v2, v5, v3}, Lokhttp3/i;->a(Ljava/lang/String;IIII)Lokhttp3/i;

    move-result-object v0

    sput-object v0, Lokhttp3/i;->t:Lokhttp3/i;

    const-string v0, "TLS_KRB5_WITH_3DES_EDE_CBC_SHA"

    const/16 v1, 0x1f

    const/16 v2, 0xa98

    const v3, 0x7fffffff

    invoke-static {v0, v1, v2, v5, v3}, Lokhttp3/i;->a(Ljava/lang/String;IIII)Lokhttp3/i;

    move-result-object v0

    sput-object v0, Lokhttp3/i;->u:Lokhttp3/i;

    const-string v0, "TLS_KRB5_WITH_RC4_128_SHA"

    const/16 v1, 0x20

    const/16 v2, 0xa98

    const v3, 0x7fffffff

    invoke-static {v0, v1, v2, v5, v3}, Lokhttp3/i;->a(Ljava/lang/String;IIII)Lokhttp3/i;

    move-result-object v0

    sput-object v0, Lokhttp3/i;->v:Lokhttp3/i;

    const-string v0, "TLS_KRB5_WITH_DES_CBC_MD5"

    const/16 v1, 0x22

    const/16 v2, 0xa98

    const v3, 0x7fffffff

    invoke-static {v0, v1, v2, v5, v3}, Lokhttp3/i;->a(Ljava/lang/String;IIII)Lokhttp3/i;

    move-result-object v0

    sput-object v0, Lokhttp3/i;->w:Lokhttp3/i;

    const-string v0, "TLS_KRB5_WITH_3DES_EDE_CBC_MD5"

    const/16 v1, 0x23

    const/16 v2, 0xa98

    const v3, 0x7fffffff

    invoke-static {v0, v1, v2, v5, v3}, Lokhttp3/i;->a(Ljava/lang/String;IIII)Lokhttp3/i;

    move-result-object v0

    sput-object v0, Lokhttp3/i;->x:Lokhttp3/i;

    const-string v0, "TLS_KRB5_WITH_RC4_128_MD5"

    const/16 v1, 0x24

    const/16 v2, 0xa98

    const v3, 0x7fffffff

    invoke-static {v0, v1, v2, v5, v3}, Lokhttp3/i;->a(Ljava/lang/String;IIII)Lokhttp3/i;

    move-result-object v0

    sput-object v0, Lokhttp3/i;->y:Lokhttp3/i;

    const-string v0, "TLS_KRB5_EXPORT_WITH_DES_CBC_40_SHA"

    const/16 v1, 0x26

    const/16 v2, 0xa98

    const v3, 0x7fffffff

    invoke-static {v0, v1, v2, v5, v3}, Lokhttp3/i;->a(Ljava/lang/String;IIII)Lokhttp3/i;

    move-result-object v0

    sput-object v0, Lokhttp3/i;->z:Lokhttp3/i;

    const-string v0, "TLS_KRB5_EXPORT_WITH_RC4_40_SHA"

    const/16 v1, 0x28

    const/16 v2, 0xa98

    const v3, 0x7fffffff

    invoke-static {v0, v1, v2, v5, v3}, Lokhttp3/i;->a(Ljava/lang/String;IIII)Lokhttp3/i;

    move-result-object v0

    sput-object v0, Lokhttp3/i;->A:Lokhttp3/i;

    const-string v0, "TLS_KRB5_EXPORT_WITH_DES_CBC_40_MD5"

    const/16 v1, 0x29

    const/16 v2, 0xa98

    const v3, 0x7fffffff

    invoke-static {v0, v1, v2, v5, v3}, Lokhttp3/i;->a(Ljava/lang/String;IIII)Lokhttp3/i;

    move-result-object v0

    sput-object v0, Lokhttp3/i;->B:Lokhttp3/i;

    const-string v0, "TLS_KRB5_EXPORT_WITH_RC4_40_MD5"

    const/16 v1, 0x2b

    const/16 v2, 0xa98

    const v3, 0x7fffffff

    invoke-static {v0, v1, v2, v5, v3}, Lokhttp3/i;->a(Ljava/lang/String;IIII)Lokhttp3/i;

    move-result-object v0

    sput-object v0, Lokhttp3/i;->C:Lokhttp3/i;

    const-string v0, "TLS_RSA_WITH_AES_128_CBC_SHA"

    const/16 v1, 0x2f

    const/16 v2, 0x147e

    invoke-static {v0, v1, v2, v5, v7}, Lokhttp3/i;->a(Ljava/lang/String;IIII)Lokhttp3/i;

    move-result-object v0

    sput-object v0, Lokhttp3/i;->D:Lokhttp3/i;

    const-string v0, "TLS_DHE_DSS_WITH_AES_128_CBC_SHA"

    const/16 v1, 0x32

    const/16 v2, 0x147e

    invoke-static {v0, v1, v2, v5, v7}, Lokhttp3/i;->a(Ljava/lang/String;IIII)Lokhttp3/i;

    move-result-object v0

    sput-object v0, Lokhttp3/i;->E:Lokhttp3/i;

    const-string v0, "TLS_DHE_RSA_WITH_AES_128_CBC_SHA"

    const/16 v1, 0x33

    const/16 v2, 0x147e

    invoke-static {v0, v1, v2, v5, v7}, Lokhttp3/i;->a(Ljava/lang/String;IIII)Lokhttp3/i;

    move-result-object v0

    sput-object v0, Lokhttp3/i;->F:Lokhttp3/i;

    const-string v0, "TLS_DH_anon_WITH_AES_128_CBC_SHA"

    const/16 v1, 0x34

    const/16 v2, 0x147e

    invoke-static {v0, v1, v2, v5, v7}, Lokhttp3/i;->a(Ljava/lang/String;IIII)Lokhttp3/i;

    move-result-object v0

    sput-object v0, Lokhttp3/i;->G:Lokhttp3/i;

    const-string v0, "TLS_RSA_WITH_AES_256_CBC_SHA"

    const/16 v1, 0x35

    const/16 v2, 0x147e

    invoke-static {v0, v1, v2, v5, v7}, Lokhttp3/i;->a(Ljava/lang/String;IIII)Lokhttp3/i;

    move-result-object v0

    sput-object v0, Lokhttp3/i;->H:Lokhttp3/i;

    const-string v0, "TLS_DHE_DSS_WITH_AES_256_CBC_SHA"

    const/16 v1, 0x38

    const/16 v2, 0x147e

    invoke-static {v0, v1, v2, v5, v7}, Lokhttp3/i;->a(Ljava/lang/String;IIII)Lokhttp3/i;

    move-result-object v0

    sput-object v0, Lokhttp3/i;->I:Lokhttp3/i;

    const-string v0, "TLS_DHE_RSA_WITH_AES_256_CBC_SHA"

    const/16 v1, 0x39

    const/16 v2, 0x147e

    invoke-static {v0, v1, v2, v5, v7}, Lokhttp3/i;->a(Ljava/lang/String;IIII)Lokhttp3/i;

    move-result-object v0

    sput-object v0, Lokhttp3/i;->J:Lokhttp3/i;

    const-string v0, "TLS_DH_anon_WITH_AES_256_CBC_SHA"

    const/16 v1, 0x3a

    const/16 v2, 0x147e

    invoke-static {v0, v1, v2, v5, v7}, Lokhttp3/i;->a(Ljava/lang/String;IIII)Lokhttp3/i;

    move-result-object v0

    sput-object v0, Lokhttp3/i;->K:Lokhttp3/i;

    const-string v0, "TLS_RSA_WITH_NULL_SHA256"

    const/16 v1, 0x3b

    const/16 v2, 0x147e

    invoke-static {v0, v1, v2, v4, v6}, Lokhttp3/i;->a(Ljava/lang/String;IIII)Lokhttp3/i;

    move-result-object v0

    sput-object v0, Lokhttp3/i;->L:Lokhttp3/i;

    const-string v0, "TLS_RSA_WITH_AES_128_CBC_SHA256"

    const/16 v1, 0x3c

    const/16 v2, 0x147e

    invoke-static {v0, v1, v2, v4, v6}, Lokhttp3/i;->a(Ljava/lang/String;IIII)Lokhttp3/i;

    move-result-object v0

    sput-object v0, Lokhttp3/i;->M:Lokhttp3/i;

    const-string v0, "TLS_RSA_WITH_AES_256_CBC_SHA256"

    const/16 v1, 0x3d

    const/16 v2, 0x147e

    invoke-static {v0, v1, v2, v4, v6}, Lokhttp3/i;->a(Ljava/lang/String;IIII)Lokhttp3/i;

    move-result-object v0

    sput-object v0, Lokhttp3/i;->N:Lokhttp3/i;

    const-string v0, "TLS_DHE_DSS_WITH_AES_128_CBC_SHA256"

    const/16 v1, 0x40

    const/16 v2, 0x147e

    invoke-static {v0, v1, v2, v4, v6}, Lokhttp3/i;->a(Ljava/lang/String;IIII)Lokhttp3/i;

    move-result-object v0

    sput-object v0, Lokhttp3/i;->O:Lokhttp3/i;

    const-string v0, "TLS_DHE_RSA_WITH_AES_128_CBC_SHA256"

    const/16 v1, 0x67

    const/16 v2, 0x147e

    invoke-static {v0, v1, v2, v4, v6}, Lokhttp3/i;->a(Ljava/lang/String;IIII)Lokhttp3/i;

    move-result-object v0

    sput-object v0, Lokhttp3/i;->P:Lokhttp3/i;

    const-string v0, "TLS_DHE_DSS_WITH_AES_256_CBC_SHA256"

    const/16 v1, 0x6a

    const/16 v2, 0x147e

    invoke-static {v0, v1, v2, v4, v6}, Lokhttp3/i;->a(Ljava/lang/String;IIII)Lokhttp3/i;

    move-result-object v0

    sput-object v0, Lokhttp3/i;->Q:Lokhttp3/i;

    const-string v0, "TLS_DHE_RSA_WITH_AES_256_CBC_SHA256"

    const/16 v1, 0x6b

    const/16 v2, 0x147e

    invoke-static {v0, v1, v2, v4, v6}, Lokhttp3/i;->a(Ljava/lang/String;IIII)Lokhttp3/i;

    move-result-object v0

    sput-object v0, Lokhttp3/i;->R:Lokhttp3/i;

    const-string v0, "TLS_DH_anon_WITH_AES_128_CBC_SHA256"

    const/16 v1, 0x6c

    const/16 v2, 0x147e

    invoke-static {v0, v1, v2, v4, v6}, Lokhttp3/i;->a(Ljava/lang/String;IIII)Lokhttp3/i;

    move-result-object v0

    sput-object v0, Lokhttp3/i;->S:Lokhttp3/i;

    const-string v0, "TLS_DH_anon_WITH_AES_256_CBC_SHA256"

    const/16 v1, 0x6d

    const/16 v2, 0x147e

    invoke-static {v0, v1, v2, v4, v6}, Lokhttp3/i;->a(Ljava/lang/String;IIII)Lokhttp3/i;

    move-result-object v0

    sput-object v0, Lokhttp3/i;->T:Lokhttp3/i;

    const-string v0, "TLS_RSA_WITH_AES_128_GCM_SHA256"

    const/16 v1, 0x9c

    const/16 v2, 0x14a8

    const/16 v3, 0x8

    invoke-static {v0, v1, v2, v3, v6}, Lokhttp3/i;->a(Ljava/lang/String;IIII)Lokhttp3/i;

    move-result-object v0

    sput-object v0, Lokhttp3/i;->U:Lokhttp3/i;

    const-string v0, "TLS_RSA_WITH_AES_256_GCM_SHA384"

    const/16 v1, 0x9d

    const/16 v2, 0x14a8

    const/16 v3, 0x8

    invoke-static {v0, v1, v2, v3, v6}, Lokhttp3/i;->a(Ljava/lang/String;IIII)Lokhttp3/i;

    move-result-object v0

    sput-object v0, Lokhttp3/i;->V:Lokhttp3/i;

    const-string v0, "TLS_DHE_RSA_WITH_AES_128_GCM_SHA256"

    const/16 v1, 0x9e

    const/16 v2, 0x14a8

    const/16 v3, 0x8

    invoke-static {v0, v1, v2, v3, v6}, Lokhttp3/i;->a(Ljava/lang/String;IIII)Lokhttp3/i;

    move-result-object v0

    sput-object v0, Lokhttp3/i;->W:Lokhttp3/i;

    const-string v0, "TLS_DHE_RSA_WITH_AES_256_GCM_SHA384"

    const/16 v1, 0x9f

    const/16 v2, 0x14a8

    const/16 v3, 0x8

    invoke-static {v0, v1, v2, v3, v6}, Lokhttp3/i;->a(Ljava/lang/String;IIII)Lokhttp3/i;

    move-result-object v0

    sput-object v0, Lokhttp3/i;->X:Lokhttp3/i;

    const-string v0, "TLS_DHE_DSS_WITH_AES_128_GCM_SHA256"

    const/16 v1, 0xa2

    const/16 v2, 0x14a8

    const/16 v3, 0x8

    invoke-static {v0, v1, v2, v3, v6}, Lokhttp3/i;->a(Ljava/lang/String;IIII)Lokhttp3/i;

    move-result-object v0

    sput-object v0, Lokhttp3/i;->Y:Lokhttp3/i;

    const-string v0, "TLS_DHE_DSS_WITH_AES_256_GCM_SHA384"

    const/16 v1, 0xa3

    const/16 v2, 0x14a8

    const/16 v3, 0x8

    invoke-static {v0, v1, v2, v3, v6}, Lokhttp3/i;->a(Ljava/lang/String;IIII)Lokhttp3/i;

    move-result-object v0

    sput-object v0, Lokhttp3/i;->Z:Lokhttp3/i;

    const-string v0, "TLS_DH_anon_WITH_AES_128_GCM_SHA256"

    const/16 v1, 0xa6

    const/16 v2, 0x14a8

    const/16 v3, 0x8

    invoke-static {v0, v1, v2, v3, v6}, Lokhttp3/i;->a(Ljava/lang/String;IIII)Lokhttp3/i;

    move-result-object v0

    sput-object v0, Lokhttp3/i;->aa:Lokhttp3/i;

    const-string v0, "TLS_DH_anon_WITH_AES_256_GCM_SHA384"

    const/16 v1, 0xa7

    const/16 v2, 0x14a8

    const/16 v3, 0x8

    invoke-static {v0, v1, v2, v3, v6}, Lokhttp3/i;->a(Ljava/lang/String;IIII)Lokhttp3/i;

    move-result-object v0

    sput-object v0, Lokhttp3/i;->ab:Lokhttp3/i;

    const-string v0, "TLS_EMPTY_RENEGOTIATION_INFO_SCSV"

    const/16 v1, 0xff

    const/16 v2, 0x1672

    invoke-static {v0, v1, v2, v5, v8}, Lokhttp3/i;->a(Ljava/lang/String;IIII)Lokhttp3/i;

    move-result-object v0

    sput-object v0, Lokhttp3/i;->ac:Lokhttp3/i;

    const-string v0, "TLS_ECDH_ECDSA_WITH_NULL_SHA"

    const v1, 0xc001

    const/16 v2, 0x118c

    invoke-static {v0, v1, v2, v4, v8}, Lokhttp3/i;->a(Ljava/lang/String;IIII)Lokhttp3/i;

    move-result-object v0

    sput-object v0, Lokhttp3/i;->ad:Lokhttp3/i;

    const-string v0, "TLS_ECDH_ECDSA_WITH_RC4_128_SHA"

    const v1, 0xc002

    const/16 v2, 0x118c

    invoke-static {v0, v1, v2, v4, v8}, Lokhttp3/i;->a(Ljava/lang/String;IIII)Lokhttp3/i;

    move-result-object v0

    sput-object v0, Lokhttp3/i;->ae:Lokhttp3/i;

    const-string v0, "TLS_ECDH_ECDSA_WITH_3DES_EDE_CBC_SHA"

    const v1, 0xc003

    const/16 v2, 0x118c

    invoke-static {v0, v1, v2, v4, v8}, Lokhttp3/i;->a(Ljava/lang/String;IIII)Lokhttp3/i;

    move-result-object v0

    sput-object v0, Lokhttp3/i;->af:Lokhttp3/i;

    const-string v0, "TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA"

    const v1, 0xc004

    const/16 v2, 0x118c

    invoke-static {v0, v1, v2, v4, v8}, Lokhttp3/i;->a(Ljava/lang/String;IIII)Lokhttp3/i;

    move-result-object v0

    sput-object v0, Lokhttp3/i;->ag:Lokhttp3/i;

    const-string v0, "TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA"

    const v1, 0xc005

    const/16 v2, 0x118c

    invoke-static {v0, v1, v2, v4, v8}, Lokhttp3/i;->a(Ljava/lang/String;IIII)Lokhttp3/i;

    move-result-object v0

    sput-object v0, Lokhttp3/i;->ah:Lokhttp3/i;

    const-string v0, "TLS_ECDHE_ECDSA_WITH_NULL_SHA"

    const v1, 0xc006

    const/16 v2, 0x118c

    invoke-static {v0, v1, v2, v4, v8}, Lokhttp3/i;->a(Ljava/lang/String;IIII)Lokhttp3/i;

    move-result-object v0

    sput-object v0, Lokhttp3/i;->ai:Lokhttp3/i;

    const-string v0, "TLS_ECDHE_ECDSA_WITH_RC4_128_SHA"

    const v1, 0xc007

    const/16 v2, 0x118c

    invoke-static {v0, v1, v2, v4, v8}, Lokhttp3/i;->a(Ljava/lang/String;IIII)Lokhttp3/i;

    move-result-object v0

    sput-object v0, Lokhttp3/i;->aj:Lokhttp3/i;

    const-string v0, "TLS_ECDHE_ECDSA_WITH_3DES_EDE_CBC_SHA"

    const v1, 0xc008

    const/16 v2, 0x118c

    invoke-static {v0, v1, v2, v4, v8}, Lokhttp3/i;->a(Ljava/lang/String;IIII)Lokhttp3/i;

    move-result-object v0

    sput-object v0, Lokhttp3/i;->ak:Lokhttp3/i;

    const-string v0, "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA"

    const v1, 0xc009

    const/16 v2, 0x118c

    invoke-static {v0, v1, v2, v4, v8}, Lokhttp3/i;->a(Ljava/lang/String;IIII)Lokhttp3/i;

    move-result-object v0

    sput-object v0, Lokhttp3/i;->al:Lokhttp3/i;

    const-string v0, "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA"

    const v1, 0xc00a

    const/16 v2, 0x118c

    invoke-static {v0, v1, v2, v4, v8}, Lokhttp3/i;->a(Ljava/lang/String;IIII)Lokhttp3/i;

    move-result-object v0

    sput-object v0, Lokhttp3/i;->am:Lokhttp3/i;

    const-string v0, "TLS_ECDH_RSA_WITH_NULL_SHA"

    const v1, 0xc00b

    const/16 v2, 0x118c

    invoke-static {v0, v1, v2, v4, v8}, Lokhttp3/i;->a(Ljava/lang/String;IIII)Lokhttp3/i;

    move-result-object v0

    sput-object v0, Lokhttp3/i;->an:Lokhttp3/i;

    const-string v0, "TLS_ECDH_RSA_WITH_RC4_128_SHA"

    const v1, 0xc00c

    const/16 v2, 0x118c

    invoke-static {v0, v1, v2, v4, v8}, Lokhttp3/i;->a(Ljava/lang/String;IIII)Lokhttp3/i;

    move-result-object v0

    sput-object v0, Lokhttp3/i;->ao:Lokhttp3/i;

    const-string v0, "TLS_ECDH_RSA_WITH_3DES_EDE_CBC_SHA"

    const v1, 0xc00d

    const/16 v2, 0x118c

    invoke-static {v0, v1, v2, v4, v8}, Lokhttp3/i;->a(Ljava/lang/String;IIII)Lokhttp3/i;

    move-result-object v0

    sput-object v0, Lokhttp3/i;->ap:Lokhttp3/i;

    const-string v0, "TLS_ECDH_RSA_WITH_AES_128_CBC_SHA"

    const v1, 0xc00e

    const/16 v2, 0x118c

    invoke-static {v0, v1, v2, v4, v8}, Lokhttp3/i;->a(Ljava/lang/String;IIII)Lokhttp3/i;

    move-result-object v0

    sput-object v0, Lokhttp3/i;->aq:Lokhttp3/i;

    const-string v0, "TLS_ECDH_RSA_WITH_AES_256_CBC_SHA"

    const v1, 0xc00f

    const/16 v2, 0x118c

    invoke-static {v0, v1, v2, v4, v8}, Lokhttp3/i;->a(Ljava/lang/String;IIII)Lokhttp3/i;

    move-result-object v0

    sput-object v0, Lokhttp3/i;->ar:Lokhttp3/i;

    const-string v0, "TLS_ECDHE_RSA_WITH_NULL_SHA"

    const v1, 0xc010

    const/16 v2, 0x118c

    invoke-static {v0, v1, v2, v4, v8}, Lokhttp3/i;->a(Ljava/lang/String;IIII)Lokhttp3/i;

    move-result-object v0

    sput-object v0, Lokhttp3/i;->as:Lokhttp3/i;

    const-string v0, "TLS_ECDHE_RSA_WITH_RC4_128_SHA"

    const v1, 0xc011

    const/16 v2, 0x118c

    invoke-static {v0, v1, v2, v4, v8}, Lokhttp3/i;->a(Ljava/lang/String;IIII)Lokhttp3/i;

    move-result-object v0

    sput-object v0, Lokhttp3/i;->at:Lokhttp3/i;

    const-string v0, "TLS_ECDHE_RSA_WITH_3DES_EDE_CBC_SHA"

    const v1, 0xc012

    const/16 v2, 0x118c

    invoke-static {v0, v1, v2, v4, v8}, Lokhttp3/i;->a(Ljava/lang/String;IIII)Lokhttp3/i;

    move-result-object v0

    sput-object v0, Lokhttp3/i;->au:Lokhttp3/i;

    const-string v0, "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA"

    const v1, 0xc013

    const/16 v2, 0x118c

    invoke-static {v0, v1, v2, v4, v8}, Lokhttp3/i;->a(Ljava/lang/String;IIII)Lokhttp3/i;

    move-result-object v0

    sput-object v0, Lokhttp3/i;->av:Lokhttp3/i;

    const-string v0, "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA"

    const v1, 0xc014

    const/16 v2, 0x118c

    invoke-static {v0, v1, v2, v4, v8}, Lokhttp3/i;->a(Ljava/lang/String;IIII)Lokhttp3/i;

    move-result-object v0

    sput-object v0, Lokhttp3/i;->aw:Lokhttp3/i;

    const-string v0, "TLS_ECDH_anon_WITH_NULL_SHA"

    const v1, 0xc015

    const/16 v2, 0x118c

    invoke-static {v0, v1, v2, v4, v8}, Lokhttp3/i;->a(Ljava/lang/String;IIII)Lokhttp3/i;

    move-result-object v0

    sput-object v0, Lokhttp3/i;->ax:Lokhttp3/i;

    const-string v0, "TLS_ECDH_anon_WITH_RC4_128_SHA"

    const v1, 0xc016

    const/16 v2, 0x118c

    invoke-static {v0, v1, v2, v4, v8}, Lokhttp3/i;->a(Ljava/lang/String;IIII)Lokhttp3/i;

    move-result-object v0

    sput-object v0, Lokhttp3/i;->ay:Lokhttp3/i;

    const-string v0, "TLS_ECDH_anon_WITH_3DES_EDE_CBC_SHA"

    const v1, 0xc017

    const/16 v2, 0x118c

    invoke-static {v0, v1, v2, v4, v8}, Lokhttp3/i;->a(Ljava/lang/String;IIII)Lokhttp3/i;

    move-result-object v0

    sput-object v0, Lokhttp3/i;->az:Lokhttp3/i;

    const-string v0, "TLS_ECDH_anon_WITH_AES_128_CBC_SHA"

    const v1, 0xc018

    const/16 v2, 0x118c

    invoke-static {v0, v1, v2, v4, v8}, Lokhttp3/i;->a(Ljava/lang/String;IIII)Lokhttp3/i;

    move-result-object v0

    sput-object v0, Lokhttp3/i;->aA:Lokhttp3/i;

    const-string v0, "TLS_ECDH_anon_WITH_AES_256_CBC_SHA"

    const v1, 0xc019

    const/16 v2, 0x118c

    invoke-static {v0, v1, v2, v4, v8}, Lokhttp3/i;->a(Ljava/lang/String;IIII)Lokhttp3/i;

    move-result-object v0

    sput-object v0, Lokhttp3/i;->aB:Lokhttp3/i;

    const-string v0, "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256"

    const v1, 0xc023

    const/16 v2, 0x14a9

    invoke-static {v0, v1, v2, v4, v6}, Lokhttp3/i;->a(Ljava/lang/String;IIII)Lokhttp3/i;

    move-result-object v0

    sput-object v0, Lokhttp3/i;->aC:Lokhttp3/i;

    const-string v0, "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA384"

    const v1, 0xc024

    const/16 v2, 0x14a9

    invoke-static {v0, v1, v2, v4, v6}, Lokhttp3/i;->a(Ljava/lang/String;IIII)Lokhttp3/i;

    move-result-object v0

    sput-object v0, Lokhttp3/i;->aD:Lokhttp3/i;

    const-string v0, "TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA256"

    const v1, 0xc025

    const/16 v2, 0x14a9

    invoke-static {v0, v1, v2, v4, v6}, Lokhttp3/i;->a(Ljava/lang/String;IIII)Lokhttp3/i;

    move-result-object v0

    sput-object v0, Lokhttp3/i;->aE:Lokhttp3/i;

    const-string v0, "TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA384"

    const v1, 0xc026

    const/16 v2, 0x14a9

    invoke-static {v0, v1, v2, v4, v6}, Lokhttp3/i;->a(Ljava/lang/String;IIII)Lokhttp3/i;

    move-result-object v0

    sput-object v0, Lokhttp3/i;->aF:Lokhttp3/i;

    const-string v0, "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256"

    const v1, 0xc027

    const/16 v2, 0x14a9

    invoke-static {v0, v1, v2, v4, v6}, Lokhttp3/i;->a(Ljava/lang/String;IIII)Lokhttp3/i;

    move-result-object v0

    sput-object v0, Lokhttp3/i;->aG:Lokhttp3/i;

    const-string v0, "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384"

    const v1, 0xc028

    const/16 v2, 0x14a9

    invoke-static {v0, v1, v2, v4, v6}, Lokhttp3/i;->a(Ljava/lang/String;IIII)Lokhttp3/i;

    move-result-object v0

    sput-object v0, Lokhttp3/i;->aH:Lokhttp3/i;

    const-string v0, "TLS_ECDH_RSA_WITH_AES_128_CBC_SHA256"

    const v1, 0xc029

    const/16 v2, 0x14a9

    invoke-static {v0, v1, v2, v4, v6}, Lokhttp3/i;->a(Ljava/lang/String;IIII)Lokhttp3/i;

    move-result-object v0

    sput-object v0, Lokhttp3/i;->aI:Lokhttp3/i;

    const-string v0, "TLS_ECDH_RSA_WITH_AES_256_CBC_SHA384"

    const v1, 0xc02a

    const/16 v2, 0x14a9

    invoke-static {v0, v1, v2, v4, v6}, Lokhttp3/i;->a(Ljava/lang/String;IIII)Lokhttp3/i;

    move-result-object v0

    sput-object v0, Lokhttp3/i;->aJ:Lokhttp3/i;

    const-string v0, "TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256"

    const v1, 0xc02b

    const/16 v2, 0x14a9

    const/16 v3, 0x8

    invoke-static {v0, v1, v2, v3, v6}, Lokhttp3/i;->a(Ljava/lang/String;IIII)Lokhttp3/i;

    move-result-object v0

    sput-object v0, Lokhttp3/i;->aK:Lokhttp3/i;

    const-string v0, "TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384"

    const v1, 0xc02c

    const/16 v2, 0x14a9

    const/16 v3, 0x8

    invoke-static {v0, v1, v2, v3, v6}, Lokhttp3/i;->a(Ljava/lang/String;IIII)Lokhttp3/i;

    move-result-object v0

    sput-object v0, Lokhttp3/i;->aL:Lokhttp3/i;

    const-string v0, "TLS_ECDH_ECDSA_WITH_AES_128_GCM_SHA256"

    const v1, 0xc02d

    const/16 v2, 0x14a9

    const/16 v3, 0x8

    invoke-static {v0, v1, v2, v3, v6}, Lokhttp3/i;->a(Ljava/lang/String;IIII)Lokhttp3/i;

    move-result-object v0

    sput-object v0, Lokhttp3/i;->aM:Lokhttp3/i;

    const-string v0, "TLS_ECDH_ECDSA_WITH_AES_256_GCM_SHA384"

    const v1, 0xc02e

    const/16 v2, 0x14a9

    const/16 v3, 0x8

    invoke-static {v0, v1, v2, v3, v6}, Lokhttp3/i;->a(Ljava/lang/String;IIII)Lokhttp3/i;

    move-result-object v0

    sput-object v0, Lokhttp3/i;->aN:Lokhttp3/i;

    const-string v0, "TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256"

    const v1, 0xc02f

    const/16 v2, 0x14a9

    const/16 v3, 0x8

    invoke-static {v0, v1, v2, v3, v6}, Lokhttp3/i;->a(Ljava/lang/String;IIII)Lokhttp3/i;

    move-result-object v0

    sput-object v0, Lokhttp3/i;->aO:Lokhttp3/i;

    const-string v0, "TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384"

    const v1, 0xc030

    const/16 v2, 0x14a9

    const/16 v3, 0x8

    invoke-static {v0, v1, v2, v3, v6}, Lokhttp3/i;->a(Ljava/lang/String;IIII)Lokhttp3/i;

    move-result-object v0

    sput-object v0, Lokhttp3/i;->aP:Lokhttp3/i;

    const-string v0, "TLS_ECDH_RSA_WITH_AES_128_GCM_SHA256"

    const v1, 0xc031

    const/16 v2, 0x14a9

    const/16 v3, 0x8

    invoke-static {v0, v1, v2, v3, v6}, Lokhttp3/i;->a(Ljava/lang/String;IIII)Lokhttp3/i;

    move-result-object v0

    sput-object v0, Lokhttp3/i;->aQ:Lokhttp3/i;

    const-string v0, "TLS_ECDH_RSA_WITH_AES_256_GCM_SHA384"

    const v1, 0xc032

    const/16 v2, 0x14a9

    const/16 v3, 0x8

    invoke-static {v0, v1, v2, v3, v6}, Lokhttp3/i;->a(Ljava/lang/String;IIII)Lokhttp3/i;

    move-result-object v0

    sput-object v0, Lokhttp3/i;->aR:Lokhttp3/i;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_b

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_b
    iput-object p1, p0, Lokhttp3/i;->aS:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lokhttp3/i;
    .registers 3

    sget-object v0, Lokhttp3/i;->aT:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/i;

    if-nez v0, :cond_1a

    new-instance v1, Lokhttp3/i;

    invoke-direct {v1, p0}, Lokhttp3/i;-><init>(Ljava/lang/String;)V

    sget-object v0, Lokhttp3/i;->aT:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/i;

    if-nez v0, :cond_1a

    move-object v0, v1

    :cond_1a
    return-object v0
.end method

.method private static a(Ljava/lang/String;IIII)Lokhttp3/i;
    .registers 6

    invoke-static {p0}, Lokhttp3/i;->a(Ljava/lang/String;)Lokhttp3/i;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lokhttp3/i;->aS:Ljava/lang/String;

    return-object v0
.end method
