.class public Landroid/app/base/Activity;
.super Landroid/app/inflect/Activity;


# instance fields
.field protected activity:Landroid/app/Activity;

.field protected context:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/inflect/Activity;-><init>()V

    iput-object p0, p0, Landroid/app/base/Activity;->context:Landroid/content/Context;

    iput-object p0, p0, Landroid/app/base/Activity;->activity:Landroid/app/Activity;

    return-void
.end method
