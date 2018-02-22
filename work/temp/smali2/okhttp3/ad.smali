.class public final enum Lokhttp3/ad;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lokhttp3/ad;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lokhttp3/ad;

.field public static final enum b:Lokhttp3/ad;

.field public static final enum c:Lokhttp3/ad;

.field public static final enum d:Lokhttp3/ad;

.field private static final synthetic f:[Lokhttp3/ad;


# instance fields
.field final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lokhttp3/ad;

    const-string v1, "TLS_1_2"

    const-string v2, "TLSv1.2"

    invoke-direct {v0, v1, v3, v2}, Lokhttp3/ad;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lokhttp3/ad;->a:Lokhttp3/ad;

    new-instance v0, Lokhttp3/ad;

    const-string v1, "TLS_1_1"

    const-string v2, "TLSv1.1"

    invoke-direct {v0, v1, v4, v2}, Lokhttp3/ad;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lokhttp3/ad;->b:Lokhttp3/ad;

    new-instance v0, Lokhttp3/ad;

    const-string v1, "TLS_1_0"

    const-string v2, "TLSv1"

    invoke-direct {v0, v1, v5, v2}, Lokhttp3/ad;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lokhttp3/ad;->c:Lokhttp3/ad;

    new-instance v0, Lokhttp3/ad;

    const-string v1, "SSL_3_0"

    const-string v2, "SSLv3"

    invoke-direct {v0, v1, v6, v2}, Lokhttp3/ad;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lokhttp3/ad;->d:Lokhttp3/ad;

    const/4 v0, 0x4

    new-array v0, v0, [Lokhttp3/ad;

    sget-object v1, Lokhttp3/ad;->a:Lokhttp3/ad;

    aput-object v1, v0, v3

    sget-object v1, Lokhttp3/ad;->b:Lokhttp3/ad;

    aput-object v1, v0, v4

    sget-object v1, Lokhttp3/ad;->c:Lokhttp3/ad;

    aput-object v1, v0, v5

    sget-object v1, Lokhttp3/ad;->d:Lokhttp3/ad;

    aput-object v1, v0, v6

    sput-object v0, Lokhttp3/ad;->f:[Lokhttp3/ad;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lokhttp3/ad;->e:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lokhttp3/ad;
    .registers 4

    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_58

    :cond_8
    :goto_8
    packed-switch v0, :pswitch_data_6a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected TLS version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_24
    const-string v1, "TLSv1.2"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x0

    goto :goto_8

    :sswitch_2e
    const-string v1, "TLSv1.1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x1

    goto :goto_8

    :sswitch_38
    const-string v1, "TLSv1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x2

    goto :goto_8

    :sswitch_42
    const-string v1, "SSLv3"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x3

    goto :goto_8

    :pswitch_4c
    sget-object v0, Lokhttp3/ad;->a:Lokhttp3/ad;

    :goto_4e
    return-object v0

    :pswitch_4f
    sget-object v0, Lokhttp3/ad;->b:Lokhttp3/ad;

    goto :goto_4e

    :pswitch_52
    sget-object v0, Lokhttp3/ad;->c:Lokhttp3/ad;

    goto :goto_4e

    :pswitch_55
    sget-object v0, Lokhttp3/ad;->d:Lokhttp3/ad;

    goto :goto_4e

    :sswitch_data_58
    .sparse-switch
        -0x1dfc3f27 -> :sswitch_2e
        -0x1dfc3f26 -> :sswitch_24
        0x4b88569 -> :sswitch_42
        0x4c38896 -> :sswitch_38
    .end sparse-switch

    :pswitch_data_6a
    .packed-switch 0x0
        :pswitch_4c
        :pswitch_4f
        :pswitch_52
        :pswitch_55
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lokhttp3/ad;
    .registers 2

    const-class v0, Lokhttp3/ad;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lokhttp3/ad;

    return-object v0
.end method

.method public static values()[Lokhttp3/ad;
    .registers 1

    sget-object v0, Lokhttp3/ad;->f:[Lokhttp3/ad;

    invoke-virtual {v0}, [Lokhttp3/ad;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lokhttp3/ad;

    return-object v0
.end method
