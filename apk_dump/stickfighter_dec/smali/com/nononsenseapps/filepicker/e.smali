.class public Lcom/nononsenseapps/filepicker/e;
.super Lcom/nononsenseapps/filepicker/g;


# instance fields
.field public a:Landroid/widget/CheckBox;

.field final synthetic b:Lcom/nononsenseapps/filepicker/b;


# direct methods
.method public constructor <init>(Lcom/nononsenseapps/filepicker/b;Landroid/view/View;)V
    .locals 2

    iput-object p1, p0, Lcom/nononsenseapps/filepicker/e;->b:Lcom/nononsenseapps/filepicker/b;

    invoke-direct {p0, p1, p2}, Lcom/nononsenseapps/filepicker/g;-><init>(Lcom/nononsenseapps/filepicker/b;Landroid/view/View;)V

    sget v0, Lcom/nononsenseapps/filepicker/x;->checkbox:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/nononsenseapps/filepicker/e;->a:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/nononsenseapps/filepicker/e;->a:Landroid/widget/CheckBox;

    new-instance v1, Lcom/nononsenseapps/filepicker/f;

    invoke-direct {v1, p0, p1}, Lcom/nononsenseapps/filepicker/f;-><init>(Lcom/nononsenseapps/filepicker/e;Lcom/nononsenseapps/filepicker/b;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/nononsenseapps/filepicker/e;->b:Lcom/nononsenseapps/filepicker/b;

    iget-object v1, p0, Lcom/nononsenseapps/filepicker/e;->e:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/nononsenseapps/filepicker/b;->f(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nononsenseapps/filepicker/e;->b:Lcom/nononsenseapps/filepicker/b;

    iget-object v1, p0, Lcom/nononsenseapps/filepicker/e;->e:Ljava/lang/Object;

    iput-object v1, v0, Lcom/nononsenseapps/filepicker/b;->d:Ljava/lang/Object;

    iget-object v0, p0, Lcom/nononsenseapps/filepicker/e;->b:Lcom/nononsenseapps/filepicker/b;

    iget-object v0, v0, Lcom/nononsenseapps/filepicker/b;->b:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    iget-object v0, p0, Lcom/nononsenseapps/filepicker/e;->b:Lcom/nononsenseapps/filepicker/b;

    iget-object v0, v0, Lcom/nononsenseapps/filepicker/b;->c:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    iget-object v0, p0, Lcom/nononsenseapps/filepicker/e;->b:Lcom/nononsenseapps/filepicker/b;

    invoke-virtual {v0}, Lcom/nononsenseapps/filepicker/b;->c()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/nononsenseapps/filepicker/e;->onLongClick(Landroid/view/View;)Z

    goto :goto_0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/nononsenseapps/filepicker/e;->b:Lcom/nononsenseapps/filepicker/b;

    iget-object v0, v0, Lcom/nononsenseapps/filepicker/b;->b:Ljava/util/HashSet;

    iget-object v1, p0, Lcom/nononsenseapps/filepicker/e;->e:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nononsenseapps/filepicker/e;->a:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/nononsenseapps/filepicker/e;->b:Lcom/nononsenseapps/filepicker/b;

    iget-object v0, v0, Lcom/nononsenseapps/filepicker/b;->b:Ljava/util/HashSet;

    iget-object v1, p0, Lcom/nononsenseapps/filepicker/e;->e:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/nononsenseapps/filepicker/e;->b:Lcom/nononsenseapps/filepicker/b;

    iget-object v0, v0, Lcom/nononsenseapps/filepicker/b;->c:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :goto_0
    return v2

    :cond_0
    iget-object v0, p0, Lcom/nononsenseapps/filepicker/e;->b:Lcom/nononsenseapps/filepicker/b;

    iget-boolean v0, v0, Lcom/nononsenseapps/filepicker/b;->f:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nononsenseapps/filepicker/e;->b:Lcom/nononsenseapps/filepicker/b;

    invoke-virtual {v0}, Lcom/nononsenseapps/filepicker/b;->d()V

    :cond_1
    iget-object v0, p0, Lcom/nononsenseapps/filepicker/e;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/nononsenseapps/filepicker/e;->b:Lcom/nononsenseapps/filepicker/b;

    iget-object v0, v0, Lcom/nononsenseapps/filepicker/b;->b:Ljava/util/HashSet;

    iget-object v1, p0, Lcom/nononsenseapps/filepicker/e;->e:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/nononsenseapps/filepicker/e;->b:Lcom/nononsenseapps/filepicker/b;

    iget-object v0, v0, Lcom/nononsenseapps/filepicker/b;->c:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
