.class public Lcom/tweber/stickfighter/g/ad;
.super Landroid/support/v4/app/Fragment;


# instance fields
.field private a:Landroid/support/v7/widget/RecyclerView;

.field private b:Ljava/util/ArrayList;

.field private c:Z

.field private d:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tweber/stickfighter/g/ad;->c:Z

    return-void
.end method

.method public static a(Landroid/net/Uri;)Lcom/tweber/stickfighter/g/ad;
    .locals 4

    new-instance v0, Lcom/tweber/stickfighter/g/ad;

    invoke-direct {v0}, Lcom/tweber/stickfighter/g/ad;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    if-eqz p0, :cond_0

    const-string v2, "EXTRA_IMPORT_URI"

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, v1}, Lcom/tweber/stickfighter/g/ad;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .locals 4

    invoke-static {}, Lcom/tweber/stickfighter/d/a;->a()Lcom/tweber/stickfighter/d/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/tweber/stickfighter/d/b;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/tweber/stickfighter/g/ad;->b:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/tweber/stickfighter/g/ad;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0c00b3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    new-instance v1, Lcom/tweber/stickfighter/b/r;

    iget-object v0, p0, Lcom/tweber/stickfighter/g/ad;->b:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/tweber/stickfighter/g/ad;->b()I

    move-result v2

    invoke-virtual {p0}, Lcom/tweber/stickfighter/g/ad;->getActivity()Landroid/support/v4/app/ae;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Lcom/tweber/stickfighter/b/r;-><init>(Ljava/util/ArrayList;ILandroid/app/Activity;)V

    const v0, 0x7f0c00b2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method private b()I
    .locals 3

    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/tweber/stickfighter/g/ad;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p0}, Lcom/tweber/stickfighter/g/ad;->getActivity()Landroid/support/v4/app/ae;

    move-result-object v2

    invoke-static {v2}, Lcom/tweber/stickfighter/j/d;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x3

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eq v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private b(Landroid/net/Uri;)V
    .locals 3

    invoke-static {p1}, Lcom/tweber/stickfighter/e/v;->a(Landroid/net/Uri;)Lcom/tweber/stickfighter/e/v;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tweber/stickfighter/g/ad;->getFragmentManager()Landroid/support/v4/app/al;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/aa;->show(Landroid/support/v4/app/al;Ljava/lang/String;)V

    return-void
.end method

