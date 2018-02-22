.class public final Lcom/fanwei/bluearty/pluginmgr/environment/CreateActivityData;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public activityName:Ljava/lang/String;

.field public pluginPkg:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fanwei/bluearty/pluginmgr/environment/CreateActivityData;->activityName:Ljava/lang/String;

    iput-object p2, p0, Lcom/fanwei/bluearty/pluginmgr/environment/CreateActivityData;->pluginPkg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/fanwei/bluearty/pluginmgr/environment/CreateActivityData;

    if-eqz v1, :cond_1c

    check-cast p1, Lcom/fanwei/bluearty/pluginmgr/environment/CreateActivityData;

    iget-object v1, p0, Lcom/fanwei/bluearty/pluginmgr/environment/CreateActivityData;->activityName:Ljava/lang/String;

    iget-object v2, p1, Lcom/fanwei/bluearty/pluginmgr/environment/CreateActivityData;->activityName:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lcom/fanwei/bluearty/pluginmgr/environment/CreateActivityData;->pluginPkg:Ljava/lang/String;

    iget-object v2, p1, Lcom/fanwei/bluearty/pluginmgr/environment/CreateActivityData;->pluginPkg:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1c

    const/4 v0, 0x1

    :cond_1c
    return v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/environment/CreateActivityData;->activityName:Ljava/lang/String;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/environment/CreateActivityData;->activityName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/fanwei/bluearty/pluginmgr/environment/CreateActivityData;->pluginPkg:Ljava/lang/String;

    if-eqz v2, :cond_17

    iget-object v1, p0, Lcom/fanwei/bluearty/pluginmgr/environment/CreateActivityData;->pluginPkg:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_17
    add-int/2addr v0, v1

    return v0

    :cond_19
    move v0, v1

    goto :goto_b
.end method
