.class public abstract Lcom/nononsenseapps/filepicker/b;
.super Landroid/support/v4/app/Fragment;

# interfaces
.implements Landroid/support/v4/app/bi;
.implements Lcom/nononsenseapps/filepicker/o;
.implements Lcom/nononsenseapps/filepicker/v;


# instance fields
.field protected a:I

.field protected final b:Ljava/util/HashSet;

.field protected final c:Ljava/util/HashSet;

.field protected d:Ljava/lang/Object;

.field protected e:Z

.field protected f:Z

.field private g:Lcom/nononsenseapps/filepicker/i;

.field private h:Lcom/nononsenseapps/filepicker/j;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/support/v7/util/SortedList;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    iput v0, p0, Lcom/nononsenseapps/filepicker/b;->a:I

    iput-object v1, p0, Lcom/nononsenseapps/filepicker/b;->d:Ljava/lang/Object;

    iput-boolean v0, p0, Lcom/nononsenseapps/filepicker/b;->e:Z

    iput-boolean v0, p0, Lcom/nononsenseapps/filepicker/b;->f:Z

    iput-object v1, p0, Lcom/nononsenseapps/filepicker/b;->h:Lcom/nononsenseapps/filepicker/j;

    iput-object v1, p0, Lcom/nononsenseapps/filepicker/b;->j:Landroid/support/v7/util/SortedList;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/nononsenseapps/filepicker/b;->b:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/nononsenseapps/filepicker/b;->c:Ljava/util/HashSet;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nononsenseapps/filepicker/b;->setRetainInstance(Z)V

    return-void
.end method

.method static synthetic a(Lcom/nononsenseapps/filepicker/b;)Lcom/nononsenseapps/filepicker/i;
    .locals 1

    iget-object v0, p0, Lcom/nononsenseapps/filepicker/b;->g:Lcom/nononsenseapps/filepicker/i;

    return-object v0
.end method


