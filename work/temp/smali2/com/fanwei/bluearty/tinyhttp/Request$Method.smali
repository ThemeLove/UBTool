.class public final enum Lcom/fanwei/bluearty/tinyhttp/Request$Method;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fanwei/bluearty/tinyhttp/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Method"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fanwei/bluearty/tinyhttp/Request$Method;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fanwei/bluearty/tinyhttp/Request$Method;

.field public static final enum DELETE:Lcom/fanwei/bluearty/tinyhttp/Request$Method;

.field public static final enum GET:Lcom/fanwei/bluearty/tinyhttp/Request$Method;

.field public static final enum POST:Lcom/fanwei/bluearty/tinyhttp/Request$Method;

.field public static final enum PUT:Lcom/fanwei/bluearty/tinyhttp/Request$Method;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/fanwei/bluearty/tinyhttp/Request$Method;

    const-string v1, "GET"

    invoke-direct {v0, v1, v2}, Lcom/fanwei/bluearty/tinyhttp/Request$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fanwei/bluearty/tinyhttp/Request$Method;->GET:Lcom/fanwei/bluearty/tinyhttp/Request$Method;

    new-instance v0, Lcom/fanwei/bluearty/tinyhttp/Request$Method;

    const-string v1, "POST"

    invoke-direct {v0, v1, v3}, Lcom/fanwei/bluearty/tinyhttp/Request$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fanwei/bluearty/tinyhttp/Request$Method;->POST:Lcom/fanwei/bluearty/tinyhttp/Request$Method;

    new-instance v0, Lcom/fanwei/bluearty/tinyhttp/Request$Method;

    const-string v1, "PUT"

    invoke-direct {v0, v1, v4}, Lcom/fanwei/bluearty/tinyhttp/Request$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fanwei/bluearty/tinyhttp/Request$Method;->PUT:Lcom/fanwei/bluearty/tinyhttp/Request$Method;

    new-instance v0, Lcom/fanwei/bluearty/tinyhttp/Request$Method;

    const-string v1, "DELETE"

    invoke-direct {v0, v1, v5}, Lcom/fanwei/bluearty/tinyhttp/Request$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fanwei/bluearty/tinyhttp/Request$Method;->DELETE:Lcom/fanwei/bluearty/tinyhttp/Request$Method;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/fanwei/bluearty/tinyhttp/Request$Method;

    sget-object v1, Lcom/fanwei/bluearty/tinyhttp/Request$Method;->GET:Lcom/fanwei/bluearty/tinyhttp/Request$Method;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fanwei/bluearty/tinyhttp/Request$Method;->POST:Lcom/fanwei/bluearty/tinyhttp/Request$Method;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fanwei/bluearty/tinyhttp/Request$Method;->PUT:Lcom/fanwei/bluearty/tinyhttp/Request$Method;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fanwei/bluearty/tinyhttp/Request$Method;->DELETE:Lcom/fanwei/bluearty/tinyhttp/Request$Method;

    aput-object v1, v0, v5

    sput-object v0, Lcom/fanwei/bluearty/tinyhttp/Request$Method;->$VALUES:[Lcom/fanwei/bluearty/tinyhttp/Request$Method;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fanwei/bluearty/tinyhttp/Request$Method;
    .registers 2

    const-class v0, Lcom/fanwei/bluearty/tinyhttp/Request$Method;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fanwei/bluearty/tinyhttp/Request$Method;

    return-object v0
.end method

.method public static values()[Lcom/fanwei/bluearty/tinyhttp/Request$Method;
    .registers 1

    sget-object v0, Lcom/fanwei/bluearty/tinyhttp/Request$Method;->$VALUES:[Lcom/fanwei/bluearty/tinyhttp/Request$Method;

    invoke-virtual {v0}, [Lcom/fanwei/bluearty/tinyhttp/Request$Method;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fanwei/bluearty/tinyhttp/Request$Method;

    return-object v0
.end method
