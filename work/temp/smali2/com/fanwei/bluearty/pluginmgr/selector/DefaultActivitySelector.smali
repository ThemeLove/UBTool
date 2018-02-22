.class public Lcom/fanwei/bluearty/pluginmgr/selector/DefaultActivitySelector;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/fanwei/bluearty/pluginmgr/selector/DynamicActivitySelector;


# static fields
.field private static DEFAULT:Lcom/fanwei/bluearty/pluginmgr/selector/DynamicActivitySelector;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/fanwei/bluearty/pluginmgr/selector/DefaultActivitySelector;

    invoke-direct {v0}, Lcom/fanwei/bluearty/pluginmgr/selector/DefaultActivitySelector;-><init>()V

    sput-object v0, Lcom/fanwei/bluearty/pluginmgr/selector/DefaultActivitySelector;->DEFAULT:Lcom/fanwei/bluearty/pluginmgr/selector/DynamicActivitySelector;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefault()Lcom/fanwei/bluearty/pluginmgr/selector/DynamicActivitySelector;
    .registers 1

    sget-object v0, Lcom/fanwei/bluearty/pluginmgr/selector/DefaultActivitySelector;->DEFAULT:Lcom/fanwei/bluearty/pluginmgr/selector/DynamicActivitySelector;

    return-object v0
.end method


# virtual methods
.method public selectDynamicActivity(Landroid/content/pm/ActivityInfo;)Ljava/lang/Class;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ActivityInfo;",
            ")",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/fanwei/bluearty/pluginmgr/DynamicActivity;

    return-object v0
.end method
