.class public Lcom/fanwei/bluearty/pluginmgr/utils/Trace;
.super Ljava/lang/Object;


# static fields
.field public static LOG_OUTPUT:Z

.field private static final _TRACE_BUILDER:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x1

    sput-boolean v0, Lcom/fanwei/bluearty/pluginmgr/utils/Trace;->LOG_OUTPUT:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    sput-object v0, Lcom/fanwei/bluearty/pluginmgr/utils/Trace;->_TRACE_BUILDER:Ljava/lang/StringBuilder;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearTrace()V
    .registers 3

    sget-object v0, Lcom/fanwei/bluearty/pluginmgr/utils/Trace;->_TRACE_BUILDER:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    sget-object v2, Lcom/fanwei/bluearty/pluginmgr/utils/Trace;->_TRACE_BUILDER:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static getTrace()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/fanwei/bluearty/pluginmgr/utils/Trace;->_TRACE_BUILDER:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static object2Msg(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_6
    return-object v0

    :cond_7
    const-string v0, " "

    goto :goto_6
.end method

.method public static store(Ljava/lang/Object;)V
    .registers 4

    invoke-static {p0}, Lcom/fanwei/bluearty/pluginmgr/utils/Trace;->object2Msg(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/fanwei/bluearty/pluginmgr/utils/Trace;->_TRACE_BUILDER:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/fanwei/bluearty/pluginmgr/utils/Trace;->LOG_OUTPUT:Z

    if-eqz v1, :cond_18

    const-string v1, "PluginMgr-Trace"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    return-void
.end method
