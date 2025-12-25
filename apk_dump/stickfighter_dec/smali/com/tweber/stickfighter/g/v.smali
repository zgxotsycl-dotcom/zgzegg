.class public Lcom/tweber/stickfighter/g/v;
.super Landroid/support/v4/app/Fragment;


# instance fields
.field private a:Lcom/tweber/stickfighter/b/k;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method public static a()Lcom/tweber/stickfighter/g/v;
    .locals 1

    new-instance v0, Lcom/tweber/stickfighter/g/v;

    invoke-direct {v0}, Lcom/tweber/stickfighter/g/v;-><init>()V

    return-object v0
.end method

.method private c()I
    .locals 3

    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/tweber/stickfighter/g/v;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p0}, Lcom/tweber/stickfighter/g/v;->getActivity()Landroid/support/v4/app/ae;

    move-result-object v1

    invoke-static {v1}, Lcom/tweber/stickfighter/j/d;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x6

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    if-ne v0, v2, :cond_2

    const/4 v0, 0x5

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    goto :goto_0
.end method

.method private d()V
    .locals 3

    invoke-static {}, Lcom/tweber/stickfighter/h/v;->a()Lcom/tweber/stickfighter/h/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tweber/stickfighter/h/v;->e()I

    move-result v0

    invoke-static {v0}, Lcom/tweber/stickfighter/e/a;->a(I)Lcom/tweber/stickfighter/e/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tweber/stickfighter/g/v;->getChildFragmentManager()Landroid/support/v4/app/al;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tweber/stickfighter/e/a;->show(Landroid/support/v4/app/al;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/tweber/stickfighter/g/v;->a:Lcom/tweber/stickfighter/b/k;

    invoke-virtual {v0}, Lcom/tweber/stickfighter/b/k;->notifyDataSetChanged()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/tweber/stickfighter/g/v;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0c00c9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/tweber/stickfighter/g/v;->getActivity()Landroid/support/v4/app/ae;

    move-result-object v2

    invoke-direct {p0}, Lcom/tweber/stickfighter/g/v;->c()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    new-instance v1, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v1}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    new-instance v1, Lcom/tweber/stickfighter/b/k;

    invoke-static {}, Lcom/tweber/stickfighter/h/v;->a()Lcom/tweber/stickfighter/h/v;

    move-result-object v2

    invoke-direct {p0}, Lcom/tweber/stickfighter/g/v;->c()I

    move-result v3

    invoke-virtual {p0}, Lcom/tweber/stickfighter/g/v;->getActivity()Landroid/support/v4/app/ae;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/tweber/stickfighter/b/k;-><init>(Lcom/tweber/stickfighter/h/v;ILandroid/app/Activity;)V

    iput-object v1, p0, Lcom/tweber/stickfighter/g/v;->a:Lcom/tweber/stickfighter/b/k;

    iget-object v1, p0, Lcom/tweber/stickfighter/g/v;->a:Lcom/tweber/stickfighter/b/k;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tweber/stickfighter/g/v;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    const v0, 0x7f0e0001

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    const v0, 0x7f030041

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0c00c9

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/tweber/stickfighter/g/v;->getActivity()Landroid/support/v4/app/ae;

    move-result-object v3

    invoke-direct {p0}, Lcom/tweber/stickfighter/g/v;->c()I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    new-instance v2, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v2}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    new-instance v2, Lcom/tweber/stickfighter/b/k;

    invoke-static {}, Lcom/tweber/stickfighter/h/v;->a()Lcom/tweber/stickfighter/h/v;

    move-result-object v3

    invoke-direct {p0}, Lcom/tweber/stickfighter/g/v;->c()I

    move-result v4

    invoke-virtual {p0}, Lcom/tweber/stickfighter/g/v;->getActivity()Landroid/support/v4/app/ae;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/tweber/stickfighter/b/k;-><init>(Lcom/tweber/stickfighter/h/v;ILandroid/app/Activity;)V

    iput-object v2, p0, Lcom/tweber/stickfighter/g/v;->a:Lcom/tweber/stickfighter/b/k;

    iget-object v2, p0, Lcom/tweber/stickfighter/g/v;->a:Lcom/tweber/stickfighter/b/k;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    return-object v1
.end method

.method public onDestroyView()V
    .locals 3

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    invoke-static {}, La/a/a/c;->a()La/a/a/c;

    move-result-object v0

    new-instance v1, Lcom/tweber/stickfighter/f/b;

    sget-object v2, Lcom/tweber/stickfighter/f/c;->d:Lcom/tweber/stickfighter/f/c;

    invoke-direct {v1, v2}, Lcom/tweber/stickfighter/f/b;-><init>(Lcom/tweber/stickfighter/f/c;)V

    invoke-virtual {v0, v1}, La/a/a/c;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    invoke-direct {p0}, Lcom/tweber/stickfighter/g/v;->d()V

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0c00f9
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    return-void
.end method
