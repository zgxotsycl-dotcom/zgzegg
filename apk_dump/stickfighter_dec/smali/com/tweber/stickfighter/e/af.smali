.class public Lcom/tweber/stickfighter/e/af;
.super Landroid/support/v4/app/aa;


# instance fields
.field private a:Lcom/tweber/stickfighter/e/an;

.field private b:Ljava/util/List;

.field private c:Lcom/tweber/stickfighter/h/m;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/app/aa;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/tweber/stickfighter/e/af;Lcom/tweber/stickfighter/h/l;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tweber/stickfighter/e/af;->a(Lcom/tweber/stickfighter/h/l;)V

    return-void
.end method

.method static synthetic a(Lcom/tweber/stickfighter/e/af;Lcom/tweber/stickfighter/h/m;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tweber/stickfighter/e/af;->a(Lcom/tweber/stickfighter/h/m;)V

    return-void
.end method

.method private a(Lcom/tweber/stickfighter/h/l;)V
    .locals 4

    iget-object v0, p0, Lcom/tweber/stickfighter/e/af;->a:Lcom/tweber/stickfighter/e/an;

    iget-wide v2, p1, Lcom/tweber/stickfighter/h/l;->a:J

    invoke-interface {v0, v2, v3}, Lcom/tweber/stickfighter/e/an;->a(J)V

    invoke-virtual {p0}, Lcom/tweber/stickfighter/e/af;->dismiss()V

    return-void
.end method

.method private a(Lcom/tweber/stickfighter/h/m;)V
    .locals 3

    iput-object p1, p0, Lcom/tweber/stickfighter/e/af;->c:Lcom/tweber/stickfighter/h/m;

    invoke-virtual {p0}, Lcom/tweber/stickfighter/e/af;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0c009e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/tweber/stickfighter/e/aj;

    iget-object v2, p1, Lcom/tweber/stickfighter/h/m;->h:[Lcom/tweber/stickfighter/h/l;

    invoke-direct {v1, p0, v2}, Lcom/tweber/stickfighter/e/aj;-><init>(Lcom/tweber/stickfighter/e/af;[Lcom/tweber/stickfighter/h/l;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/tweber/stickfighter/h/o;)V
    .locals 1

    iget-object v0, p0, Lcom/tweber/stickfighter/e/af;->b:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/tweber/stickfighter/h/m;->a(Lcom/tweber/stickfighter/h/o;)[Lcom/tweber/stickfighter/h/m;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tweber/stickfighter/e/af;->b:Ljava/util/List;

    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    invoke-super {p0, p1}, Landroid/support/v4/app/aa;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/Window;->requestFeature(I)Z

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const v0, 0x7f030036

    invoke-virtual {p1, v0, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0}, Lcom/tweber/stickfighter/e/af;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/tweber/stickfighter/e/an;

    iput-object v0, p0, Lcom/tweber/stickfighter/e/af;->a:Lcom/tweber/stickfighter/e/an;

    const v0, 0x7f0c009f

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/tweber/stickfighter/e/af;->getActivity()Landroid/support/v4/app/ae;

    move-result-object v3

    invoke-direct {v1, v3, v5, v4}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    new-instance v1, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v1}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    new-instance v1, Lcom/tweber/stickfighter/e/ag;

    iget-object v3, p0, Lcom/tweber/stickfighter/e/af;->b:Ljava/util/List;

    invoke-direct {v1, p0, v3}, Lcom/tweber/stickfighter/e/ag;-><init>(Lcom/tweber/stickfighter/e/af;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    const v0, 0x7f0c009e

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/tweber/stickfighter/e/af;->getActivity()Landroid/support/v4/app/ae;

    move-result-object v3

    invoke-direct {v1, v3, v5, v4}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    new-instance v1, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v1}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    new-instance v3, Lcom/tweber/stickfighter/e/aj;

    iget-object v1, p0, Lcom/tweber/stickfighter/e/af;->c:Lcom/tweber/stickfighter/h/m;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-direct {v3, p0, v1}, Lcom/tweber/stickfighter/e/aj;-><init>(Lcom/tweber/stickfighter/e/af;[Lcom/tweber/stickfighter/h/l;)V

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    return-object v2

    :cond_0
    iget-object v1, p0, Lcom/tweber/stickfighter/e/af;->c:Lcom/tweber/stickfighter/h/m;

    iget-object v1, v1, Lcom/tweber/stickfighter/h/m;->h:[Lcom/tweber/stickfighter/h/l;

    goto :goto_0
.end method
