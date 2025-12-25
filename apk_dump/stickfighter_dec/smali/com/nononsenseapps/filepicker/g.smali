.class public Lcom/nononsenseapps/filepicker/g;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public c:Landroid/view/View;

.field public d:Landroid/widget/TextView;

.field public e:Ljava/lang/Object;

.field final synthetic f:Lcom/nononsenseapps/filepicker/b;


# direct methods
.method public constructor <init>(Lcom/nononsenseapps/filepicker/b;Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/nononsenseapps/filepicker/g;->f:Lcom/nononsenseapps/filepicker/b;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    sget v0, Lcom/nononsenseapps/filepicker/x;->item_icon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nononsenseapps/filepicker/g;->c:Landroid/view/View;

    const v0, 0x1020014

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nononsenseapps/filepicker/g;->d:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/nononsenseapps/filepicker/g;->f:Lcom/nononsenseapps/filepicker/b;

    iget-object v1, p0, Lcom/nononsenseapps/filepicker/g;->e:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/nononsenseapps/filepicker/b;->f(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nononsenseapps/filepicker/g;->f:Lcom/nononsenseapps/filepicker/b;

    iget-object v1, p0, Lcom/nononsenseapps/filepicker/g;->e:Ljava/lang/Object;

    iput-object v1, v0, Lcom/nononsenseapps/filepicker/b;->d:Ljava/lang/Object;

    iget-object v0, p0, Lcom/nononsenseapps/filepicker/g;->f:Lcom/nononsenseapps/filepicker/b;

    iget-object v0, v0, Lcom/nononsenseapps/filepicker/b;->b:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    iget-object v0, p0, Lcom/nononsenseapps/filepicker/g;->f:Lcom/nononsenseapps/filepicker/b;

    iget-object v0, v0, Lcom/nononsenseapps/filepicker/b;->c:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    iget-object v0, p0, Lcom/nononsenseapps/filepicker/g;->f:Lcom/nononsenseapps/filepicker/b;

    invoke-virtual {v0}, Lcom/nononsenseapps/filepicker/b;->c()V

    :cond_0
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
