.class public Lcom/vas/vassdk/util/VasConstant;
.super Ljava/lang/Object;
.source "VasConstant.java"


# static fields
.field public static final INIT_SIGN_KEY:Ljava/lang/String; = "41ff537415a19cad4096e2cd0390abeb"

.field public static final REQUEST_INIT:I = 0x1

.field public static final REQUEST_LOGIN:I = 0x3

.field public static final REQUEST_ORDER:I = 0x2

.field public static final VASINIT_URL:Ljava/lang/String; = "http://game.g.pptv.com/api/sdk/cgconf.php"

.field public static final VASORDER_URL:Ljava/lang/String; = "http://game.g.pptv.com/api/sdk/order/index.php"

.field public static final VASUSERINFO_URL:Ljava/lang/String; = "http://game.g.pptv.com/api/sdk/integration/get_user_info.php"

.field public static isAsscessLogin:Z

.field public static isAsscessPay:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x1

    .line 26
    sput-boolean v0, Lcom/vas/vassdk/util/VasConstant;->isAsscessLogin:Z

    .line 28
    sput-boolean v0, Lcom/vas/vassdk/util/VasConstant;->isAsscessPay:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
