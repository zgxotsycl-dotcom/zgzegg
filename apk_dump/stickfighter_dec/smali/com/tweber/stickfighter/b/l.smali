.class Lcom/tweber/stickfighter/b/l;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/tweber/stickfighter/b/q;

.field final synthetic b:Lcom/tweber/stickfighter/b/k;


# direct methods
.method constructor <init>(Lcom/tweber/stickfighter/b/k;Lcom/tweber/stickfighter/b/q;)V
    .locals 0

    iput-object p1, p0, Lcom/tweber/stickfighter/b/l;->b:Lcom/tweber/stickfighter/b/k;

    iput-object p2, p0, Lcom/tweber/stickfighter/b/l;->a:Lcom/tweber/stickfighter/b/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    invoke-static {}, La/a/a/c;->a()La/a/a/c;

    move-result-object v0

    new-instance v1, Lcom/tweber/stickfighter/f/b;

    sget-object v2, Lcom/tweber/stickfighter/f/c;->d:Lcom/tweber/stickfighter/f/c;

    invoke-direct {v1, v2}, Lcom/tweber/stickfighter/f/b;-><init>(Lcom/tweber/stickfighter/f/c;)V

    invoke-virtual {v0, v1}, La/a/a/c;->c(Ljava/lang/Object;)V

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Lcom/tweber/stickfighter/activities/EditFrameActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "Position"

    iget-object v2, p0, Lcom/tweber/stickfighter/b/l;->b:Lcom/tweber/stickfighter/b/k;

    invoke-static {v2}, Lcom/tweber/stickfighter/b/k;->a(Lcom/tweber/stickfighter/b/k;)Lcom/tweber/stickfighter/h/v;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tweber/stickfighter/h/v;->f()Lcom/tweber/stickfighter/c/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tweber/stickfighter/c/a;->a()I

    move-result v2

    iget-object v3, p0, Lcom/tweber/stickfighter/b/l;->a:Lcom/tweber/stickfighter/b/q;

    invoke-virtual {v3}, Lcom/tweber/stickfighter/b/q;->getAdapterPosition()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
