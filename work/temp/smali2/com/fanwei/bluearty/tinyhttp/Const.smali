.class public Lcom/fanwei/bluearty/tinyhttp/Const;
.super Ljava/lang/Object;


# static fields
.field static final APP_BINARY:Ljava/lang/String; = "application/octet-stream"

.field static final APP_FORM:Ljava/lang/String; = "application/x-www-form-urlencoded"

.field static final APP_JSON:Ljava/lang/String; = "application/json"

.field static final BYTE_ARRAY_CLASS:Ljava/lang/Class;

.field static final DEFAULT_USER_AGENT:Ljava/lang/String; = "com.fanwei.bluearty.tinyhttp.Webb/1.0"

.field static final EMPTY_BYTE_ARRAY:[B

.field static final HDR_ACCEPT:Ljava/lang/String; = "Accept"

.field static final HDR_ACCEPT_ENCODING:Ljava/lang/String; = "Accept-Encoding"

.field static final HDR_CONTENT_ENCODING:Ljava/lang/String; = "Content-Encoding"

.field static final HDR_CONTENT_TYPE:Ljava/lang/String; = "Content-Type"

.field static final HDR_USER_AGENT:Ljava/lang/String; = "User-Agent"

.field static final MIN_COMPRESSED_ADVANTAGE:I = 0x50

.field static final TEXT_PLAIN:Ljava/lang/String; = "text/plain"

.field static final UTF8:Ljava/lang/String; = "utf-8"

.field private static pringLog:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    new-array v0, v1, [B

    sput-object v0, Lcom/fanwei/bluearty/tinyhttp/Const;->EMPTY_BYTE_ARRAY:[B

    sget-object v0, Lcom/fanwei/bluearty/tinyhttp/Const;->EMPTY_BYTE_ARRAY:[B

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/fanwei/bluearty/tinyhttp/Const;->BYTE_ARRAY_CLASS:Ljava/lang/Class;

    sput-boolean v1, Lcom/fanwei/bluearty/tinyhttp/Const;->pringLog:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static print(Ljava/lang/String;)V
    .registers 3

    if-nez p0, :cond_3

    :cond_2
    :goto_2
    return-void

    :cond_3
    sget-boolean v0, Lcom/fanwei/bluearty/tinyhttp/Const;->pringLog:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const-string v0, "fanwei"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public static setPrintLog(Z)V
    .registers 1

    sput-boolean p0, Lcom/fanwei/bluearty/tinyhttp/Const;->pringLog:Z

    return-void
.end method
