.class public Lcom/nononsenseapps/filepicker/j;
.super Landroid/support/v7/widget/RecyclerView$Adapter;


# instance fields
.field private final a:Lcom/nononsenseapps/filepicker/o;

.field private b:Landroid/support/v7/util/SortedList;


# direct methods
.method public constructor <init>(Lcom/nononsenseapps/filepicker/o;)V
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nononsenseapps/filepicker/j;->b:Landroid/support/v7/util/SortedList;

    iput-object p1, p0, Lcom/nononsenseapps/filepicker/j;->a:Lcom/nononsenseapps/filepicker/o;

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/util/SortedList;)V
    .locals 0

    iput-object p1, p0, Lcom/nononsenseapps/filepicker/j;->b:Landroid/support/v7/util/SortedList;

    invoke-virtual {p0}, Lcom/nononsenseapps/filepicker/j;->notifyDataSetChanged()V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/nononsenseapps/filepicker/j;->b:Landroid/support/v7/util/SortedList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/nononsenseapps/filepicker/j;->b:Landroid/support/v7/util/SortedList;

    invoke-virtual {v0}, Landroid/support/v7/util/SortedList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 3

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, p1, -0x1

    iget-object v1, p0, Lcom/nononsenseapps/filepicker/j;->a:Lcom/nononsenseapps/filepicker/o;

    iget-object v2, p0, Lcom/nononsenseapps/filepicker/j;->b:Landroid/support/v7/util/SortedList;

    invoke-virtual {v2, v0}, Landroid/support/v7/util/SortedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/nononsenseapps/filepicker/o;->a(ILjava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 3

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/nononsenseapps/filepicker/j;->a:Lcom/nononsenseapps/filepicker/o;

    check-cast p1, Lcom/nononsenseapps/filepicker/h;

    invoke-interface {v0, p1}, Lcom/nononsenseapps/filepicker/o;->a(Lcom/nononsenseapps/filepicker/h;)V

    :goto_0
    return-void

    :cond_0
    add-int/lit8 v0, p2, -0x1

    iget-object v1, p0, Lcom/nononsenseapps/filepicker/j;->a:Lcom/nononsenseapps/filepicker/o;

    check-cast p1, Lcom/nononsenseapps/filepicker/g;

    iget-object v2, p0, Lcom/nononsenseapps/filepicker/j;->b:Landroid/support/v7/util/SortedList;

    invoke-virtual {v2, v0}, Landroid/support/v7/util/SortedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, p1, v0, v2}, Lcom/nononsenseapps/filepicker/o;->a(Lcom/nononsenseapps/filepicker/g;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    iget-object v0, p0, Lcom/nononsenseapps/filepicker/j;->a:Lcom/nononsenseapps/filepicker/o;

    invoke-interface {v0, p1, p2}, Lcom/nononsenseapps/filepicker/o;->a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    return-object v0
.end method
