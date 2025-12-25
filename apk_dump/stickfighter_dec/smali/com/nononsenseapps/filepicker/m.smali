.class Lcom/nononsenseapps/filepicker/m;
.super Landroid/support/v7/widget/util/SortedListAdapterCallback;


# instance fields
.field final synthetic a:Lcom/nononsenseapps/filepicker/l;


# direct methods
.method constructor <init>(Lcom/nononsenseapps/filepicker/l;Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .locals 0

    iput-object p1, p0, Lcom/nononsenseapps/filepicker/m;->a:Lcom/nononsenseapps/filepicker/l;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/util/SortedListAdapterCallback;-><init>(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;Ljava/io/File;)I
    .locals 1

    iget-object v0, p0, Lcom/nononsenseapps/filepicker/m;->a:Lcom/nononsenseapps/filepicker/l;

    iget-object v0, v0, Lcom/nononsenseapps/filepicker/l;->p:Lcom/nononsenseapps/filepicker/k;

    invoke-virtual {v0, p1, p2}, Lcom/nononsenseapps/filepicker/k;->a(Ljava/io/File;Ljava/io/File;)I

    move-result v0

    return v0
.end method

.method public synthetic areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lcom/nononsenseapps/filepicker/m;->b(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public synthetic areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lcom/nononsenseapps/filepicker/m;->c(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public b(Ljava/io/File;Ljava/io/File;)Z
    .locals 2

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    invoke-virtual {p2}, Ljava/io/File;->isFile()Z

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Ljava/io/File;Ljava/io/File;)Z
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/nononsenseapps/filepicker/m;->b(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lcom/nononsenseapps/filepicker/m;->a(Ljava/io/File;Ljava/io/File;)I

    move-result v0

    return v0
.end method
