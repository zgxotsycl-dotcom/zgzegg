.class public abstract Lcom/tweber/stickfighter/activities/c;
.super Landroid/support/v7/app/AppCompatActivity;


# instance fields
.field private a:Landroid/support/v7/widget/Toolbar;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a()I
.end method

.method protected b()Landroid/support/v7/widget/Toolbar;
    .locals 1

    iget-object v0, p0, Lcom/tweber/stickfighter/activities/c;->a:Landroid/support/v7/widget/Toolbar;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/tweber/stickfighter/activities/c;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tweber/stickfighter/activities/c;->setContentView(I)V

    const v0, 0x7f0c0076

    invoke-virtual {p0, v0}, Lcom/tweber/stickfighter/activities/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p0, Lcom/tweber/stickfighter/activities/c;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v0, p0, Lcom/tweber/stickfighter/activities/c;->a:Landroid/support/v7/widget/Toolbar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tweber/stickfighter/activities/c;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v0}, Lcom/tweber/stickfighter/activities/c;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    :cond_0
    return-void
.end method
