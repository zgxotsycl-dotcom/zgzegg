.class public Lcom/nononsenseapps/filepicker/h;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final a:Landroid/widget/TextView;

.field final synthetic b:Lcom/nononsenseapps/filepicker/b;


# direct methods
.method public constructor <init>(Lcom/nononsenseapps/filepicker/b;Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/nononsenseapps/filepicker/h;->b:Lcom/nononsenseapps/filepicker/b;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x1020014

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nononsenseapps/filepicker/h;->a:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/nononsenseapps/filepicker/h;->b:Lcom/nononsenseapps/filepicker/b;

    iget-object v1, p0, Lcom/nononsenseapps/filepicker/h;->b:Lcom/nononsenseapps/filepicker/b;

    iget-object v2, p0, Lcom/nononsenseapps/filepicker/h;->b:Lcom/nononsenseapps/filepicker/b;

    iget-object v2, v2, Lcom/nononsenseapps/filepicker/b;->d:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/nononsenseapps/filepicker/b;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/nononsenseapps/filepicker/b;->d:Ljava/lang/Object;

    iget-object v0, p0, Lcom/nononsenseapps/filepicker/h;->b:Lcom/nononsenseapps/filepicker/b;

    iget-object v0, v0, Lcom/nononsenseapps/filepicker/b;->b:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    iget-object v0, p0, Lcom/nononsenseapps/filepicker/h;->b:Lcom/nononsenseapps/filepicker/b;

    iget-object v0, v0, Lcom/nononsenseapps/filepicker/b;->c:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    iget-object v0, p0, Lcom/nononsenseapps/filepicker/h;->b:Lcom/nononsenseapps/filepicker/b;

    invoke-virtual {v0}, Lcom/nononsenseapps/filepicker/b;->c()V

    return-void
.end method
