.class Lcom/tweber/stickfighter/g/as;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/tweber/stickfighter/g/ae;


# direct methods
.method constructor <init>(Lcom/tweber/stickfighter/g/ae;)V
    .locals 0

    iput-object p1, p0, Lcom/tweber/stickfighter/g/as;->a:Lcom/tweber/stickfighter/g/ae;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/tweber/stickfighter/g/as;->a:Lcom/tweber/stickfighter/g/ae;

    invoke-static {v0}, Lcom/tweber/stickfighter/g/ae;->a(Lcom/tweber/stickfighter/g/ae;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tweber/stickfighter/g/as;->a:Lcom/tweber/stickfighter/g/ae;

    invoke-static {v0}, Lcom/tweber/stickfighter/g/ae;->a(Lcom/tweber/stickfighter/g/ae;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f05007d

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tweber/stickfighter/g/as;->a:Lcom/tweber/stickfighter/g/ae;

    invoke-static {v0}, Lcom/tweber/stickfighter/g/ae;->b(Lcom/tweber/stickfighter/g/ae;)V

    goto :goto_0
.end method
