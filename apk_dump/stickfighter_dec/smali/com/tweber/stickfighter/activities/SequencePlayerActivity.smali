.class public Lcom/tweber/stickfighter/activities/SequencePlayerActivity;
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

    const v0, 0x7f030021

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/16 v1, 0x400

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tweber/stickfighter/activities/SequencePlayerActivity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/tweber/stickfighter/activities/SequencePlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    invoke-super {p0, p1}, Lcom/tweber/stickfighter/activities/c;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/tweber/stickfighter/activities/SequencePlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x700

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    if-nez p1, :cond_0

    invoke-static {}, Lcom/tweber/stickfighter/g/ae;->a()Lcom/tweber/stickfighter/g/ae;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tweber/stickfighter/activities/SequencePlayerActivity;->getSupportFragmentManager()Landroid/support/v4/app/al;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/al;->a()Landroid/support/v4/app/az;

    move-result-object v1

    const v2, 0x7f0c0079

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/az;->b(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/az;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/az;->b()I

    :cond_0
    return-void
.end method