.method private c()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/tweber/stickfighter/g/ad;->getActivity()Landroid/support/v4/app/ae;

    move-result-object v1

    const-class v2, Lcom/tweber/stickfighter/activities/AboutActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/tweber/stickfighter/g/ad;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private d()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/tweber/stickfighter/g/ad;->getActivity()Landroid/support/v4/app/ae;

    move-result-object v1

    const-class v2, Lcom/tweber/stickfighter/activities/HelpActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/tweber/stickfighter/g/ad;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private e()V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/tweber/stickfighter/g/ad;->getActivity()Landroid/support/v4/app/ae;

    move-result-object v0

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v0, v1}, Landroid/support/v4/b/c;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v1, v0, v3

    const/16 v1, 0xc

    invoke-virtual {p0, v0, v1}, Lcom/tweber/stickfighter/g/ad;->requestPermissions([Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/tweber/stickfighter/g/ad;->getActivity()Landroid/support/v4/app/ae;

    move-result-object v1

    const-class v2, Lcom/tweber/stickfighter/activities/AnimationFilePickerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "android.intent.extra.ALLOW_MULTIPLE"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "nononsense.intent.ALLOW_CREATE_DIR"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "nononsense.intent.MODE"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "nononsense.intent.START_PATH"

    sget-object v2, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v2}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/tweber/stickfighter/g/ad;->getActivity()Landroid/support/v4/app/ae;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/ae;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 3

    new-instance v0, Lcom/tweber/stickfighter/e/ao;

    invoke-direct {v0}, Lcom/tweber/stickfighter/e/ao;-><init>()V

    invoke-virtual {p0}, Lcom/tweber/stickfighter/g/ad;->getChildFragmentManager()Landroid/support/v4/app/al;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tweber/stickfighter/e/ao;->show(Landroid/support/v4/app/al;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/tweber/stickfighter/d/a;->a()Lcom/tweber/stickfighter/d/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tweber/stickfighter/g/ad;->getActivity()Landroid/support/v4/app/ae;

    move-result-object v1

    invoke-static {v1}, Lcom/tweber/stickfighter/j/d;->a(Landroid/app/Activity;)F

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/tweber/stickfighter/d/b;->a(Ljava/lang/String;F)Lcom/tweber/stickfighter/h/v;

    move-result-object v0

    invoke-static {}, Lcom/tweber/stickfighter/d/a;->a()Lcom/tweber/stickfighter/d/b;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tweber/stickfighter/h/v;->b()I

    move-result v2

    invoke-interface {v1, v2, v3}, Lcom/tweber/stickfighter/d/b;->a(II)Lcom/tweber/stickfighter/h/p;

    iget-object v1, p0, Lcom/tweber/stickfighter/g/ad;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v3, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/tweber/stickfighter/g/ad;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    iget-object v1, p0, Lcom/tweber/stickfighter/g/ad;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    invoke-virtual {p0}, Lcom/tweber/stickfighter/g/ad;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0c00b3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/tweber/stickfighter/g/ad;->getActivity()Landroid/support/v4/app/ae;

    move-result-object v2

    const-class v3, Lcom/tweber/stickfighter/activities/SequenceDetailsActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "SequenceId"

    invoke-virtual {v0}, Lcom/tweber/stickfighter/h/v;->b()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/tweber/stickfighter/g/ad;->getActivity()Landroid/support/v4/app/ae;

    move-result-object v0

    const/16 v2, 0x63

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/ae;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/tweber/stickfighter/g/ad;->d:Landroid/net/Uri;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tweber/stickfighter/g/ad;->c:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x63

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/tweber/stickfighter/g/ad;->b:Ljava/util/ArrayList;

    invoke-static {}, Lcom/tweber/stickfighter/h/v;->a()Lcom/tweber/stickfighter/h/v;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/tweber/stickfighter/g/ad;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tweber/stickfighter/h/v;

    invoke-static {}, Lcom/tweber/stickfighter/h/v;->a()Lcom/tweber/stickfighter/h/v;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tweber/stickfighter/h/v;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tweber/stickfighter/h/v;->a(I)V

    invoke-virtual {v0}, Lcom/tweber/stickfighter/h/v;->f()Lcom/tweber/stickfighter/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tweber/stickfighter/c/a;->b()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/tweber/stickfighter/h/v;->a(Lcom/tweber/stickfighter/h/v;)V

    iget-object v0, p0, Lcom/tweber/stickfighter/g/ad;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/tweber/stickfighter/g/ad;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v2}, Lcom/tweber/stickfighter/g/ad;->setHasOptionsMenu(Z)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tweber/stickfighter/g/ad;->b:Ljava/util/ArrayList;

    invoke-static {}, La/a/a/c;->a()La/a/a/c;

    move-result-object v0

    invoke-virtual {v0, p0}, La/a/a/c;->a(Ljava/lang/Object;)V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/tweber/stickfighter/g/ad;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "EXTRA_IMPORT_URI"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tweber/stickfighter/g/ad;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "EXTRA_IMPORT_URI"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/tweber/stickfighter/g/ad;->d:Landroid/net/Uri;

    iput-boolean v2, p0, Lcom/tweber/stickfighter/g/ad;->c:Z

    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    const v0, 0x7f0e0004

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    const/4 v6, 0x0

    const v0, 0x7f030043

    invoke-virtual {p1, v0, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0c00b2

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/tweber/stickfighter/g/ad;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, p0, Lcom/tweber/stickfighter/g/ad;->a:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/tweber/stickfighter/g/ad;->getActivity()Landroid/support/v4/app/ae;

    move-result-object v3

    invoke-direct {p0}, Lcom/tweber/stickfighter/g/ad;->b()I

    move-result v4

    const/4 v5, 0x1

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcom/tweber/stickfighter/g/ad;->a:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v2}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    invoke-direct {p0, v1}, Lcom/tweber/stickfighter/g/ad;->a(Landroid/view/View;)V

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

.method public onEvent(Lcom/tweber/stickfighter/f/a;)V
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/tweber/stickfighter/g/ad;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/tweber/stickfighter/f/a;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/tweber/stickfighter/g/ad;->getActivity()Landroid/support/v4/app/ae;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File created at: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tweber/stickfighter/f/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/tweber/stickfighter/g/ad;->getActivity()Landroid/support/v4/app/ae;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERROR: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tweber/stickfighter/f/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onEvent(Lcom/tweber/stickfighter/f/g;)V
    .locals 4

    invoke-virtual {p0}, Lcom/tweber/stickfighter/g/ad;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tweber/stickfighter/g/ad;->b:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tweber/stickfighter/h/v;

    invoke-virtual {p0}, Lcom/tweber/stickfighter/g/ad;->getActivity()Landroid/support/v4/app/ae;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/tweber/stickfighter/activities/SequenceDetailsActivity;

    invoke-direct {v2, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "SequenceId"

    invoke-virtual {v0}, Lcom/tweber/stickfighter/h/v;->b()I

    move-result v0

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v0, 0x63

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public onEvent(Lcom/tweber/stickfighter/f/i;)V
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/tweber/stickfighter/g/ad;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/tweber/stickfighter/f/i;->a()Lcom/tweber/stickfighter/h/v;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tweber/stickfighter/g/ad;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/tweber/stickfighter/g/ad;->getView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/tweber/stickfighter/g/ad;->getActivity()Landroid/support/v4/app/ae;

    move-result-object v0

    const v3, 0x7f0c0071

    invoke-virtual {v0, v3}, Landroid/support/v4/app/ae;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v3, 0x7f050081

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/tweber/stickfighter/f/i;->a()Lcom/tweber/stickfighter/h/v;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tweber/stickfighter/h/v;->c()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p0, v3, v4}, Lcom/tweber/stickfighter/g/ad;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

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

    iget-object v0, p0, Lcom/tweber/stickfighter/g/ad;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0c00b3

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onEvent(Lcom/tweber/stickfighter/f/k;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/tweber/stickfighter/g/ad;->a:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tweber/stickfighter/g/ad;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tweber/stickfighter/g/ad;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/tweber/stickfighter/f/k;->a()Lcom/tweber/stickfighter/h/v;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/tweber/stickfighter/g/ad;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    iget-object v0, p0, Lcom/tweber/stickfighter/g/ad;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    invoke-virtual {p0}, Lcom/tweber/stickfighter/g/ad;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0c00b3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onEvent(Lcom/tweber/stickfighter/f/l;)V
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/tweber/stickfighter/g/ad;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/tweber/stickfighter/f/l;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/tweber/stickfighter/g/ad;->getActivity()Landroid/support/v4/app/ae;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Video created at: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tweber/stickfighter/f/l;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/tweber/stickfighter/g/ad;->getActivity()Landroid/support/v4/app/ae;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERROR: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tweber/stickfighter/f/l;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    invoke-direct {p0}, Lcom/tweber/stickfighter/g/ad;->c()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/tweber/stickfighter/g/ad;->d()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/tweber/stickfighter/g/ad;->e()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0c00fc
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    array-length v0, p3

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget v0, p3, v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/tweber/stickfighter/g/ad;->e()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    iget-boolean v0, p0, Lcom/tweber/stickfighter/g/ad;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tweber/stickfighter/g/ad;->c:Z

    iget-object v0, p0, Lcom/tweber/stickfighter/g/ad;->d:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/tweber/stickfighter/g/ad;->b(Landroid/net/Uri;)V

    :cond_0
    return-void
.end method
