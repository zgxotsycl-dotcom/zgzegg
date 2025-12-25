.class public Lcom/tweber/stickfighter/activities/EditCustomFigureActivity;
.super Lcom/tweber/stickfighter/activities/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tweber/stickfighter/activities/c;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()I
    .locals 1

    const v0, 0x7f03001b

    return v0
.end method

.method public onBackPressed()V
    .locals 2

    invoke-virtual {p0}, Lcom/tweber/stickfighter/activities/EditCustomFigureActivity;->getSupportFragmentManager()Landroid/support/v4/app/al;

    move-result-object v0

    const v1, 0x7f0c006d

    invoke-virtual {v0, v1}, Landroid/support/v4/app/al;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/tweber/stickfighter/g/e;

    invoke-virtual {v0}, Lcom/tweber/stickfighter/g/e;->a()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/tweber/stickfighter/activities/c;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/tweber/stickfighter/activities/EditCustomFigureActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1706

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/tweber/stickfighter/activities/EditCustomFigureActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "CustomFigureID"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/tweber/stickfighter/g/e;->a(I)Lcom/tweber/stickfighter/g/e;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tweber/stickfighter/activities/EditCustomFigureActivity;->getSupportFragmentManager()Landroid/support/v4/app/al;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/al;->a()Landroid/support/v4/app/az;

    move-result-object v1

    const v2, 0x7f0c006d

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/az;->b(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/az;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/az;->b()I

    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    invoke-super {p0, p1}, Lcom/tweber/stickfighter/activities/c;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/tweber/stickfighter/activities/EditCustomFigureActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1706

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_0
    return-void
.end method
