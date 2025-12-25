.class Lcom/nononsenseapps/filepicker/l;
.super Landroid/support/v4/b/a;


# instance fields
.field o:Landroid/os/FileObserver;

.field final synthetic p:Lcom/nononsenseapps/filepicker/k;


# direct methods
.method constructor <init>(Lcom/nononsenseapps/filepicker/k;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/nononsenseapps/filepicker/l;->p:Lcom/nononsenseapps/filepicker/k;

    invoke-direct {p0, p2}, Landroid/support/v4/b/a;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public synthetic d()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/nononsenseapps/filepicker/l;->v()Landroid/support/v7/util/SortedList;

    move-result-object v0

    return-object v0
.end method

.method protected j()V
    .locals 3

    invoke-super {p0}, Landroid/support/v4/b/a;->j()V

    iget-object v0, p0, Lcom/nononsenseapps/filepicker/l;->p:Lcom/nononsenseapps/filepicker/k;

    iget-object v0, v0, Lcom/nononsenseapps/filepicker/k;->d:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nononsenseapps/filepicker/l;->p:Lcom/nononsenseapps/filepicker/k;

    iget-object v0, v0, Lcom/nononsenseapps/filepicker/k;->d:Ljava/lang/Object;

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/nononsenseapps/filepicker/l;->p:Lcom/nononsenseapps/filepicker/k;

    iget-object v1, p0, Lcom/nononsenseapps/filepicker/l;->p:Lcom/nononsenseapps/filepicker/k;

    invoke-virtual {v1}, Lcom/nononsenseapps/filepicker/k;->e()Ljava/io/File;

    move-result-object v1

    iput-object v1, v0, Lcom/nononsenseapps/filepicker/k;->d:Ljava/lang/Object;

    :cond_1
    new-instance v1, Lcom/nononsenseapps/filepicker/n;

    iget-object v0, p0, Lcom/nononsenseapps/filepicker/l;->p:Lcom/nononsenseapps/filepicker/k;

    iget-object v0, v0, Lcom/nononsenseapps/filepicker/k;->d:Ljava/lang/Object;

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x3c0

    invoke-direct {v1, p0, v0, v2}, Lcom/nononsenseapps/filepicker/n;-><init>(Lcom/nononsenseapps/filepicker/l;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/nononsenseapps/filepicker/l;->o:Landroid/os/FileObserver;

    iget-object v0, p0, Lcom/nononsenseapps/filepicker/l;->o:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->startWatching()V

    invoke-virtual {p0}, Lcom/nononsenseapps/filepicker/l;->l()V

    return-void
.end method

.method protected r()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/b/a;->r()V

    iget-object v0, p0, Lcom/nononsenseapps/filepicker/l;->o:Landroid/os/FileObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nononsenseapps/filepicker/l;->o:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nononsenseapps/filepicker/l;->o:Landroid/os/FileObserver;

    :cond_0
    return-void
.end method

.method public v()Landroid/support/v7/util/SortedList;
    .locals 7

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nononsenseapps/filepicker/l;->p:Lcom/nononsenseapps/filepicker/k;

    iget-object v0, v0, Lcom/nononsenseapps/filepicker/k;->d:Ljava/lang/Object;

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_1

    move v0, v1

    :goto_0
    new-instance v3, Landroid/support/v7/util/SortedList;

    const-class v4, Ljava/io/File;

    new-instance v5, Lcom/nononsenseapps/filepicker/m;

    iget-object v6, p0, Lcom/nononsenseapps/filepicker/l;->p:Lcom/nononsenseapps/filepicker/k;

    invoke-virtual {v6}, Lcom/nononsenseapps/filepicker/k;->a()Lcom/nononsenseapps/filepicker/j;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Lcom/nononsenseapps/filepicker/m;-><init>(Lcom/nononsenseapps/filepicker/l;Landroid/support/v7/widget/RecyclerView$Adapter;)V

    invoke-direct {v3, v4, v5, v0}, Landroid/support/v7/util/SortedList;-><init>(Ljava/lang/Class;Landroid/support/v7/util/SortedList$Callback;I)V

    invoke-virtual {v3}, Landroid/support/v7/util/SortedList;->beginBatchedUpdates()V

    if-eqz v2, :cond_2

    array-length v0, v2

    :goto_1
    if-ge v1, v0, :cond_2

    aget-object v4, v2, v1

    iget-object v5, p0, Lcom/nononsenseapps/filepicker/l;->p:Lcom/nononsenseapps/filepicker/k;

    invoke-virtual {v5, v4}, Lcom/nononsenseapps/filepicker/k;->f(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v3, v4}, Landroid/support/v7/util/SortedList;->add(Ljava/lang/Object;)I

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    array-length v0, v2

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Landroid/support/v7/util/SortedList;->endBatchedUpdates()V

    return-object v3
.end method
