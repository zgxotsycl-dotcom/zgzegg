.class Lcom/tweber/stickfighter/b/s;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/tweber/stickfighter/h/v;

.field final synthetic b:Lcom/tweber/stickfighter/b/r;


# direct methods
.method constructor <init>(Lcom/tweber/stickfighter/b/r;Lcom/tweber/stickfighter/h/v;)V
    .locals 0

    iput-object p1, p0, Lcom/tweber/stickfighter/b/s;->b:Lcom/tweber/stickfighter/b/r;

    iput-object p2, p0, Lcom/tweber/stickfighter/b/s;->a:Lcom/tweber/stickfighter/h/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/tweber/stickfighter/activities/SequenceDetailsActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "SequenceId"

    iget-object v3, p0, Lcom/tweber/stickfighter/b/s;->a:Lcom/tweber/stickfighter/h/v;

    invoke-virtual {v3}, Lcom/tweber/stickfighter/h/v;->b()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v2, 0x63

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
