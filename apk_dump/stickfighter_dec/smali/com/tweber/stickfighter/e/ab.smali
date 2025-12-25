.class public Lcom/tweber/stickfighter/e/ab;
.super Landroid/support/v4/app/aa;


# instance fields
.field private a:Landroid/support/v4/view/ViewPager;

.field private b:Lcom/tweber/stickfighter/g/c;

.field private c:Lcom/tweber/stickfighter/g/w;

.field private d:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/app/aa;-><init>()V

    new-instance v0, Lcom/tweber/stickfighter/g/c;

    invoke-direct {v0}, Lcom/tweber/stickfighter/g/c;-><init>()V

    iput-object v0, p0, Lcom/tweber/stickfighter/e/ab;->b:Lcom/tweber/stickfighter/g/c;

    new-instance v0, Lcom/tweber/stickfighter/g/w;

    invoke-direct {v0}, Lcom/tweber/stickfighter/g/w;-><init>()V

    iput-object v0, p0, Lcom/tweber/stickfighter/e/ab;->c:Lcom/tweber/stickfighter/g/w;

    return-void
.end method

.method private a()V
    .locals 0

    invoke-direct {p0}, Lcom/tweber/stickfighter/e/ab;->b()V

    invoke-direct {p0}, Lcom/tweber/stickfighter/e/ab;->c()V

    return-void
.end method

.method private a(Landroid/support/v4/view/ViewPager;)V
    .locals 3

    new-instance v0, Lcom/tweber/stickfighter/e/ae;

    invoke-virtual {p0}, Lcom/tweber/stickfighter/e/ab;->getChildFragmentManager()Landroid/support/v4/app/al;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tweber/stickfighter/e/ae;-><init>(Landroid/support/v4/app/al;)V

    iget-object v1, p0, Lcom/tweber/stickfighter/e/ab;->b:Lcom/tweber/stickfighter/g/c;

    const v2, 0x7f050045

    invoke-virtual {p0, v2}, Lcom/tweber/stickfighter/e/ab;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tweber/stickfighter/e/ae;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tweber/stickfighter/e/ab;->c:Lcom/tweber/stickfighter/g/w;

    const v2, 0x7f050084

    invoke-virtual {p0, v2}, Lcom/tweber/stickfighter/e/ab;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tweber/stickfighter/e/ae;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/bt;)V

    return-void
.end method

.method static synthetic a(Lcom/tweber/stickfighter/e/ab;)V
    .locals 0

    invoke-direct {p0}, Lcom/tweber/stickfighter/e/ab;->a()V

    return-void
.end method

.method private b()V
    .locals 3

    iget-object v0, p0, Lcom/tweber/stickfighter/e/ab;->b:Lcom/tweber/stickfighter/g/c;

    invoke-virtual {v0}, Lcom/tweber/stickfighter/g/c;->a()I

    move-result v1

    iget-object v0, p0, Lcom/tweber/stickfighter/e/ab;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tweber/stickfighter/h/f;

    invoke-virtual {v0, v1}, Lcom/tweber/stickfighter/h/f;->a(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private c()V
    .locals 8

    iget-object v0, p0, Lcom/tweber/stickfighter/e/ab;->c:Lcom/tweber/stickfighter/g/w;

    invoke-virtual {v0}, Lcom/tweber/stickfighter/g/w;->a()I

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_1

    :cond_0
    return-void

    :cond_1
    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float v1, v0, v1

    invoke-direct {p0}, Lcom/tweber/stickfighter/e/ab;->d()Lcom/tweber/stickfighter/h/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tweber/stickfighter/h/c;->c()F

    move-result v2

    invoke-virtual {v0}, Lcom/tweber/stickfighter/h/c;->d()F

    move-result v3

    iget-object v0, p0, Lcom/tweber/stickfighter/e/ab;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tweber/stickfighter/h/f;

    invoke-virtual {v0}, Lcom/tweber/stickfighter/h/f;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tweber/stickfighter/h/c;

    invoke-virtual {v0}, Lcom/tweber/stickfighter/h/c;->c()F

    move-result v6

    invoke-virtual {v0}, Lcom/tweber/stickfighter/h/c;->d()F

    move-result v7

    sub-float/2addr v6, v2

    mul-float/2addr v6, v1

    add-float/2addr v6, v2

    sub-float/2addr v7, v3

    mul-float/2addr v7, v1

    add-float/2addr v7, v3

    invoke-virtual {v0, v6, v7}, Lcom/tweber/stickfighter/h/c;->b(FF)V

    goto :goto_0
.end method

.method private d()Lcom/tweber/stickfighter/h/c;
    .locals 5

    iget-object v0, p0, Lcom/tweber/stickfighter/e/ab;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tweber/stickfighter/h/f;

    invoke-virtual {v0}, Lcom/tweber/stickfighter/h/f;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tweber/stickfighter/h/c;

    invoke-virtual {v0}, Lcom/tweber/stickfighter/h/c;->b()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/tweber/stickfighter/e/ab;->b:Lcom/tweber/stickfighter/g/c;

    invoke-virtual {v0, p1}, Lcom/tweber/stickfighter/g/c;->a(I)V

    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/tweber/stickfighter/e/ab;->d:Ljava/util/ArrayList;

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    invoke-super {p0, p1}, Landroid/support/v4/app/aa;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/Window;->requestFeature(I)Z

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    const/4 v3, 0x0

    const v0, 0x7f030034

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0c0072

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/tweber/stickfighter/e/ab;->a:Landroid/support/v4/view/ViewPager;

    iget-object v0, p0, Lcom/tweber/stickfighter/e/ab;->a:Landroid/support/v4/view/ViewPager;

    invoke-direct {p0, v0}, Lcom/tweber/stickfighter/e/ab;->a(Landroid/support/v4/view/ViewPager;)V

    const v0, 0x7f0c0070

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/support/design/widget/TabLayout;->setTabMode(I)V

    invoke-virtual {v0, v3}, Landroid/support/design/widget/TabLayout;->setTabGravity(I)V

    iget-object v2, p0, Lcom/tweber/stickfighter/e/ab;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v2}, Landroid/support/design/widget/TabLayout;->setupWithViewPager(Landroid/support/v4/view/ViewPager;)V

    const v0, 0x7f0c0081

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v2, Lcom/tweber/stickfighter/e/ac;

    invoke-direct {v2, p0}, Lcom/tweber/stickfighter/e/ac;-><init>(Lcom/tweber/stickfighter/e/ab;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0c0082

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v2, Lcom/tweber/stickfighter/e/ad;

    invoke-direct {v2, p0}, Lcom/tweber/stickfighter/e/ad;-><init>(Lcom/tweber/stickfighter/e/ab;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v1
.end method
