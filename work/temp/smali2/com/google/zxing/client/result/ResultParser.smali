.class public abstract Lcom/google/zxing/client/result/ResultParser;
.super Ljava/lang/Object;


# static fields
.field private static final a:[Lcom/google/zxing/client/result/ResultParser;

.field private static final b:Ljava/util/regex/Pattern;

.field private static final c:Ljava/util/regex/Pattern;

.field private static final d:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x14

    new-array v0, v0, [Lcom/google/zxing/client/result/ResultParser;

    const/4 v1, 0x0

    new-instance v2, Lcom/google/zxing/client/result/BookmarkDoCoMoResultParser;

    invoke-direct {v2}, Lcom/google/zxing/client/result/BookmarkDoCoMoResultParser;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;

    invoke-direct {v2}, Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/google/zxing/client/result/EmailDoCoMoResultParser;

    invoke-direct {v2}, Lcom/google/zxing/client/result/EmailDoCoMoResultParser;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/google/zxing/client/result/AddressBookAUResultParser;

    invoke-direct {v2}, Lcom/google/zxing/client/result/AddressBookAUResultParser;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lcom/google/zxing/client/result/VCardResultParser;

    invoke-direct {v2}, Lcom/google/zxing/client/result/VCardResultParser;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lcom/google/zxing/client/result/BizcardResultParser;

    invoke-direct {v2}, Lcom/google/zxing/client/result/BizcardResultParser;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lcom/google/zxing/client/result/VEventResultParser;

    invoke-direct {v2}, Lcom/google/zxing/client/result/VEventResultParser;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lcom/google/zxing/client/result/EmailAddressResultParser;

    invoke-direct {v2}, Lcom/google/zxing/client/result/EmailAddressResultParser;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Lcom/google/zxing/client/result/SMTPResultParser;

    invoke-direct {v2}, Lcom/google/zxing/client/result/SMTPResultParser;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Lcom/google/zxing/client/result/TelResultParser;

    invoke-direct {v2}, Lcom/google/zxing/client/result/TelResultParser;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Lcom/google/zxing/client/result/SMSMMSResultParser;

    invoke-direct {v2}, Lcom/google/zxing/client/result/SMSMMSResultParser;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Lcom/google/zxing/client/result/SMSTOMMSTOResultParser;

    invoke-direct {v2}, Lcom/google/zxing/client/result/SMSTOMMSTOResultParser;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Lcom/google/zxing/client/result/GeoResultParser;

    invoke-direct {v2}, Lcom/google/zxing/client/result/GeoResultParser;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Lcom/google/zxing/client/result/WifiResultParser;

    invoke-direct {v2}, Lcom/google/zxing/client/result/WifiResultParser;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Lcom/google/zxing/client/result/URLTOResultParser;

    invoke-direct {v2}, Lcom/google/zxing/client/result/URLTOResultParser;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-instance v2, Lcom/google/zxing/client/result/URIResultParser;

    invoke-direct {v2}, Lcom/google/zxing/client/result/URIResultParser;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-instance v2, Lcom/google/zxing/client/result/ISBNResultParser;

    invoke-direct {v2}, Lcom/google/zxing/client/result/ISBNResultParser;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-instance v2, Lcom/google/zxing/client/result/ProductResultParser;

    invoke-direct {v2}, Lcom/google/zxing/client/result/ProductResultParser;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-instance v2, Lcom/google/zxing/client/result/ExpandedProductResultParser;

    invoke-direct {v2}, Lcom/google/zxing/client/result/ExpandedProductResultParser;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-instance v2, Lcom/google/zxing/client/result/VINResultParser;

    invoke-direct {v2}, Lcom/google/zxing/client/result/VINResultParser;-><init>()V

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/zxing/client/result/ResultParser;->a:[Lcom/google/zxing/client/result/ResultParser;

    const-string v0, "\\d+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/ResultParser;->b:Ljava/util/regex/Pattern;

    const-string v0, "&"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/ResultParser;->c:Ljava/util/regex/Pattern;

    const-string v0, "="

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/ResultParser;->d:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
