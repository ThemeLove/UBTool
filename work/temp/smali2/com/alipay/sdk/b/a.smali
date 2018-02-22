.class public final Lcom/alipay/sdk/b/a;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "http://mobilegw.alipay.com/mgw.htm"

    sput-object v0, Lcom/alipay/sdk/b/a;->a:Ljava/lang/String;

    const-string v0, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDENksAVqDoz5SMCZq0bsZwE+I3NjrANyTTwUVSf1+ec1PfPB4tiocEpYJFCYju9MIbawR8ivECbUWjpffZq5QllJg+19CB7V5rYGcEnb/M7CS3lFF2sNcRFJUtXUUAqyR3/l7PmpxTwObZ4DLG258dhE2vFlVGXjnuLs+FI2hg4QIDAQAB"

    sput-object v0, Lcom/alipay/sdk/b/a;->b:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/sdk/b/a;->c:Z

    return-void
.end method
