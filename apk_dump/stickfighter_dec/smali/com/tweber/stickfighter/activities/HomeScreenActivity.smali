.class public Lcom/tweber/stickfighter/activities/HomeScreenActivity;
.super Lcom/tweber/stickfighter/activities/c;


# instance fields
.field private a:Landroid/support/v4/view/ViewPager;

.field private b:Landroid/support/design/widget/FloatingActionButton;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tweber/stickfighter/activities/c;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/tweber/stickfighter/activities/HomeScreenActivity;)Landroid/support/v4/view/ViewPager;
    .locals 1

    iget-object v0, p0, Lcom/tweber/stickfighter/activities/HomeScreenActivity;->a:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method private a(II)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android:switcher:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/tweber/stickfighter/activities/HomeScreenActivity;II)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/tweber/stickfighter/activities/HomeScreenActivity;->a(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/support/v4/view/ViewPager;)V
    .locals 3

    new-instance v0, Lcom/tweber/stickfighter/activities/f;

    invoke-virtual {p0}, Lcom/tweber/stickfighter/activities/HomeScreenActivity;->getSupportFragmentManager()Landroid/support/v4/app/al;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tweber/stickfighter/activities/f;-><init>(Landroid/support/v4/app/al;)V

    invoke-virtual {p0}, Lcom/tweber/stickfighter/activities/HomeScreenActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/tweber/stickfighter/g/ad;->a(Landroid/net/Uri;)Lcom/tweber/stickfighter/g/ad;

    move-result-object v1

    const v2, 0x7f05003b

    invoke-virtual {p0, v2}, Lcom/tweber/stickfighter/activities/HomeScreenActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tweber/stickfighter/activities/f;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    new-instance v1, Lcom/tweber/stickfighter/g/d;

    invoke-direct {v1}, Lcom/tweber/stickfighter/g/d;-><init>()V

    const v2, 0x7f050056

    invoke-virtual {p0, v2}, Lcom/tweber/stickfighter/activities/HomeScreenActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tweber/stickfighter/activities/f;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/bt;)V

    new-instance v0, Lcom/tweber/stickfighter/activities/e;

    invoke-direct {v0, p0}, Lcom/tweber/stickfighter/activities/e;-><init>(Lcom/tweber/stickfighter/activities/HomeScreenActivity;)V

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->a(Landroid/support/v4/view/dq;)V

    return-void
.end method


# virtual methods
.method protected a()I
    .locals 1

    const v0, 0x7f03001f

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    invoke-virtual {p0}, Lcom/tweber/stickfighter/activities/HomeScreenActivity;->getSupportFragmentManager()Landroid/support/v4/app/al;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/al;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/tweber/stickfighter/activities/c;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0c0072

    invoke-virtual {p0, v0}, Lcom/tweber/stickfighter/activities/HomeScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/tweber/stickfighter/activities/HomeScreenActivity;->a:Landroid/support/v4/view/ViewPager;

    iget-object v0, p0, Lcom/tweber/stickfighter/activities/HomeScreenActivity;->a:Landroid/support/v4/view/ViewPager;

    invoke-direct {p0, v0}, Lcom/tweber/stickfighter/activities/HomeScreenActivity;->a(Landroid/support/v4/view/ViewPager;)V

    const v0, 0x7f0c0070

    invoke-virtual {p0, v0}, Lcom/tweber/stickfighter/activities/HomeScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->setTabMode(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->setTabGravity(I)V

    iget-object v1, p0, Lcom/tweber/stickfighter/activities/HomeScreenActivity;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->setupWithViewPager(Landroid/support/v4/view/ViewPager;)V

    const v0, 0x7f0c0073

    invoke-virtual {p0, v0}, Lcom/tweber/stickfighter/activities/HomeScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/FloatingActionButton;

    iput-object v0, p0, Lcom/tweber/stickfighter/activities/HomeScreenActivity;->b:Landroid/support/design/widget/FloatingActionButton;

    iget-object v0, p0, Lcom/tweber/stickfighter/activities/HomeScreenActivity;->b:Landroid/support/design/widget/FloatingActionButton;

    new-instance v1, Lcom/tweber/stickfighter/activities/d;

    invoke-direct {v1, p0}, Lcom/tweber/stickfighter/activities/d;-><init>(Lcom/tweber/stickfighter/activities/HomeScreenActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/design/widget/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/tweber/stickfighter/activities/c;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method
