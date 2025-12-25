.class public Lcom/tweber/stickfighter/activities/AddSequenceActivity;
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

    const v0, 0x7f03001a

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/tweber/stickfighter/activities/c;->onCreate(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    invoke-static {}, Lcom/tweber/stickfighter/g/a;->a()Lcom/tweber/stickfighter/g/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tweber/stickfighter/activities/AddSequenceActivity;->getSupportFragmentManager()Landroid/support/v4/app/al;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/al;->a()Landroid/support/v4/app/az;

    move-result-object v1

    const v2, 0x7f0c006c

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/az;->b(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/az;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/az;->b()I

    :cond_0
    return-void
.end method
