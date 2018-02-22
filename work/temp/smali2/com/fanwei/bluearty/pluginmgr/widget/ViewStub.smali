.class public final Lcom/fanwei/bluearty/pluginmgr/widget/ViewStub;
.super Landroid/view/View;


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fanwei/bluearty/pluginmgr/widget/ViewStub$OnInflateListener;
    }
.end annotation


# instance fields
.field private mInflateListener:Lcom/fanwei/bluearty/pluginmgr/widget/ViewStub$OnInflateListener;

.field private mInflatedId:I

.field private mInflatedViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLayoutResource:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/fanwei/bluearty/pluginmgr/widget/ViewStub;->mLayoutResource:I

    invoke-direct {p0, p1}, Lcom/fanwei/bluearty/pluginmgr/widget/ViewStub;->initialize(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/fanwei/bluearty/pluginmgr/widget/ViewStub;->mLayoutResource:I

    iput p2, p0, Lcom/fanwei/bluearty/pluginmgr/widget/ViewStub;->mLayoutResource:I

    invoke-direct {p0, p1}, Lcom/fanwei/bluearty/pluginmgr/widget/ViewStub;->initialize(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/fanwei/bluearty/pluginmgr/widget/ViewStub;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 15

    const/4 v8, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput v3, p0, Lcom/fanwei/bluearty/pluginmgr/widget/ViewStub;->mLayoutResource:I

    :try_start_8
    const-string v0, "com.android.internal.R$styleable"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const-string v0, "ViewStub"

    invoke-virtual {v6, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    check-cast v0, [I
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1d} :catch_77

    :try_start_1d
    const-string v1, "ViewStub_inflatedId"

    invoke-virtual {v6, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_27} :catch_85

    move-result v5

    :try_start_28
    const-string v1, "ViewStub_layout"

    invoke-virtual {v6, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_32} :catch_8c

    move-result v4

    :try_start_33
    const-string v1, "View"

    invoke-virtual {v6, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    check-cast v1, [I
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_42} :catch_94

    :try_start_42
    const-string v2, "View_id"

    invoke-virtual {v6, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_4c} :catch_9d

    move-result v2

    move v9, v2

    move v2, v4

    move v4, v5

    move-object v5, v0

    move v0, v9

    :goto_52
    invoke-virtual {p1, p2, v5, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    invoke-virtual {v5, v4, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Lcom/fanwei/bluearty/pluginmgr/widget/ViewStub;->mInflatedId:I

    invoke-virtual {v5, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/fanwei/bluearty/pluginmgr/widget/ViewStub;->mLayoutResource:I

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p1, p2, v1, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-virtual {v1, v0, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/fanwei/bluearty/pluginmgr/widget/ViewStub;->setId(I)V

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0, p1}, Lcom/fanwei/bluearty/pluginmgr/widget/ViewStub;->initialize(Landroid/content/Context;)V

    return-void

    :catch_77
    move-exception v0

    move-object v5, v0

    move-object v1, v2

    move-object v4, v2

    move v2, v3

    move v0, v3

    :goto_7d
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    move-object v5, v4

    move v4, v2

    move v2, v0

    move v0, v3

    goto :goto_52

    :catch_85
    move-exception v1

    move-object v5, v1

    move-object v4, v0

    move v0, v3

    move-object v1, v2

    move v2, v3

    goto :goto_7d

    :catch_8c
    move-exception v1

    move-object v4, v0

    move v0, v3

    move-object v9, v2

    move v2, v5

    move-object v5, v1

    move-object v1, v9

    goto :goto_7d

    :catch_94
    move-exception v1

    move-object v9, v1

    move-object v1, v2

    move v2, v5

    move-object v5, v9

    move v10, v4

    move-object v4, v0

    move v0, v10

    goto :goto_7d

    :catch_9d
    move-exception v2

    move-object v9, v2

    move v2, v5

    move-object v5, v9

    move v10, v4

    move-object v4, v0

    move v0, v10

    goto :goto_7d
.end method

.method private initialize(Landroid/content/Context;)V
    .registers 3

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/fanwei/bluearty/pluginmgr/widget/ViewStub;->setVisibility(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/fanwei/bluearty/pluginmgr/widget/ViewStub;->setWillNotDraw(Z)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 2

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingSuperCall"
        }
    .end annotation

    return-void
.end method

.method public getInflatedId()I
    .registers 2

    iget v0, p0, Lcom/fanwei/bluearty/pluginmgr/widget/ViewStub;->mInflatedId:I

    return v0
.end method

.method public getLayoutInflater()Landroid/view/LayoutInflater;
    .registers 2

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/widget/ViewStub;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public getLayoutResource()I
    .registers 2

    iget v0, p0, Lcom/fanwei/bluearty/pluginmgr/widget/ViewStub;->mLayoutResource:I

    return v0
.end method

.method public inflate()Landroid/view/View;
    .registers 5

    invoke-virtual {p0}, Lcom/fanwei/bluearty/pluginmgr/widget/ViewStub;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_5d

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_5d

    iget v1, p0, Lcom/fanwei/bluearty/pluginmgr/widget/ViewStub;->mLayoutResource:I

    if-eqz v1, :cond_55

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/fanwei/bluearty/pluginmgr/widget/ViewStub;->mInflater:Landroid/view/LayoutInflater;

    if-eqz v1, :cond_48

    iget-object v1, p0, Lcom/fanwei/bluearty/pluginmgr/widget/ViewStub;->mInflater:Landroid/view/LayoutInflater;

    :goto_16
    iget v2, p0, Lcom/fanwei/bluearty/pluginmgr/widget/ViewStub;->mLayoutResource:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/fanwei/bluearty/pluginmgr/widget/ViewStub;->mInflatedId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_27

    iget v2, p0, Lcom/fanwei/bluearty/pluginmgr/widget/ViewStub;->mInflatedId:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setId(I)V

    :cond_27
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/fanwei/bluearty/pluginmgr/widget/ViewStub;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    if-eqz v3, :cond_51

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :goto_37
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/widget/ViewStub;->mInflatedViewRef:Ljava/lang/ref/WeakReference;

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/widget/ViewStub;->mInflateListener:Lcom/fanwei/bluearty/pluginmgr/widget/ViewStub$OnInflateListener;

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/widget/ViewStub;->mInflateListener:Lcom/fanwei/bluearty/pluginmgr/widget/ViewStub$OnInflateListener;

    invoke-interface {v0, p0, v1}, Lcom/fanwei/bluearty/pluginmgr/widget/ViewStub$OnInflateListener;->onInflate(Lcom/fanwei/bluearty/pluginmgr/widget/ViewStub;Landroid/view/View;)V

    :cond_47
    return-object v1

    :cond_48
    invoke-virtual {p0}, Lcom/fanwei/bluearty/pluginmgr/widget/ViewStub;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    goto :goto_16

    :cond_51
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_37

    :cond_55
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ViewStub must have a valid layoutResource"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ViewStub must have a non-null ViewGroup viewParent"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected onMeasure(II)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/fanwei/bluearty/pluginmgr/widget/ViewStub;->setMeasuredDimension(II)V

    return-void
.end method

.method public setInflatedId(I)V
    .registers 2

    iput p1, p0, Lcom/fanwei/bluearty/pluginmgr/widget/ViewStub;->mInflatedId:I

    return-void
.end method

.method public setLayoutInflater(Landroid/view/LayoutInflater;)V
    .registers 2

    iput-object p1, p0, Lcom/fanwei/bluearty/pluginmgr/widget/ViewStub;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method public setLayoutResource(I)V
    .registers 2

    iput p1, p0, Lcom/fanwei/bluearty/pluginmgr/widget/ViewStub;->mLayoutResource:I

    return-void
.end method

.method public setOnInflateListener(Lcom/fanwei/bluearty/pluginmgr/widget/ViewStub$OnInflateListener;)V
    .registers 2

    iput-object p1, p0, Lcom/fanwei/bluearty/pluginmgr/widget/ViewStub;->mInflateListener:Lcom/fanwei/bluearty/pluginmgr/widget/ViewStub$OnInflateListener;

    return-void
.end method

.method public setVisibility(I)V
    .registers 4

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/widget/ViewStub;->mInflatedViewRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/widget/ViewStub;->mInflatedViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_12

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_11
    :goto_11
    return-void

    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setVisibility called on un-referenced view"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_22

    const/4 v0, 0x4

    if-ne p1, v0, :cond_11

    :cond_22
    invoke-virtual {p0}, Lcom/fanwei/bluearty/pluginmgr/widget/ViewStub;->inflate()Landroid/view/View;

    goto :goto_11
.end method
