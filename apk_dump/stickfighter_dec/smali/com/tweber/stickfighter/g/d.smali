.class public Lcom/tweber/stickfighter/g/d;
.super Landroid/support/v4/app/Fragment;


# instance fields
.field private a:Landroid/support/v7/widget/RecyclerView;

.field private b:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 3

    invoke-static {}, Lcom/tweber/stickfighter/d/a;->a()Lcom/tweber/stickfighter/d/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/tweber/stickfighter/d/b;->b()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/tweber/stickfighter/g/d;->b:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/tweber/stickfighter/g/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0c00b3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    new-instance v0, Lcom/tweber/stickfighter/b/e;

    iget-object v1, p0, Lcom/tweber/stickfighter/g/d;->b:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/tweber/stickfighter/g/d;->b()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/tweber/stickfighter/b/e;-><init>(Ljava/util/ArrayList;I)V

    iget-object v1, p0, Lcom/tweber/stickfighter/g/d;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method private b()I
    .locals 4

    const/4 v0, 0x3

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/tweber/stickfighter/g/d;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p0}, Lcom/tweber/stickfighter/g/d;->getActivity()Landroid/support/v4/app/ae;

    move-result-object v3

    invoke-static {v3}, Lcom/tweber/stickfighter/j/d;->a(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-ne v2, v1, :cond_0

    const/4 v0, 0x4

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eq v2, v1, :cond_0

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 3

    new-instance v0, Lcom/tweber/stickfighter/e/m;

    invoke-direct {v0}, Lcom/tweber/stickfighter/e/m;-><init>()V

    invoke-virtual {p0}, Lcom/tweber/stickfighter/g/d;->getChildFragmentManager()Landroid/support/v4/app/al;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tweber/stickfighter/e/m;->show(Landroid/support/v4/app/al;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/tweber/stickfighter/d/a;->a()Lcom/tweber/stickfighter/d/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tweber/stickfighter/g/d;->getActivity()Landroid/support/v4/app/ae;

    move-result-object v1

    invoke-static {v1}, Lcom/tweber/stickfighter/j/d;->a(Landroid/app/Activity;)F

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/tweber/stickfighter/d/b;->b(Ljava/lang/String;F)Lcom/tweber/stickfighter/h/v;

    move-result-object v0

    invoke-static {}, Lcom/tweber/stickfighter/d/a;->a()Lcom/tweber/stickfighter/d/b;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tweber/stickfighter/h/v;->b()I

    move-result v2

    invoke-interface {v1, v2, v3}, Lcom/tweber/stickfighter/d/b;->a(II)Lcom/tweber/stickfighter/h/p;

    iget-object v1, p0, Lcom/tweber/stickfighter/g/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v3, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/tweber/stickfighter/g/d;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    iget-object v1, p0, Lcom/tweber/stickfighter/g/d;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    invoke-virtual {p0}, Lcom/tweber/stickfighter/g/d;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0c00b3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/tweber/stickfighter/g/d;->getActivity()Landroid/support/v4/app/ae;

    move-result-object v2

    const-class v3, Lcom/tweber/stickfighter/activities/EditCustomFigureActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "CustomFigureID"

    invoke-virtual {v0}, Lcom/tweber/stickfighter/h/v;->b()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/tweber/stickfighter/g/d;->getActivity()Landroid/support/v4/app/ae;

    move-result-object v0

    const/16 v2, 0x66

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/ae;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x66

    if-ne p1, v0, :cond_1

    invoke-static {v3}, Lcom/tweber/stickfighter/h/v;->a(Lcom/tweber/stickfighter/h/v;)V

    iget-object v0, p0, Lcom/tweber/stickfighter/g/d;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    iget-object v1, p0, Lcom/tweber/stickfighter/g/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x63

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/tweber/stickfighter/g/d;->b:Ljava/util/ArrayList;

    invoke-static {}, Lcom/tweber/stickfighter/h/v;->a()Lcom/tweber/stickfighter/h/v;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/tweber/stickfighter/g/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tweber/stickfighter/h/v;

    invoke-virtual {v0}, Lcom/tweber/stickfighter/h/v;->f()Lcom/tweber/stickfighter/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tweber/stickfighter/c/a;->b()V

    invoke-static {v3}, Lcom/tweber/stickfighter/h/v;->a(Lcom/tweber/stickfighter/h/v;)V

    iget-object v0, p0, Lcom/tweber/stickfighter/g/d;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    iget-object v1, p0, Lcom/tweber/stickfighter/g/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tweber/stickfighter/g/d;->setHasOptionsMenu(Z)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tweber/stickfighter/g/d;->b:Ljava/util/ArrayList;

    invoke-static {}, La/a/a/c;->a()La/a/a/c;

    move-result-object v0

    invoke-virtual {v0, p0}, La/a/a/c;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    const v0, 0x7f03003c

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0c00b2

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/tweber/stickfighter/g/d;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, p0, Lcom/tweber/stickfighter/g/d;->a:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    invoke-direct {p0}, Lcom/tweber/stickfighter/g/d;->b()I

    move-result v3

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcom/tweber/stickfighter/g/d;->a:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v2}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    invoke-direct {p0, v1}, Lcom/tweber/stickfighter/g/d;->a(Landroid/view/View;)V

    return-object v1
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    invoke-static {}, La/a/a/c;->a()La/a/a/c;

    move-result-object v0

    invoke-virtual {v0, p0}, La/a/a/c;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public onEvent(Lcom/tweber/stickfighter/f/i;)V
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/tweber/stickfighter/g/d;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/tweber/stickfighter/f/i;->a()Lcom/tweber/stickfighter/h/v;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tweber/stickfighter/g/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/tweber/stickfighter/g/d;->getView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/tweber/stickfighter/g/d;->getActivity()Landroid/support/v4/app/ae;

    move-result-object v0

    const v3, 0x7f0c0071

    invoke-virtual {v0, v3}, Landroid/support/v4/app/ae;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v3, 0x7f050054

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/tweber/stickfighter/f/i;->a()Lcom/tweber/stickfighter/h/v;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tweber/stickfighter/h/v;->c()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p0, v3, v4}, Lcom/tweber/stickfighter/g/d;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v6}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->show()V

    const v0, 0x7f0c00b2

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    iget-object v0, p0, Lcom/tweber/stickfighter/g/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0c00b3

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
