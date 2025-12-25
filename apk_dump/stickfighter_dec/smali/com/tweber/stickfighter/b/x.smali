.class public Lcom/tweber/stickfighter/b/x;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/SpinnerAdapter;


# instance fields
.field private final a:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 8

    const v7, 0x7f050089

    const v6, 0x7f050088

    const/4 v5, 0x6

    const/4 v4, 0x5

    const/4 v3, 0x4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tweber/stickfighter/b/x;->a:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/tweber/stickfighter/b/x;->a:Ljava/util/ArrayList;

    const/4 v1, 0x2

    const v2, 0x7f05008c

    invoke-direct {p0, v0, v1, v2}, Lcom/tweber/stickfighter/b/x;->a(Ljava/util/ArrayList;II)V

    iget-object v0, p0, Lcom/tweber/stickfighter/b/x;->a:Ljava/util/ArrayList;

    const/4 v1, 0x7

    const v2, 0x7f05008d

    invoke-direct {p0, v0, v1, v2}, Lcom/tweber/stickfighter/b/x;->a(Ljava/util/ArrayList;II)V

    iget-object v0, p0, Lcom/tweber/stickfighter/b/x;->a:Ljava/util/ArrayList;

    const/4 v1, 0x3

    const v2, 0x7f05008b

    invoke-direct {p0, v0, v1, v2}, Lcom/tweber/stickfighter/b/x;->a(Ljava/util/ArrayList;II)V

    iget-object v0, p0, Lcom/tweber/stickfighter/b/x;->a:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v3, v7}, Lcom/tweber/stickfighter/b/x;->a(Ljava/util/ArrayList;II)V

    iget-object v0, p0, Lcom/tweber/stickfighter/b/x;->a:Ljava/util/ArrayList;

    const v1, 0x7f05008a

    invoke-direct {p0, v0, v4, v1}, Lcom/tweber/stickfighter/b/x;->a(Ljava/util/ArrayList;II)V

    iget-object v0, p0, Lcom/tweber/stickfighter/b/x;->a:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v5, v6}, Lcom/tweber/stickfighter/b/x;->a(Ljava/util/ArrayList;II)V

    iget-object v0, p0, Lcom/tweber/stickfighter/b/x;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tweber/stickfighter/b/x;->a:Ljava/util/ArrayList;

    new-instance v1, Lcom/tweber/stickfighter/b/y;

    invoke-direct {v1, v3, v7}, Lcom/tweber/stickfighter/b/y;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tweber/stickfighter/b/x;->a:Ljava/util/ArrayList;

    new-instance v1, Lcom/tweber/stickfighter/b/y;

    const v2, 0x7f05008a

    invoke-direct {v1, v4, v2}, Lcom/tweber/stickfighter/b/y;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tweber/stickfighter/b/x;->a:Ljava/util/ArrayList;

    new-instance v1, Lcom/tweber/stickfighter/b/y;

    invoke-direct {v1, v5, v6}, Lcom/tweber/stickfighter/b/y;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private a(Ljava/util/ArrayList;II)V
    .locals 1

    invoke-static {p2}, Landroid/media/CamcorderProfile;->hasProfile(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/tweber/stickfighter/b/y;

    invoke-direct {v0, p2, p3}, Lcom/tweber/stickfighter/b/y;-><init>(II)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/tweber/stickfighter/b/x;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030059

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    const v0, 0x7f0c00cd

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tweber/stickfighter/b/x;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tweber/stickfighter/b/y;

    iget v1, v1, Lcom/tweber/stickfighter/b/y;->b:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-object v2
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/tweber/stickfighter/b/x;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03005b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    const v0, 0x7f0c00cd

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tweber/stickfighter/b/x;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tweber/stickfighter/b/y;

    iget v1, v1, Lcom/tweber/stickfighter/b/y;->b:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-object v2
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0

    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0

    return-void
.end method
