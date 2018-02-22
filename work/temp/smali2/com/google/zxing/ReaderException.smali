.class public abstract Lcom/google/zxing/ReaderException;
.super Ljava/lang/Exception;


# static fields
.field protected static final a:Z

.field protected static final b:[Ljava/lang/StackTraceElement;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    const-string v0, "surefire.test.class.path"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    :goto_a
    sput-boolean v0, Lcom/google/zxing/ReaderException;->a:Z

    new-array v0, v1, [Ljava/lang/StackTraceElement;

    sput-object v0, Lcom/google/zxing/ReaderException;->b:[Ljava/lang/StackTraceElement;

    return-void

    :cond_11
    move v0, v1

    goto :goto_a
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized fillInStackTrace()Ljava/lang/Throwable;
    .registers 2

    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0
.end method
