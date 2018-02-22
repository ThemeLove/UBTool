.class public Lcom/fanwei/bluearty/pluginmgr/widget/LayoutInflaterWrapper;
.super Landroid/view/LayoutInflater;


# static fields
.field private static final TAG:Ljava/lang/String; = "LayoutInflaterWrapper"


# instance fields
.field private final attrClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final idClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final layoutClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final screenTitle:I

.field private target:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;)V
    .registers 9

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/LayoutInflater;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/fanwei/bluearty/pluginmgr/widget/LayoutInflaterWrapper;->target:Landroid/view/LayoutInflater;

    const/4 v0, 0x0

    :try_start_b
    const-string v1, "com.android.internal.R$layout"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_10} :catch_31

    move-result-object v3

    :try_start_11
    const-string v1, "com.android.internal.R$id"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_16} :catch_3b

    move-result-object v2

    :try_start_17
    const-string v1, "com.android.internal.R$attr"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1c} :catch_41

    move-result-object v1

    :try_start_1d
    const-string v4, "screenTitle"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_27} :catch_46

    move-result v0

    :goto_28
    iput-object v3, p0, Lcom/fanwei/bluearty/pluginmgr/widget/LayoutInflaterWrapper;->layoutClass:Ljava/lang/Class;

    iput-object v2, p0, Lcom/fanwei/bluearty/pluginmgr/widget/LayoutInflaterWrapper;->idClass:Ljava/lang/Class;

    iput-object v1, p0, Lcom/fanwei/bluearty/pluginmgr/widget/LayoutInflaterWrapper;->attrClass:Ljava/lang/Class;

    iput v0, p0, Lcom/fanwei/bluearty/pluginmgr/widget/LayoutInflaterWrapper;->screenTitle:I

    return-void

    :catch_31
    move-exception v1

    move-object v2, v4

    move-object v3, v4

    move-object v6, v1

    move-object v1, v4

    move-object v4, v6

    :goto_37
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_28

    :catch_3b
    move-exception v1

    move-object v2, v4

    move-object v6, v4

    move-object v4, v1

    move-object v1, v6

    goto :goto_37

    :catch_41
    move-exception v1

    move-object v6, v1

    move-object v1, v4

    move-object v4, v6

    goto :goto_37

    :catch_46
    move-exception v4

    goto :goto_37
.end method

