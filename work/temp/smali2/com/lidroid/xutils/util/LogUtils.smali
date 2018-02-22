.class public Lcom/lidroid/xutils/util/LogUtils;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lidroid/xutils/util/LogUtils$CustomLogger;
    }
.end annotation


# static fields
.field public static allowD:Z

.field public static allowE:Z

.field public static allowI:Z

.field public static allowV:Z

.field public static allowW:Z

.field public static allowWtf:Z

.field public static customLogger:Lcom/lidroid/xutils/util/LogUtils$CustomLogger;

.field public static customTagPrefix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x1

    const-string v0, ""

    sput-object v0, Lcom/lidroid/xutils/util/LogUtils;->customTagPrefix:Ljava/lang/String;

    sput-boolean v1, Lcom/lidroid/xutils/util/LogUtils;->allowD:Z

    sput-boolean v1, Lcom/lidroid/xutils/util/LogUtils;->allowE:Z

    sput-boolean v1, Lcom/lidroid/xutils/util/LogUtils;->allowI:Z

    sput-boolean v1, Lcom/lidroid/xutils/util/LogUtils;->allowV:Z

    sput-boolean v1, Lcom/lidroid/xutils/util/LogUtils;->allowW:Z

    sput-boolean v1, Lcom/lidroid/xutils/util/LogUtils;->allowWtf:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .registers 3

    sget-boolean v0, Lcom/lidroid/xutils/util/LogUtils;->allowD:Z

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    invoke-static {}, Lcom/lidroid/xutils/util/OtherUtils;->getCallerStackTraceElement()Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-static {v0}, Lcom/lidroid/xutils/util/LogUtils;->generateTag(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/lidroid/xutils/util/LogUtils;->customLogger:Lcom/lidroid/xutils/util/LogUtils$CustomLogger;

    if-eqz v1, :cond_17

    sget-object v1, Lcom/lidroid/xutils/util/LogUtils;->customLogger:Lcom/lidroid/xutils/util/LogUtils$CustomLogger;

    invoke-interface {v1, v0, p0}, Lcom/lidroid/xutils/util/LogUtils$CustomLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_17
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method public static d(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    sget-boolean v0, Lcom/lidroid/xutils/util/LogUtils;->allowD:Z

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    invoke-static {}, Lcom/lidroid/xutils/util/OtherUtils;->getCallerStackTraceElement()Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-static {v0}, Lcom/lidroid/xutils/util/LogUtils;->generateTag(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/lidroid/xutils/util/LogUtils;->customLogger:Lcom/lidroid/xutils/util/LogUtils$CustomLogger;

    if-eqz v1, :cond_17

    sget-object v1, Lcom/lidroid/xutils/util/LogUtils;->customLogger:Lcom/lidroid/xutils/util/LogUtils$CustomLogger;

    invoke-interface {v1, v0, p0, p1}, Lcom/lidroid/xutils/util/LogUtils$CustomLogger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_17
    invoke-static {v0, p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4
.end method

.method public static e(Ljava/lang/String;)V
    .registers 3

    sget-boolean v0, Lcom/lidroid/xutils/util/LogUtils;->allowE:Z

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    invoke-static {}, Lcom/lidroid/xutils/util/OtherUtils;->getCallerStackTraceElement()Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-static {v0}, Lcom/lidroid/xutils/util/LogUtils;->generateTag(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/lidroid/xutils/util/LogUtils;->customLogger:Lcom/lidroid/xutils/util/LogUtils$CustomLogger;

    if-eqz v1, :cond_17

    sget-object v1, Lcom/lidroid/xutils/util/LogUtils;->customLogger:Lcom/lidroid/xutils/util/LogUtils$CustomLogger;

    invoke-interface {v1, v0, p0}, Lcom/lidroid/xutils/util/LogUtils$CustomLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_17
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    sget-boolean v0, Lcom/lidroid/xutils/util/LogUtils;->allowE:Z

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    invoke-static {}, Lcom/lidroid/xutils/util/OtherUtils;->getCallerStackTraceElement()Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-static {v0}, Lcom/lidroid/xutils/util/LogUtils;->generateTag(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/lidroid/xutils/util/LogUtils;->customLogger:Lcom/lidroid/xutils/util/LogUtils$CustomLogger;

    if-eqz v1, :cond_17

    sget-object v1, Lcom/lidroid/xutils/util/LogUtils;->customLogger:Lcom/lidroid/xutils/util/LogUtils$CustomLogger;

    invoke-interface {v1, v0, p0, p1}, Lcom/lidroid/xutils/util/LogUtils$CustomLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_17
    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4
.end method

.method private static generateTag(Ljava/lang/StackTraceElement;)Ljava/lang/String;
    .registers 5

    const-string v0, "%s.%s(L:%d)"

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v1, 0x2

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/lidroid/xutils/util/LogUtils;->customTagPrefix:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_37

    :goto_36
    return-object v0

    :cond_37
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/lidroid/xutils/util/LogUtils;->customTagPrefix:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_36
.end method

.method public static i(Ljava/lang/String;)V
    .registers 3

    sget-boolean v0, Lcom/lidroid/xutils/util/LogUtils;->allowI:Z

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    invoke-static {}, Lcom/lidroid/xutils/util/OtherUtils;->getCallerStackTraceElement()Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-static {v0}, Lcom/lidroid/xutils/util/LogUtils;->generateTag(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/lidroid/xutils/util/LogUtils;->customLogger:Lcom/lidroid/xutils/util/LogUtils$CustomLogger;

    if-eqz v1, :cond_17

    sget-object v1, Lcom/lidroid/xutils/util/LogUtils;->customLogger:Lcom/lidroid/xutils/util/LogUtils$CustomLogger;

    invoke-interface {v1, v0, p0}, Lcom/lidroid/xutils/util/LogUtils$CustomLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_17
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method public static i(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    sget-boolean v0, Lcom/lidroid/xutils/util/LogUtils;->allowI:Z

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    invoke-static {}, Lcom/lidroid/xutils/util/OtherUtils;->getCallerStackTraceElement()Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-static {v0}, Lcom/lidroid/xutils/util/LogUtils;->generateTag(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/lidroid/xutils/util/LogUtils;->customLogger:Lcom/lidroid/xutils/util/LogUtils$CustomLogger;

    if-eqz v1, :cond_17

    sget-object v1, Lcom/lidroid/xutils/util/LogUtils;->customLogger:Lcom/lidroid/xutils/util/LogUtils$CustomLogger;

    invoke-interface {v1, v0, p0, p1}, Lcom/lidroid/xutils/util/LogUtils$CustomLogger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_17
    invoke-static {v0, p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4
.end method

.method public static v(Ljava/lang/String;)V
    .registers 3

    sget-boolean v0, Lcom/lidroid/xutils/util/LogUtils;->allowV:Z

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    invoke-static {}, Lcom/lidroid/xutils/util/OtherUtils;->getCallerStackTraceElement()Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-static {v0}, Lcom/lidroid/xutils/util/LogUtils;->generateTag(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/lidroid/xutils/util/LogUtils;->customLogger:Lcom/lidroid/xutils/util/LogUtils$CustomLogger;

    if-eqz v1, :cond_17

    sget-object v1, Lcom/lidroid/xutils/util/LogUtils;->customLogger:Lcom/lidroid/xutils/util/LogUtils$CustomLogger;

    invoke-interface {v1, v0, p0}, Lcom/lidroid/xutils/util/LogUtils$CustomLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_17
    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method public static v(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    sget-boolean v0, Lcom/lidroid/xutils/util/LogUtils;->allowV:Z

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    invoke-static {}, Lcom/lidroid/xutils/util/OtherUtils;->getCallerStackTraceElement()Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-static {v0}, Lcom/lidroid/xutils/util/LogUtils;->generateTag(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/lidroid/xutils/util/LogUtils;->customLogger:Lcom/lidroid/xutils/util/LogUtils$CustomLogger;

    if-eqz v1, :cond_17

    sget-object v1, Lcom/lidroid/xutils/util/LogUtils;->customLogger:Lcom/lidroid/xutils/util/LogUtils$CustomLogger;

    invoke-interface {v1, v0, p0, p1}, Lcom/lidroid/xutils/util/LogUtils$CustomLogger;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_17
    invoke-static {v0, p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4
.end method

.method public static w(Ljava/lang/String;)V
    .registers 3

    sget-boolean v0, Lcom/lidroid/xutils/util/LogUtils;->allowW:Z

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    invoke-static {}, Lcom/lidroid/xutils/util/OtherUtils;->getCallerStackTraceElement()Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-static {v0}, Lcom/lidroid/xutils/util/LogUtils;->generateTag(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/lidroid/xutils/util/LogUtils;->customLogger:Lcom/lidroid/xutils/util/LogUtils$CustomLogger;

    if-eqz v1, :cond_17

    sget-object v1, Lcom/lidroid/xutils/util/LogUtils;->customLogger:Lcom/lidroid/xutils/util/LogUtils$CustomLogger;

    invoke-interface {v1, v0, p0}, Lcom/lidroid/xutils/util/LogUtils$CustomLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_17
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    sget-boolean v0, Lcom/lidroid/xutils/util/LogUtils;->allowW:Z

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    invoke-static {}, Lcom/lidroid/xutils/util/OtherUtils;->getCallerStackTraceElement()Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-static {v0}, Lcom/lidroid/xutils/util/LogUtils;->generateTag(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/lidroid/xutils/util/LogUtils;->customLogger:Lcom/lidroid/xutils/util/LogUtils$CustomLogger;

    if-eqz v1, :cond_17

    sget-object v1, Lcom/lidroid/xutils/util/LogUtils;->customLogger:Lcom/lidroid/xutils/util/LogUtils$CustomLogger;

    invoke-interface {v1, v0, p0, p1}, Lcom/lidroid/xutils/util/LogUtils$CustomLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_17
    invoke-static {v0, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4
.end method

.method public static w(Ljava/lang/Throwable;)V
    .registers 3

    sget-boolean v0, Lcom/lidroid/xutils/util/LogUtils;->allowW:Z

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    invoke-static {}, Lcom/lidroid/xutils/util/OtherUtils;->getCallerStackTraceElement()Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-static {v0}, Lcom/lidroid/xutils/util/LogUtils;->generateTag(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/lidroid/xutils/util/LogUtils;->customLogger:Lcom/lidroid/xutils/util/LogUtils$CustomLogger;

    if-eqz v1, :cond_17

    sget-object v1, Lcom/lidroid/xutils/util/LogUtils;->customLogger:Lcom/lidroid/xutils/util/LogUtils$CustomLogger;

    invoke-interface {v1, v0, p0}, Lcom/lidroid/xutils/util/LogUtils$CustomLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_17
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4
.end method

.method public static wtf(Ljava/lang/String;)V
    .registers 3

    sget-boolean v0, Lcom/lidroid/xutils/util/LogUtils;->allowWtf:Z

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    invoke-static {}, Lcom/lidroid/xutils/util/OtherUtils;->getCallerStackTraceElement()Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-static {v0}, Lcom/lidroid/xutils/util/LogUtils;->generateTag(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/lidroid/xutils/util/LogUtils;->customLogger:Lcom/lidroid/xutils/util/LogUtils$CustomLogger;

    if-eqz v1, :cond_17

    sget-object v1, Lcom/lidroid/xutils/util/LogUtils;->customLogger:Lcom/lidroid/xutils/util/LogUtils$CustomLogger;

    invoke-interface {v1, v0, p0}, Lcom/lidroid/xutils/util/LogUtils$CustomLogger;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_17
    invoke-static {v0, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method public static wtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    sget-boolean v0, Lcom/lidroid/xutils/util/LogUtils;->allowWtf:Z

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    invoke-static {}, Lcom/lidroid/xutils/util/OtherUtils;->getCallerStackTraceElement()Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-static {v0}, Lcom/lidroid/xutils/util/LogUtils;->generateTag(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/lidroid/xutils/util/LogUtils;->customLogger:Lcom/lidroid/xutils/util/LogUtils$CustomLogger;

    if-eqz v1, :cond_17

    sget-object v1, Lcom/lidroid/xutils/util/LogUtils;->customLogger:Lcom/lidroid/xutils/util/LogUtils$CustomLogger;

    invoke-interface {v1, v0, p0, p1}, Lcom/lidroid/xutils/util/LogUtils$CustomLogger;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_17
    invoke-static {v0, p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4
.end method

.method public static wtf(Ljava/lang/Throwable;)V
    .registers 3

    sget-boolean v0, Lcom/lidroid/xutils/util/LogUtils;->allowWtf:Z

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    invoke-static {}, Lcom/lidroid/xutils/util/OtherUtils;->getCallerStackTraceElement()Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-static {v0}, Lcom/lidroid/xutils/util/LogUtils;->generateTag(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/lidroid/xutils/util/LogUtils;->customLogger:Lcom/lidroid/xutils/util/LogUtils$CustomLogger;

    if-eqz v1, :cond_17

    sget-object v1, Lcom/lidroid/xutils/util/LogUtils;->customLogger:Lcom/lidroid/xutils/util/LogUtils$CustomLogger;

    invoke-interface {v1, v0, p0}, Lcom/lidroid/xutils/util/LogUtils$CustomLogger;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_17
    invoke-static {v0, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4
.end method
