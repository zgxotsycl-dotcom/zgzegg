.class public Lcom/tweber/stickfighter/activities/SequenceDetailsActivity;
.super Lcom/tweber/stickfighter/activities/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tweber/stickfighter/activities/c;-><init>()V

    return-void
.end method

.method private c()V
    .locals 3

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Landroid/support/v4/b/c;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    invoke-static {p0, v0, v1}, Landroid/support/v4/app/a;->a(Landroid/app/Activity;[Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/tweber/stickfighter/e/q;

    invoke-direct {v0}, Lcom/tweber/stickfighter/e/q;-><init>()V

    invoke-virtual {p0}, Lcom/tweber/stickfighter/activities/SequenceDetailsActivity;->getSupportFragmentManager()Landroid/support/v4/app/al;

    move-result-object v1

    const-string v2, "ExportDialogTag"

    invoke-virtual {v0, v1, v2}, Lcom/tweber/stickfighter/e/q;->show(Landroid/support/v4/app/al;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected a()I
    .locals 1

    const v0, 0x7f030020

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    invoke-virtual {p0}, Lcom/tweber/stickfighter/activities/SequenceDetailsActivity;->getSupportFragmentManager()Landroid/support/v4/app/al;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/al;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/tweber/stickfighter/activities/c;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/tweber/stickfighter/activities/SequenceDetailsActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {p0}, Lcom/tweber/stickfighter/activities/SequenceDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "SequenceId"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {}, Lcom/tweber/stickfighter/d/a;->a()Lcom/tweber/stickfighter/d/b;

    move-result-object v1

    int-to-long v2, v0

    invoke-interface {v1, v2, v3}, Lcom/tweber/stickfighter/d/b;->a(J)Lcom/tweber/stickfighter/h/v;

    move-result-object v1

    invoke-static {v1}, Lcom/tweber/stickfighter/h/v;->a(Lcom/tweber/stickfighter/h/v;)V

    invoke-virtual {v1}, Lcom/tweber/stickfighter/h/v;->f()Lcom/tweber/stickfighter/c/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tweber/stickfighter/c/a;->a()I

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/tweber/stickfighter/d/a;->a()Lcom/tweber/stickfighter/d/b;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Lcom/tweber/stickfighter/d/b;->a(II)Lcom/tweber/stickfighter/h/p;

    move-result-object v0

    invoke-virtual {v1}, Lcom/tweber/stickfighter/h/v;->f()Lcom/tweber/stickfighter/c/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tweber/stickfighter/c/a;->a(Lcom/tweber/stickfighter/h/p;)V

    :cond_0
    if-nez p1, :cond_1

    invoke-static {}, Lcom/tweber/stickfighter/g/aa;->a()Lcom/tweber/stickfighter/g/aa;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tweber/stickfighter/activities/SequenceDetailsActivity;->getSupportFragmentManager()Landroid/support/v4/app/al;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/al;->a()Landroid/support/v4/app/az;

    move-result-object v1

    const v2, 0x7f0c0077

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/az;->b(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/az;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/az;->b()I

    invoke-static {}, Lcom/tweber/stickfighter/g/v;->a()Lcom/tweber/stickfighter/g/v;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tweber/stickfighter/activities/SequenceDetailsActivity;->getSupportFragmentManager()Landroid/support/v4/app/al;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/al;->a()Landroid/support/v4/app/az;

    move-result-object v1

    const v2, 0x7f0c0078

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/az;->b(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/az;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/az;->b()I

    invoke-static {}, Lcom/tweber/stickfighter/a/a;->a()Lcom/tweber/stickfighter/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tweber/stickfighter/a/a;->b()Z

    :cond_1
    invoke-virtual {p0}, Lcom/tweber/stickfighter/activities/SequenceDetailsActivity;->b()Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    const v1, 0x7f05003c

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setTitle(I)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/tweber/stickfighter/activities/SequenceDetailsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0003

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    const/4 v0, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    invoke-super {p0, p1}, Lcom/tweber/stickfighter/activities/c;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    invoke-direct {p0}, Lcom/tweber/stickfighter/activities/SequenceDetailsActivity;->c()V

    goto :goto_0

    :sswitch_1
    invoke-static {}, La/a/a/c;->a()La/a/a/c;

    move-result-object v1

    new-instance v2, Lcom/tweber/stickfighter/f/b;

    sget-object v3, Lcom/tweber/stickfighter/f/c;->d:Lcom/tweber/stickfighter/f/c;

    invoke-direct {v2, v3}, Lcom/tweber/stickfighter/f/b;-><init>(Lcom/tweber/stickfighter/f/c;)V

    invoke-virtual {v1, v2}, La/a/a/c;->c(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/tweber/stickfighter/activities/SequenceDetailsActivity;->finish()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_1
        0x7f0c00fb -> :sswitch_0
    .end sparse-switch
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

    invoke-direct {p0}, Lcom/tweber/stickfighter/activities/SequenceDetailsActivity;->c()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
    .end packed-switch
.end method
