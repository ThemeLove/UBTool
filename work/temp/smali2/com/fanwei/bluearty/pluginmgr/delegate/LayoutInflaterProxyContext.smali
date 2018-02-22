.class public Lcom/fanwei/bluearty/pluginmgr/delegate/LayoutInflaterProxyContext;
.super Landroid/content/ContextWrapper;


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    const-string v0, "layout_inflater"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/delegate/LayoutInflaterProxyContext;->mInflater:Landroid/view/LayoutInflater;

    if-nez v0, :cond_1a

    invoke-virtual {p0}, Lcom/fanwei/bluearty/pluginmgr/delegate/LayoutInflaterProxyContext;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/delegate/LayoutInflaterProxyContext;->mInflater:Landroid/view/LayoutInflater;

    :cond_1a
    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/delegate/LayoutInflaterProxyContext;->mInflater:Landroid/view/LayoutInflater;

    :goto_1c
    return-object v0

    :cond_1d
    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1c
.end method
