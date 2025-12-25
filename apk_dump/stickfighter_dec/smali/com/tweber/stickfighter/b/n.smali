.class Lcom/tweber/stickfighter/b/n;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v7/widget/PopupMenu$OnMenuItemClickListener;


# instance fields
.field final synthetic a:Lcom/tweber/stickfighter/b/m;


# direct methods
.method constructor <init>(Lcom/tweber/stickfighter/b/m;)V
    .locals 0

    iput-object p1, p0, Lcom/tweber/stickfighter/b/n;->a:Lcom/tweber/stickfighter/b/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    const/4 v0, 0x1

    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/tweber/stickfighter/b/n;->a:Lcom/tweber/stickfighter/b/m;

    iget-object v0, v0, Lcom/tweber/stickfighter/b/m;->b:Lcom/tweber/stickfighter/b/k;

    iget-object v1, p0, Lcom/tweber/stickfighter/b/n;->a:Lcom/tweber/stickfighter/b/m;

    iget-object v1, v1, Lcom/tweber/stickfighter/b/m;->a:Lcom/tweber/stickfighter/b/q;

    invoke-static {v0, v1}, Lcom/tweber/stickfighter/b/k;->a(Lcom/tweber/stickfighter/b/k;Lcom/tweber/stickfighter/b/q;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/tweber/stickfighter/b/n;->a:Lcom/tweber/stickfighter/b/m;

    iget-object v0, v0, Lcom/tweber/stickfighter/b/m;->b:Lcom/tweber/stickfighter/b/k;

    iget-object v1, p0, Lcom/tweber/stickfighter/b/n;->a:Lcom/tweber/stickfighter/b/m;

    iget-object v1, v1, Lcom/tweber/stickfighter/b/m;->a:Lcom/tweber/stickfighter/b/q;

    invoke-static {v0, v1}, Lcom/tweber/stickfighter/b/k;->b(Lcom/tweber/stickfighter/b/k;Lcom/tweber/stickfighter/b/q;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0c00f7
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
