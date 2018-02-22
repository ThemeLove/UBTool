.class Lcom/mchsdk/paysdk/activity/a$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mchsdk/paysdk/b/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mchsdk/paysdk/activity/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mchsdk/paysdk/activity/a;


# direct methods
.method constructor <init>(Lcom/mchsdk/paysdk/activity/a;)V
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/paysdk/activity/a$4;->a:Lcom/mchsdk/paysdk/activity/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Ljava/lang/String;Lcom/mchsdk/paysdk/b/d;)V
    .registers 4

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    invoke-static {p1}, Lcom/mchsdk/paysdk/utils/p;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/a$4;->a:Lcom/mchsdk/paysdk/activity/a;

    invoke-static {v0}, Lcom/mchsdk/paysdk/activity/a;->a(Lcom/mchsdk/paysdk/activity/a;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u8bf7\u8f93\u5165\u7528\u6237\u540d"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/q;->a(Landroid/content/Context;Ljava/lang/String;)V

    :goto_11
    return-void

    :cond_12
    invoke-static {p2}, Lcom/mchsdk/paysdk/utils/p;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/a$4;->a:Lcom/mchsdk/paysdk/activity/a;

    invoke-static {v0}, Lcom/mchsdk/paysdk/activity/a;->a(Lcom/mchsdk/paysdk/activity/a;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u8bf7\u8f93\u5165\u5bc6\u7801"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/q;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_11

    :cond_24
    invoke-static {p3}, Lcom/mchsdk/paysdk/utils/p;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/a$4;->a:Lcom/mchsdk/paysdk/activity/a;

    invoke-static {v0}, Lcom/mchsdk/paysdk/activity/a;->a(Lcom/mchsdk/paysdk/activity/a;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u8bf7\u8f93\u5165\u786e\u8ba4\u5bc6\u7801"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/q;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_11

    :cond_36
    const-string v0, "^[a-zA-Z0-9_]{6,15}$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v0, p3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v1, :cond_5a

    if-eqz v2, :cond_5a

    if-nez v0, :cond_66

    :cond_5a
    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/a$4;->a:Lcom/mchsdk/paysdk/activity/a;

    invoke-static {v0}, Lcom/mchsdk/paysdk/activity/a;->a(Lcom/mchsdk/paysdk/activity/a;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u8bf7\u8f93\u51656-15\u4f4d\u6570\u5b57\u6216\u82f1\u6587\u5b57\u6bcd"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/q;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_11

    :cond_66
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_78

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/a$4;->a:Lcom/mchsdk/paysdk/activity/a;

    invoke-static {v0}, Lcom/mchsdk/paysdk/activity/a;->a(Lcom/mchsdk/paysdk/activity/a;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u4e24\u6b21\u8f93\u5165\u5bc6\u7801\u4e0d\u4e00\u81f4"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/q;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_11

    :cond_78
    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/a$4;->a:Lcom/mchsdk/paysdk/activity/a;

    invoke-static {v0, p1, p2}, Lcom/mchsdk/paysdk/activity/a;->a(Lcom/mchsdk/paysdk/activity/a;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11
.end method
