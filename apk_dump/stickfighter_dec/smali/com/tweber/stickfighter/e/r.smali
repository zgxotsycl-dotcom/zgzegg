.class Lcom/tweber/stickfighter/e/r;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/tweber/stickfighter/e/q;


# direct methods
.method constructor <init>(Lcom/tweber/stickfighter/e/q;)V
    .locals 0

    iput-object p1, p0, Lcom/tweber/stickfighter/e/r;->a:Lcom/tweber/stickfighter/e/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/tweber/stickfighter/e/r;->a:Lcom/tweber/stickfighter/e/q;

    invoke-static {v0}, Lcom/tweber/stickfighter/e/q;->a(Lcom/tweber/stickfighter/e/q;)Lcom/tweber/stickfighter/e/u;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tweber/stickfighter/e/r;->a:Lcom/tweber/stickfighter/e/q;

    invoke-static {v0}, Lcom/tweber/stickfighter/e/q;->a(Lcom/tweber/stickfighter/e/q;)Lcom/tweber/stickfighter/e/u;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tweber/stickfighter/e/u;->cancel(Z)Z

    :cond_0
    iget-object v0, p0, Lcom/tweber/stickfighter/e/r;->a:Lcom/tweber/stickfighter/e/q;

    invoke-virtual {v0}, Lcom/tweber/stickfighter/e/q;->dismiss()V

    return-void
.end method
