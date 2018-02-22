.class public final Lcom/fanwei/bluearty/pluginmgr/delegate/DelegateActivityThread;
.super Ljava/lang/Object;


# static fields
.field private static SINGLETON:Lcom/fanwei/bluearty/pluginmgr/delegate/DelegateActivityThread;


# instance fields
.field private activityThreadReflect:Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/fanwei/bluearty/pluginmgr/delegate/DelegateActivityThread;

    invoke-direct {v0}, Lcom/fanwei/bluearty/pluginmgr/delegate/DelegateActivityThread;-><init>()V

    sput-object v0, Lcom/fanwei/bluearty/pluginmgr/delegate/DelegateActivityThread;->SINGLETON:Lcom/fanwei/bluearty/pluginmgr/delegate/DelegateActivityThread;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-static {v0}, Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect;->on(Ljava/lang/Object;)Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect;

    move-result-object v0

    iput-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/delegate/DelegateActivityThread;->activityThreadReflect:Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect;

    return-void
.end method

.method public static getSingleton()Lcom/fanwei/bluearty/pluginmgr/delegate/DelegateActivityThread;
    .registers 1

    sget-object v0, Lcom/fanwei/bluearty/pluginmgr/delegate/DelegateActivityThread;->SINGLETON:Lcom/fanwei/bluearty/pluginmgr/delegate/DelegateActivityThread;

    return-object v0
.end method


# virtual methods
.method public getInitialApplication()Landroid/app/Application;
    .registers 3

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/delegate/DelegateActivityThread;->activityThreadReflect:Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect;

    const-string v1, "mInitialApplication"

    invoke-virtual {v0, v1}, Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    return-object v0
.end method

.method public getInstrumentation()Landroid/app/Instrumentation;
    .registers 3

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/delegate/DelegateActivityThread;->activityThreadReflect:Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect;

    const-string v1, "mInstrumentation"

    invoke-virtual {v0, v1}, Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Instrumentation;

    return-object v0
.end method

.method public setInstrumentation(Landroid/app/Instrumentation;)V
    .registers 4

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/delegate/DelegateActivityThread;->activityThreadReflect:Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect;

    const-string v1, "mInstrumentation"

    invoke-virtual {v0, v1, p1}, Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect;

    return-void
.end method
