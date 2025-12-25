.class Lcom/tweber/stickfighter/activities/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/tweber/stickfighter/activities/HomeScreenActivity;


# direct methods
.method constructor <init>(Lcom/tweber/stickfighter/activities/HomeScreenActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/tweber/stickfighter/activities/d;->a:Lcom/tweber/stickfighter/activities/HomeScreenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/view/ViewPager;I)Landroid/support/v4/app/Fragment;
    .locals 2

    iget-object v0, p0, Lcom/tweber/stickfighter/activities/d;->a:Lcom/tweber/stickfighter/activities/HomeScreenActivity;

    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getId()I

    move-result v1

    invoke-static {v0, v1, p2}, Lcom/tweber/stickfighter/activities/HomeScreenActivity;->a(Lcom/tweber/stickfighter/activities/HomeScreenActivity;II)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tweber/stickfighter/activities/d;->a:Lcom/tweber/stickfighter/activities/HomeScreenActivity;

    invoke-virtual {v1}, Lcom/tweber/stickfighter/activities/HomeScreenActivity;->getSupportFragmentManager()Landroid/support/v4/app/al;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/al;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/tweber/stickfighter/activities/d;->a:Lcom/tweber/stickfighter/activities/HomeScreenActivity;

    invoke-static {v0}, Lcom/tweber/stickfighter/activities/HomeScreenActivity;->a(Lcom/tweber/stickfighter/activities/HomeScreenActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/tweber/stickfighter/activities/d;->a:Lcom/tweber/stickfighter/activities/HomeScreenActivity;

    invoke-static {v0}, Lcom/tweber/stickfighter/activities/HomeScreenActivity;->a(Lcom/tweber/stickfighter/activities/HomeScreenActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/tweber/stickfighter/activities/d;->a(Landroid/support/v4/view/ViewPager;I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/tweber/stickfighter/g/ad;

    invoke-virtual {v0}, Lcom/tweber/stickfighter/g/ad;->a()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/tweber/stickfighter/activities/d;->a:Lcom/tweber/stickfighter/activities/HomeScreenActivity;

    invoke-static {v0}, Lcom/tweber/stickfighter/activities/HomeScreenActivity;->a(Lcom/tweber/stickfighter/activities/HomeScreenActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/tweber/stickfighter/activities/d;->a(Landroid/support/v4/view/ViewPager;I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/tweber/stickfighter/g/d;

    invoke-virtual {v0}, Lcom/tweber/stickfighter/g/d;->a()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
