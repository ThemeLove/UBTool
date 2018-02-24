.class Lcom/themelove/assetpackageapk/vivo/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/themelove/assetpackageapk/vivo/MainActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/themelove/assetpackageapk/vivo/MainActivity;

.field private final synthetic val$packInfo:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/themelove/assetpackageapk/vivo/MainActivity;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/themelove/assetpackageapk/vivo/MainActivity$1;->this$0:Lcom/themelove/assetpackageapk/vivo/MainActivity;

    iput-object p2, p0, Lcom/themelove/assetpackageapk/vivo/MainActivity$1;->val$packInfo:Landroid/widget/TextView;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 38
    iget-object v3, p0, Lcom/themelove/assetpackageapk/vivo/MainActivity$1;->val$packInfo:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v4, p0, Lcom/themelove/assetpackageapk/vivo/MainActivity$1;->this$0:Lcom/themelove/assetpackageapk/vivo/MainActivity;

    invoke-static {v4}, Lcom/themelove/assetpackageapk/vivo/MainActivity;->access$0(Lcom/themelove/assetpackageapk/vivo/MainActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 40
    iget-object v3, p0, Lcom/themelove/assetpackageapk/vivo/MainActivity$1;->this$0:Lcom/themelove/assetpackageapk/vivo/MainActivity;

    invoke-virtual {v3}, Lcom/themelove/assetpackageapk/vivo/MainActivity;->getChannelInfoFromAssetConfig()[Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, "channelInfo":[Ljava/lang/String;
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v0, v3

    .line 42
    .local v2, "mode":Ljava/lang/String;
    const/4 v1, 0x0

    .line 43
    .local v1, "debugMode":Z
    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 44
    const/4 v1, 0x1

    .line 46
    :cond_0
    iget-object v3, p0, Lcom/themelove/assetpackageapk/vivo/MainActivity$1;->val$packInfo:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u6e20\u9053\u4fe1\u606f\u5982\u4e0b\uff1a"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/themelove/assetpackageapk/vivo/MainActivity$1;->this$0:Lcom/themelove/assetpackageapk/vivo/MainActivity;

    invoke-static {v5}, Lcom/themelove/assetpackageapk/vivo/MainActivity;->access$1(Lcom/themelove/assetpackageapk/vivo/MainActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "CID------>   \t\t"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v0, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/themelove/assetpackageapk/vivo/MainActivity$1;->this$0:Lcom/themelove/assetpackageapk/vivo/MainActivity;

    invoke-static {v5}, Lcom/themelove/assetpackageapk/vivo/MainActivity;->access$1(Lcom/themelove/assetpackageapk/vivo/MainActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "CCID----->\t\t\t"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v0, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/themelove/assetpackageapk/vivo/MainActivity$1;->this$0:Lcom/themelove/assetpackageapk/vivo/MainActivity;

    invoke-static {v5}, Lcom/themelove/assetpackageapk/vivo/MainActivity;->access$1(Lcom/themelove/assetpackageapk/vivo/MainActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "debugMode------>  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    iget-object v3, p0, Lcom/themelove/assetpackageapk/vivo/MainActivity$1;->this$0:Lcom/themelove/assetpackageapk/vivo/MainActivity;

    invoke-virtual {v3}, Lcom/themelove/assetpackageapk/vivo/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "CID------>   \t\t"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v5, v0, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/themelove/assetpackageapk/vivo/MainActivity$1;->this$0:Lcom/themelove/assetpackageapk/vivo/MainActivity;

    invoke-static {v5}, Lcom/themelove/assetpackageapk/vivo/MainActivity;->access$1(Lcom/themelove/assetpackageapk/vivo/MainActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "CCID----->\t\t\t"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v0, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/themelove/assetpackageapk/vivo/MainActivity$1;->this$0:Lcom/themelove/assetpackageapk/vivo/MainActivity;

    invoke-static {v5}, Lcom/themelove/assetpackageapk/vivo/MainActivity;->access$1(Lcom/themelove/assetpackageapk/vivo/MainActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "debugMode------>  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 49
    return-void
.end method
