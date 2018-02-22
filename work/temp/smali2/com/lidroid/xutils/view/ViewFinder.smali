.class public Lcom/lidroid/xutils/view/ViewFinder;
.super Ljava/lang/Object;


# instance fields
.field private activity:Landroid/app/Activity;

.field private preferenceActivity:Landroid/preference/PreferenceActivity;

.field private preferenceGroup:Landroid/preference/PreferenceGroup;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/lidroid/xutils/view/ViewFinder;->activity:Landroid/app/Activity;

    return-void
.end method

.method public constructor <init>(Landroid/preference/PreferenceActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/lidroid/xutils/view/ViewFinder;->preferenceActivity:Landroid/preference/PreferenceActivity;

    iput-object p1, p0, Lcom/lidroid/xutils/view/ViewFinder;->activity:Landroid/app/Activity;

    return-void
.end method

.method public constructor <init>(Landroid/preference/PreferenceGroup;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/lidroid/xutils/view/ViewFinder;->preferenceGroup:Landroid/preference/PreferenceGroup;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/lidroid/xutils/view/ViewFinder;->view:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;
    .registers 3

    iget-object v0, p0, Lcom/lidroid/xutils/view/ViewFinder;->preferenceGroup:Landroid/preference/PreferenceGroup;

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/lidroid/xutils/view/ViewFinder;->preferenceActivity:Landroid/preference/PreferenceActivity;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/lidroid/xutils/view/ViewFinder;->preferenceGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    goto :goto_a
.end method

.method public findViewById(I)Landroid/view/View;
    .registers 3

    iget-object v0, p0, Lcom/lidroid/xutils/view/ViewFinder;->activity:Landroid/app/Activity;

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/lidroid/xutils/view/ViewFinder;->view:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/lidroid/xutils/view/ViewFinder;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_a
.end method

.method public findViewById(II)Landroid/view/View;
    .registers 4

    const/4 v0, 0x0

    if-lez p2, :cond_7

    invoke-virtual {p0, p2}, Lcom/lidroid/xutils/view/ViewFinder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    :cond_7
    if-eqz v0, :cond_e

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    :goto_d
    return-object v0

    :cond_e
    invoke-virtual {p0, p1}, Lcom/lidroid/xutils/view/ViewFinder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_d
.end method

.method public findViewByInfo(Lcom/lidroid/xutils/view/ViewInjectInfo;)Landroid/view/View;
    .registers 4

    iget-object v0, p1, Lcom/lidroid/xutils/view/ViewInjectInfo;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p1, Lcom/lidroid/xutils/view/ViewInjectInfo;->parentId:I

    invoke-virtual {p0, v0, v1}, Lcom/lidroid/xutils/view/ViewFinder;->findViewById(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/lidroid/xutils/view/ViewFinder;->view:Landroid/view/View;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/lidroid/xutils/view/ViewFinder;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/lidroid/xutils/view/ViewFinder;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/lidroid/xutils/view/ViewFinder;->activity:Landroid/app/Activity;

    goto :goto_a

    :cond_12
    iget-object v0, p0, Lcom/lidroid/xutils/view/ViewFinder;->preferenceActivity:Landroid/preference/PreferenceActivity;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/lidroid/xutils/view/ViewFinder;->preferenceActivity:Landroid/preference/PreferenceActivity;

    goto :goto_a

    :cond_19
    const/4 v0, 0x0

    goto :goto_a
.end method
