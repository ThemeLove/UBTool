.class public Lcom/mchsdk/paysdk/miui/BaseAccessService;
.super Landroid/accessibilityservice/AccessibilityService;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/accessibilityservice/AccessibilityService;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)Z
    .registers 8

    const/16 v4, 0x10

    const/4 v1, 0x0

    if-eqz p1, :cond_42

    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->findAccessibilityNodeInfosByText(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_42

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_42

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isClickable()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-virtual {v0, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(I)Z

    move-result v0

    :goto_27
    return v0

    :cond_28
    move v2, v1

    :goto_29
    const/4 v3, 0x5

    if-ge v2, v3, :cond_42

    if-eqz v0, :cond_3f

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParent()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    if-eqz v0, :cond_3f

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isClickable()Z

    move-result v3

    if-eqz v3, :cond_3f

    invoke-virtual {v0, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(I)Z

    move-result v0

    goto :goto_27

    :cond_3f
    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    :cond_42
    move v0, v1

    goto :goto_27
.end method

.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 2

    return-void
.end method

.method public onInterrupt()V
    .registers 1

    return-void
.end method

.method protected onServiceConnected()V
    .registers 1

    invoke-super {p0}, Landroid/accessibilityservice/AccessibilityService;->onServiceConnected()V

    return-void
.end method