.method private createLayoutScreenSimple(ILandroid/view/ViewGroup;)Landroid/view/View;
    .registers 11

    const/4 v7, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    new-instance v5, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/fanwei/bluearty/pluginmgr/widget/LayoutInflaterWrapper;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v5, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v0, v2, :cond_33

    :try_start_15
    const-class v0, Landroid/widget/LinearLayout;

    const-string v2, "setFitsSystemWindows"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v5, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_33} :catch_b4

    :cond_33
    :goto_33
    :try_start_33
    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/widget/LayoutInflaterWrapper;->idClass:Ljava/lang/Class;

    const-string v2, "content"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_3f} :catch_a0

    move-result v2

    :try_start_40
    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/widget/LayoutInflaterWrapper;->idClass:Ljava/lang/Class;

    const-string v3, "action_mode_bar_stub"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_4c} :catch_a9

    move-result v3

    :try_start_4d
    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/widget/LayoutInflaterWrapper;->idClass:Ljava/lang/Class;

    const-string v4, "action_mode_bar"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_59
    .catch Ljava/lang/Throwable; {:try_start_4d .. :try_end_59} :catch_ae

    move-result v0

    :try_start_5a
    iget-object v4, p0, Lcom/fanwei/bluearty/pluginmgr/widget/LayoutInflaterWrapper;->layoutClass:Ljava/lang/Class;

    const-string v6, "action_mode_bar"

    invoke-virtual {v4, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_66
    .catch Ljava/lang/Throwable; {:try_start_5a .. :try_end_66} :catch_b2

    move-result v1

    :goto_67
    new-instance v4, Lcom/fanwei/bluearty/pluginmgr/widget/ViewStub;

    invoke-virtual {p0}, Lcom/fanwei/bluearty/pluginmgr/widget/LayoutInflaterWrapper;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/fanwei/bluearty/pluginmgr/widget/ViewStub;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3}, Lcom/fanwei/bluearty/pluginmgr/widget/ViewStub;->setId(I)V

    if-eqz v0, :cond_78

    invoke-virtual {v4, v0}, Lcom/fanwei/bluearty/pluginmgr/widget/ViewStub;->setInflatedId(I)V

    :cond_78
    if-eqz v1, :cond_7d

    invoke-virtual {v4, v1}, Lcom/fanwei/bluearty/pluginmgr/widget/ViewStub;->setLayoutResource(I)V

    :cond_7d
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v7, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/fanwei/bluearty/pluginmgr/widget/LayoutInflaterWrapper;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setId(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x37

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setForegroundGravity(I)V

    invoke-virtual {v5, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v5

    :catch_a0
    move-exception v0

    move-object v4, v0

    move v2, v1

    move v3, v1

    move v0, v1

    :goto_a5
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_67

    :catch_a9
    move-exception v0

    move-object v4, v0

    move v3, v1

    move v0, v1

    goto :goto_a5

    :catch_ae
    move-exception v0

    move-object v4, v0

    move v0, v1

    goto :goto_a5

    :catch_b2
    move-exception v4

    goto :goto_a5

    :catch_b4
    move-exception v0

    goto/16 :goto_33
.end method


# virtual methods
.method public cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;
    .registers 3

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/widget/LayoutInflaterWrapper;->target:Landroid/view/LayoutInflater;

    invoke-virtual {v0, p1}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/widget/LayoutInflaterWrapper;->target:Landroid/view/LayoutInflater;

    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getFilter()Landroid/view/LayoutInflater$Filter;
    .registers 2

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/widget/LayoutInflaterWrapper;->target:Landroid/view/LayoutInflater;

    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getFilter()Landroid/view/LayoutInflater$Filter;

    move-result-object v0

    return-object v0
.end method

.method public inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
    .registers 6

    const-string v0, "LayoutInflaterWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "inflate\u5e03\u5c40( resource="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", root="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/fanwei/bluearty/pluginmgr/widget/LayoutInflaterWrapper;->screenTitle:I

    if-ne p1, v0, :cond_38

    const-string v0, "LayoutInflaterWrapper"

    const-string v1, "\u4f7f\u7528\u81ea\u5b9a\u4e49\u5e03\u5c40"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2}, Lcom/fanwei/bluearty/pluginmgr/widget/LayoutInflaterWrapper;->createLayoutScreenSimple(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    :goto_37
    return-object v0

    :cond_38
    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/widget/LayoutInflaterWrapper;->target:Landroid/view/LayoutInflater;

    invoke-virtual {v0, p1, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_37
.end method

.method public inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
    .registers 5

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/widget/LayoutInflaterWrapper;->target:Landroid/view/LayoutInflater;

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 4

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/widget/LayoutInflaterWrapper;->target:Landroid/view/LayoutInflater;

    invoke-virtual {v0, p1, p2}, Landroid/view/LayoutInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;Z)Landroid/view/View;
    .registers 5

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/widget/LayoutInflaterWrapper;->target:Landroid/view/LayoutInflater;

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 9

    :try_start_0
    const-class v0, Landroid/view/LayoutInflater;

    const-string v1, "onCreateView"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/view/View;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-class v4, Landroid/util/AttributeSet;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/fanwei/bluearty/pluginmgr/widget/LayoutInflaterWrapper;->target:Landroid/view/LayoutInflater;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2e} :catch_2f

    :goto_2e
    return-object v0

    :catch_2f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-super {p0, p2, p3}, Landroid/view/LayoutInflater;->onCreateView(Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    goto :goto_2e
.end method

.method protected onCreateView(Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 8

    :try_start_0
    const-class v0, Landroid/view/LayoutInflater;

    const-string v1, "onCreateView"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Landroid/util/AttributeSet;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/fanwei/bluearty/pluginmgr/widget/LayoutInflaterWrapper;->target:Landroid/view/LayoutInflater;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_26} :catch_27

    :goto_26
    return-object v0

    :catch_27
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-super {p0, p1, p2}, Landroid/view/LayoutInflater;->onCreateView(Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    goto :goto_26
.end method

.method public setFactory(Landroid/view/LayoutInflater$Factory;)V
    .registers 3

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/widget/LayoutInflaterWrapper;->target:Landroid/view/LayoutInflater;

    invoke-virtual {v0, p1}, Landroid/view/LayoutInflater;->setFactory(Landroid/view/LayoutInflater$Factory;)V

    return-void
.end method

.method public setFilter(Landroid/view/LayoutInflater$Filter;)V
    .registers 3

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/widget/LayoutInflaterWrapper;->target:Landroid/view/LayoutInflater;

    invoke-virtual {v0, p1}, Landroid/view/LayoutInflater;->setFilter(Landroid/view/LayoutInflater$Filter;)V

    return-void
.end method