# virtual methods
.method public a(ILjava/lang/Object;)I
    .locals 1

    invoke-virtual {p0, p2}, Lcom/nononsenseapps/filepicker/b;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public a(ILandroid/os/Bundle;)Landroid/support/v4/b/n;
    .locals 1

    invoke-virtual {p0}, Lcom/nononsenseapps/filepicker/b;->f()Landroid/support/v4/b/n;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 3

    const/4 v2, 0x0

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/nononsenseapps/filepicker/b;->getActivity()Landroid/support/v4/app/ae;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/nononsenseapps/filepicker/y;->filepicker_listitem_dir:I

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    new-instance v0, Lcom/nononsenseapps/filepicker/g;

    invoke-direct {v0, p0, v1}, Lcom/nononsenseapps/filepicker/g;-><init>(Lcom/nononsenseapps/filepicker/b;Landroid/view/View;)V

    :goto_0
    return-object v0

    :pswitch_1
    invoke-virtual {p0}, Lcom/nononsenseapps/filepicker/b;->getActivity()Landroid/support/v4/app/ae;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/nononsenseapps/filepicker/y;->filepicker_listitem_dir:I

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    new-instance v0, Lcom/nononsenseapps/filepicker/h;

    invoke-direct {v0, p0, v1}, Lcom/nononsenseapps/filepicker/h;-><init>(Lcom/nononsenseapps/filepicker/b;Landroid/view/View;)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/nononsenseapps/filepicker/b;->getActivity()Landroid/support/v4/app/ae;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/nononsenseapps/filepicker/y;->filepicker_listitem_checkable:I

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    new-instance v0, Lcom/nononsenseapps/filepicker/e;

    invoke-direct {v0, p0, v1}, Lcom/nononsenseapps/filepicker/e;-><init>(Lcom/nononsenseapps/filepicker/b;Landroid/view/View;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected a()Lcom/nononsenseapps/filepicker/j;
    .locals 1

    new-instance v0, Lcom/nononsenseapps/filepicker/j;

    invoke-direct {v0, p0}, Lcom/nononsenseapps/filepicker/j;-><init>(Lcom/nononsenseapps/filepicker/o;)V

    return-object v0
.end method

.method protected a(Ljava/lang/Iterable;)Ljava/util/List;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/nononsenseapps/filepicker/b;->d(Ljava/lang/Object;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public a(Landroid/support/v4/b/n;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nononsenseapps/filepicker/b;->h:Lcom/nononsenseapps/filepicker/j;

    invoke-virtual {v0, v1}, Lcom/nononsenseapps/filepicker/j;->a(Landroid/support/v7/util/SortedList;)V

    iput-object v1, p0, Lcom/nononsenseapps/filepicker/b;->j:Landroid/support/v7/util/SortedList;

    return-void
.end method

.method public a(Landroid/support/v4/b/n;Landroid/support/v7/util/SortedList;)V
    .locals 2

    iget-object v0, p0, Lcom/nononsenseapps/filepicker/b;->b:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    iget-object v0, p0, Lcom/nononsenseapps/filepicker/b;->c:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    iput-object p2, p0, Lcom/nononsenseapps/filepicker/b;->j:Landroid/support/v7/util/SortedList;

    iget-object v0, p0, Lcom/nononsenseapps/filepicker/b;->h:Lcom/nononsenseapps/filepicker/j;

    invoke-virtual {v0, p2}, Lcom/nononsenseapps/filepicker/j;->a(Landroid/support/v7/util/SortedList;)V

    iget-object v0, p0, Lcom/nononsenseapps/filepicker/b;->i:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nononsenseapps/filepicker/b;->d:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lcom/nononsenseapps/filepicker/b;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic a(Landroid/support/v4/b/n;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Landroid/support/v7/util/SortedList;

    invoke-virtual {p0, p1, p2}, Lcom/nononsenseapps/filepicker/b;->a(Landroid/support/v4/b/n;Landroid/support/v7/util/SortedList;)V

    return-void
.end method

.method public a(Lcom/nononsenseapps/filepicker/g;ILjava/lang/Object;)V
    .locals 3

    const/4 v1, 0x0

    iput-object p3, p1, Lcom/nononsenseapps/filepicker/g;->e:Ljava/lang/Object;

    iget-object v2, p1, Lcom/nononsenseapps/filepicker/g;->c:Landroid/view/View;

    invoke-virtual {p0, p3}, Lcom/nononsenseapps/filepicker/b;->f(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p1, Lcom/nononsenseapps/filepicker/g;->d:Landroid/widget/TextView;

    invoke-virtual {p0, p3}, Lcom/nononsenseapps/filepicker/b;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p3}, Lcom/nononsenseapps/filepicker/b;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nononsenseapps/filepicker/b;->b:Ljava/util/HashSet;

    invoke-virtual {v0, p3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/nononsenseapps/filepicker/b;->c:Ljava/util/HashSet;

    move-object v0, p1

    check-cast v0, Lcom/nononsenseapps/filepicker/e;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    check-cast p1, Lcom/nononsenseapps/filepicker/e;

    iget-object v0, p1, Lcom/nononsenseapps/filepicker/e;->a:Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/16 v0, 0x8

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/nononsenseapps/filepicker/b;->c:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    check-cast p1, Lcom/nononsenseapps/filepicker/e;

    iget-object v0, p1, Lcom/nononsenseapps/filepicker/e;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1
.end method

.method public a(Lcom/nononsenseapps/filepicker/h;)V
    .locals 2

    iget-object v0, p1, Lcom/nononsenseapps/filepicker/h;->a:Landroid/widget/TextView;

    const-string v1, ".."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(Ljava/lang/String;IZZ)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-eqz p1, :cond_0

    const-string v1, "KEY_START_PATH"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v1, "KEY_ALLOW_DIR_CREATE"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "KEY_ALLOW_MULTIPLE"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "KEY_MODE"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/nononsenseapps/filepicker/b;->setArguments(Landroid/os/Bundle;)V

    return-void
.end method

.method public a(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1}, Lcom/nononsenseapps/filepicker/b;->f(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/nononsenseapps/filepicker/b;->a:I

    if-ne v2, v1, :cond_0

    iget-boolean v2, p0, Lcom/nononsenseapps/filepicker/b;->f:Z

    if-nez v2, :cond_1

    :cond_0
    iget v2, p0, Lcom/nononsenseapps/filepicker/b;->a:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/nononsenseapps/filepicker/b;->f:Z

    if-eqz v2, :cond_2

    :cond_1
    move v0, v1

    :cond_2
    :goto_0
    return v0

    :cond_3
    iget v2, p0, Lcom/nononsenseapps/filepicker/b;->a:I

    if-eq v2, v1, :cond_4

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_4
    move v1, v0

    goto :goto_1
.end method

.method public b()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/nononsenseapps/filepicker/b;->b:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected c()V
    .locals 3

    invoke-virtual {p0}, Lcom/nononsenseapps/filepicker/b;->getLoaderManager()Landroid/support/v4/app/bh;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/bh;->a(ILandroid/os/Bundle;Landroid/support/v4/app/bi;)Landroid/support/v4/b/n;

    return-void
.end method

.method public d()V
    .locals 3

    iget-object v0, p0, Lcom/nononsenseapps/filepicker/b;->c:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nononsenseapps/filepicker/e;

    iget-object v0, v0, Lcom/nononsenseapps/filepicker/e;->a:Landroid/widget/CheckBox;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/nononsenseapps/filepicker/b;->c:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    iget-object v0, p0, Lcom/nononsenseapps/filepicker/b;->b:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/nononsenseapps/filepicker/b;->d:Ljava/lang/Object;

    if-nez v0, :cond_1

    if-eqz p1, :cond_2

    const-string v0, "KEY_MODE"

    iget v1, p0, Lcom/nononsenseapps/filepicker/b;->a:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/nononsenseapps/filepicker/b;->a:I

    const-string v0, "KEY_ALLOW_DIR_CREATE"

    iget-boolean v1, p0, Lcom/nononsenseapps/filepicker/b;->e:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nononsenseapps/filepicker/b;->e:Z

    const-string v0, "KEY_ALLOW_MULTIPLE"

    iget-boolean v1, p0, Lcom/nononsenseapps/filepicker/b;->f:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nononsenseapps/filepicker/b;->f:Z

    const-string v0, "KEY_CURRENT PATH"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nononsenseapps/filepicker/b;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/nononsenseapps/filepicker/b;->d:Ljava/lang/Object;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/nononsenseapps/filepicker/b;->d:Ljava/lang/Object;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/nononsenseapps/filepicker/b;->g()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/nononsenseapps/filepicker/b;->d:Ljava/lang/Object;

    :cond_1
    invoke-virtual {p0}, Lcom/nononsenseapps/filepicker/b;->c()V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/nononsenseapps/filepicker/b;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nononsenseapps/filepicker/b;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "KEY_MODE"

    iget v2, p0, Lcom/nononsenseapps/filepicker/b;->a:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/nononsenseapps/filepicker/b;->a:I

    invoke-virtual {p0}, Lcom/nononsenseapps/filepicker/b;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "KEY_ALLOW_DIR_CREATE"

    iget-boolean v2, p0, Lcom/nononsenseapps/filepicker/b;->e:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nononsenseapps/filepicker/b;->e:Z

    invoke-virtual {p0}, Lcom/nononsenseapps/filepicker/b;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "KEY_ALLOW_MULTIPLE"

    iget-boolean v2, p0, Lcom/nononsenseapps/filepicker/b;->f:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nononsenseapps/filepicker/b;->f:Z

    invoke-virtual {p0}, Lcom/nononsenseapps/filepicker/b;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "KEY_START_PATH"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nononsenseapps/filepicker/b;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "KEY_START_PATH"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nononsenseapps/filepicker/b;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/nononsenseapps/filepicker/b;->d:Ljava/lang/Object;

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/nononsenseapps/filepicker/i;

    move-object v1, v0

    iput-object v1, p0, Lcom/nononsenseapps/filepicker/b;->g:Lcom/nononsenseapps/filepicker/i;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " must implement OnFilePickedListener"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nononsenseapps/filepicker/b;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    sget v0, Lcom/nononsenseapps/filepicker/z;->picker_actions:I

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    sget v0, Lcom/nononsenseapps/filepicker/x;->action_createdir:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lcom/nononsenseapps/filepicker/b;->e:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    sget v0, Lcom/nononsenseapps/filepicker/y;->fragment_filepicker:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    sget v0, Lcom/nononsenseapps/filepicker/x;->picker_toolbar:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0}, Lcom/nononsenseapps/filepicker/b;->getActivity()Landroid/support/v4/app/ae;

    move-result-object v1

    check-cast v1, Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v1, v0}, Landroid/support/v7/app/AppCompatActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    const v0, 0x102000a

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/nononsenseapps/filepicker/b;->getActivity()Landroid/support/v4/app/ae;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    new-instance v1, Lcom/nononsenseapps/filepicker/j;

    invoke-direct {v1, p0}, Lcom/nononsenseapps/filepicker/j;-><init>(Lcom/nononsenseapps/filepicker/o;)V

    iput-object v1, p0, Lcom/nononsenseapps/filepicker/b;->h:Lcom/nononsenseapps/filepicker/j;

    iget-object v1, p0, Lcom/nononsenseapps/filepicker/b;->h:Lcom/nononsenseapps/filepicker/j;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    sget v0, Lcom/nononsenseapps/filepicker/x;->button_cancel:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/nononsenseapps/filepicker/c;

    invoke-direct {v1, p0}, Lcom/nononsenseapps/filepicker/c;-><init>(Lcom/nononsenseapps/filepicker/b;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/nononsenseapps/filepicker/x;->button_ok:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/nononsenseapps/filepicker/d;

    invoke-direct {v1, p0}, Lcom/nononsenseapps/filepicker/d;-><init>(Lcom/nononsenseapps/filepicker/b;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/nononsenseapps/filepicker/x;->current_dir:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nononsenseapps/filepicker/b;->i:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/nononsenseapps/filepicker/b;->d:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nononsenseapps/filepicker/b;->i:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nononsenseapps/filepicker/b;->d:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lcom/nononsenseapps/filepicker/b;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-object v2
.end method

.method public onDetach()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nononsenseapps/filepicker/b;->g:Lcom/nononsenseapps/filepicker/i;

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    sget v0, Lcom/nononsenseapps/filepicker/x;->action_createdir:I

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/nononsenseapps/filepicker/b;->getActivity()Landroid/support/v4/app/ae;

    move-result-object v0

    instance-of v1, v0, Landroid/support/v7/app/AppCompatActivity;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatActivity;->getSupportFragmentManager()Landroid/support/v4/app/al;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/nononsenseapps/filepicker/p;->a(Landroid/support/v4/app/al;Lcom/nononsenseapps/filepicker/v;)V

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "KEY_CURRENT PATH"

    iget-object v1, p0, Lcom/nononsenseapps/filepicker/b;->d:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "KEY_ALLOW_MULTIPLE"

    iget-boolean v1, p0, Lcom/nononsenseapps/filepicker/b;->f:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "KEY_ALLOW_DIR_CREATE"

    iget-boolean v1, p0, Lcom/nononsenseapps/filepicker/b;->e:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "KEY_MODE"

    iget v1, p0, Lcom/nononsenseapps/filepicker/b;->a:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method
