.class Lcom/nononsenseapps/filepicker/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/nononsenseapps/filepicker/b;


# direct methods
.method constructor <init>(Lcom/nononsenseapps/filepicker/b;)V
    .locals 0

    iput-object p1, p0, Lcom/nononsenseapps/filepicker/d;->a:Lcom/nononsenseapps/filepicker/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/nononsenseapps/filepicker/d;->a:Lcom/nononsenseapps/filepicker/b;

    invoke-static {v0}, Lcom/nononsenseapps/filepicker/b;->a(Lcom/nononsenseapps/filepicker/b;)Lcom/nononsenseapps/filepicker/i;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nononsenseapps/filepicker/d;->a:Lcom/nononsenseapps/filepicker/b;

    iget-boolean v0, v0, Lcom/nononsenseapps/filepicker/b;->f:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nononsenseapps/filepicker/d;->a:Lcom/nononsenseapps/filepicker/b;

    iget v0, v0, Lcom/nononsenseapps/filepicker/b;->a:I

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/nononsenseapps/filepicker/d;->a:Lcom/nononsenseapps/filepicker/b;

    iget-object v0, v0, Lcom/nononsenseapps/filepicker/b;->b:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nononsenseapps/filepicker/d;->a:Lcom/nononsenseapps/filepicker/b;

    invoke-virtual {v0}, Lcom/nononsenseapps/filepicker/b;->getActivity()Landroid/support/v4/app/ae;

    move-result-object v0

    sget v1, Lcom/nononsenseapps/filepicker/aa;->select_something_first:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/nononsenseapps/filepicker/d;->a:Lcom/nononsenseapps/filepicker/b;

    iget-boolean v0, v0, Lcom/nononsenseapps/filepicker/b;->f:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nononsenseapps/filepicker/d;->a:Lcom/nononsenseapps/filepicker/b;

    invoke-static {v0}, Lcom/nononsenseapps/filepicker/b;->a(Lcom/nononsenseapps/filepicker/b;)Lcom/nononsenseapps/filepicker/i;

    move-result-object v0

    iget-object v1, p0, Lcom/nononsenseapps/filepicker/d;->a:Lcom/nononsenseapps/filepicker/b;

    iget-object v2, p0, Lcom/nononsenseapps/filepicker/d;->a:Lcom/nononsenseapps/filepicker/b;

    iget-object v2, v2, Lcom/nononsenseapps/filepicker/b;->b:Ljava/util/HashSet;

    invoke-virtual {v1, v2}, Lcom/nononsenseapps/filepicker/b;->a(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nononsenseapps/filepicker/i;->a(Ljava/util/List;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/nononsenseapps/filepicker/d;->a:Lcom/nononsenseapps/filepicker/b;

    iget v0, v0, Lcom/nononsenseapps/filepicker/b;->a:I

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/nononsenseapps/filepicker/d;->a:Lcom/nononsenseapps/filepicker/b;

    invoke-static {v0}, Lcom/nononsenseapps/filepicker/b;->a(Lcom/nononsenseapps/filepicker/b;)Lcom/nononsenseapps/filepicker/i;

    move-result-object v0

    iget-object v1, p0, Lcom/nononsenseapps/filepicker/d;->a:Lcom/nononsenseapps/filepicker/b;

    iget-object v2, p0, Lcom/nononsenseapps/filepicker/d;->a:Lcom/nononsenseapps/filepicker/b;

    invoke-virtual {v2}, Lcom/nononsenseapps/filepicker/b;->b()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nononsenseapps/filepicker/b;->d(Ljava/lang/Object;)Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nononsenseapps/filepicker/i;->a(Landroid/net/Uri;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/nononsenseapps/filepicker/d;->a:Lcom/nononsenseapps/filepicker/b;

    iget v0, v0, Lcom/nononsenseapps/filepicker/b;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/nononsenseapps/filepicker/d;->a:Lcom/nononsenseapps/filepicker/b;

    invoke-static {v0}, Lcom/nononsenseapps/filepicker/b;->a(Lcom/nononsenseapps/filepicker/b;)Lcom/nononsenseapps/filepicker/i;

    move-result-object v0

    iget-object v1, p0, Lcom/nononsenseapps/filepicker/d;->a:Lcom/nononsenseapps/filepicker/b;

    iget-object v2, p0, Lcom/nononsenseapps/filepicker/d;->a:Lcom/nononsenseapps/filepicker/b;

    iget-object v2, v2, Lcom/nononsenseapps/filepicker/b;->d:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/nononsenseapps/filepicker/b;->d(Ljava/lang/Object;)Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nononsenseapps/filepicker/i;->a(Landroid/net/Uri;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/nononsenseapps/filepicker/d;->a:Lcom/nononsenseapps/filepicker/b;

    iget-object v0, v0, Lcom/nononsenseapps/filepicker/b;->b:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/nononsenseapps/filepicker/d;->a:Lcom/nononsenseapps/filepicker/b;

    invoke-static {v0}, Lcom/nononsenseapps/filepicker/b;->a(Lcom/nononsenseapps/filepicker/b;)Lcom/nononsenseapps/filepicker/i;

    move-result-object v0

    iget-object v1, p0, Lcom/nononsenseapps/filepicker/d;->a:Lcom/nononsenseapps/filepicker/b;

    iget-object v2, p0, Lcom/nononsenseapps/filepicker/d;->a:Lcom/nononsenseapps/filepicker/b;

    iget-object v2, v2, Lcom/nononsenseapps/filepicker/b;->d:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/nononsenseapps/filepicker/b;->d(Ljava/lang/Object;)Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nononsenseapps/filepicker/i;->a(Landroid/net/Uri;)V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/nononsenseapps/filepicker/d;->a:Lcom/nononsenseapps/filepicker/b;

    invoke-static {v0}, Lcom/nononsenseapps/filepicker/b;->a(Lcom/nononsenseapps/filepicker/b;)Lcom/nononsenseapps/filepicker/i;

    move-result-object v0

    iget-object v1, p0, Lcom/nononsenseapps/filepicker/d;->a:Lcom/nononsenseapps/filepicker/b;

    iget-object v2, p0, Lcom/nononsenseapps/filepicker/d;->a:Lcom/nononsenseapps/filepicker/b;

    invoke-virtual {v2}, Lcom/nononsenseapps/filepicker/b;->b()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nononsenseapps/filepicker/b;->d(Ljava/lang/Object;)Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nononsenseapps/filepicker/i;->a(Landroid/net/Uri;)V

    goto/16 :goto_0
.end method
