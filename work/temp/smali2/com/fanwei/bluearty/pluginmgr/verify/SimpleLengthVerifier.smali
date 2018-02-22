.class public Lcom/fanwei/bluearty/pluginmgr/verify/SimpleLengthVerifier;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/fanwei/bluearty/pluginmgr/verify/PluginOverdueVerifier;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isOverdue(Ljava/io/File;Ljava/io/File;)Z
    .registers 7

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method
