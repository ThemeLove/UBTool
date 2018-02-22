.class public final Lcom/fanwei/jubaosdk/shell/internal/a;
.super Ljava/lang/Object;


# static fields
.field public static volatile a:Z

.field public static volatile b:Z

.field public static volatile c:Z

.field public static volatile d:Z

.field public static volatile e:J

.field public static volatile f:J

.field public static volatile g:J

.field public static volatile h:I

.field public static volatile i:I

.field public static volatile j:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v2, 0x1f40

    const/4 v0, 0x1

    sput-boolean v0, Lcom/fanwei/jubaosdk/shell/internal/a;->a:Z

    sput-boolean v0, Lcom/fanwei/jubaosdk/shell/internal/a;->b:Z

    sput-boolean v0, Lcom/fanwei/jubaosdk/shell/internal/a;->c:Z

    sput-boolean v0, Lcom/fanwei/jubaosdk/shell/internal/a;->d:Z

    const-wide/32 v0, 0x1d4c0

    sput-wide v0, Lcom/fanwei/jubaosdk/shell/internal/a;->e:J

    const-wide/16 v0, 0x7d0

    sput-wide v0, Lcom/fanwei/jubaosdk/shell/internal/a;->f:J

    const-wide/16 v0, 0x1388

    sput-wide v0, Lcom/fanwei/jubaosdk/shell/internal/a;->g:J

    const/16 v0, 0xa

    sput v0, Lcom/fanwei/jubaosdk/shell/internal/a;->h:I

    sput v2, Lcom/fanwei/jubaosdk/shell/internal/a;->i:I

    sput v2, Lcom/fanwei/jubaosdk/shell/internal/a;->j:I

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    sget-boolean v0, Lcom/fanwei/jubaosdk/shell/internal/a;->a:Z

    if-eqz v0, :cond_1c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_1c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method
