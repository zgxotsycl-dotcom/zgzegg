.class public abstract Lcom/nononsenseapps/filepicker/a;
.super Landroid/support/v7/app/AppCompatActivity;

# interfaces
.implements Lcom/nononsenseapps/filepicker/i;


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:I

.field protected c:Z

.field protected d:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nononsenseapps/filepicker/a;->a:Ljava/lang/String;

    iput v1, p0, Lcom/nononsenseapps/filepicker/a;->b:I

    iput-boolean v1, p0, Lcom/nononsenseapps/filepicker/a;->c:Z

    iput-boolean v1, p0, Lcom/nononsenseapps/filepicker/a;->d:Z

    return-void
.end method


# virtual methods
.method protected abstract a(Ljava/lang/String;IZZ)Lcom/nononsenseapps/filepicker/b;
.end method

.method public a()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nononsenseapps/filepicker/a;->setResult(I)V

    invoke-virtual {p0}, Lcom/nononsenseapps/filepicker/a;->finish()V

    return-void
.end method

.method public a(Landroid/net/Uri;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/nononsenseapps/filepicker/a;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/nononsenseapps/filepicker/a;->finish()V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v0, "android.intent.extra.ALLOW_MULTIPLE"

    const/4 v1, 0x1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_2

    const/4 v1, 0x0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    if-nez v1, :cond_0

    new-instance v1, Landroid/content/ClipData;

    const-string v4, "Paths"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    new-instance v6, Landroid/content/ClipData$Item;

    invoke-direct {v6, v0}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    invoke-direct {v1, v4, v5, v6}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    move-object v0, v1

    :goto_1
    move-object v1, v0

    goto :goto_0

    :cond_0
    new-instance v4, Landroid/content/ClipData$Item;

    invoke-direct {v4, v0}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v1, v4}, Landroid/content/ClipData;->addItem(Landroid/content/ClipData$Item;)V

    move-object v0, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    :goto_2
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v2}, Lcom/nononsenseapps/filepicker/a;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/nononsenseapps/filepicker/a;->finish()V

    return-void

    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    const-string v0, "nononsense.intent.PATHS"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    goto :goto_2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lcom/nononsenseapps/filepicker/y;->activity_filepicker:I

    invoke-virtual {p0, v0}, Lcom/nononsenseapps/filepicker/a;->setContentView(I)V

    invoke-virtual {p0}, Lcom/nononsenseapps/filepicker/a;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "nononsense.intent.START_PATH"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nononsenseapps/filepicker/a;->a:Ljava/lang/String;

    const-string v1, "nononsense.intent.MODE"

    iget v2, p0, Lcom/nononsenseapps/filepicker/a;->b:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/nononsenseapps/filepicker/a;->b:I

    const-string v1, "nononsense.intent.ALLOW_CREATE_DIR"

    iget-boolean v2, p0, Lcom/nononsenseapps/filepicker/a;->c:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/nononsenseapps/filepicker/a;->c:Z

    const-string v1, "android.intent.extra.ALLOW_MULTIPLE"

    iget-boolean v2, p0, Lcom/nononsenseapps/filepicker/a;->d:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nononsenseapps/filepicker/a;->d:Z

    :cond_0
    invoke-virtual {p0}, Lcom/nononsenseapps/filepicker/a;->getSupportFragmentManager()Landroid/support/v4/app/al;

    move-result-object v1

    const-string v0, "filepicker_fragment"

    invoke-virtual {v1, v0}, Landroid/support/v4/app/al;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/nononsenseapps/filepicker/b;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nononsenseapps/filepicker/a;->a:Ljava/lang/String;

    iget v2, p0, Lcom/nononsenseapps/filepicker/a;->b:I

    iget-boolean v3, p0, Lcom/nononsenseapps/filepicker/a;->d:Z

    iget-boolean v4, p0, Lcom/nononsenseapps/filepicker/a;->c:Z

    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/nononsenseapps/filepicker/a;->a(Ljava/lang/String;IZZ)Lcom/nononsenseapps/filepicker/b;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v1}, Landroid/support/v4/app/al;->a()Landroid/support/v4/app/az;

    move-result-object v1

    sget v2, Lcom/nononsenseapps/filepicker/x;->fragment:I

    const-string v3, "filepicker_fragment"

    invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/app/az;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/az;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/az;->b()I

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nononsenseapps/filepicker/a;->setResult(I)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
