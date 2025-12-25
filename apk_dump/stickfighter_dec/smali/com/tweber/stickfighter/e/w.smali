.class Lcom/tweber/stickfighter/e/w;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/tweber/stickfighter/e/v;


# direct methods
.method constructor <init>(Lcom/tweber/stickfighter/e/v;)V
    .locals 0

    iput-object p1, p0, Lcom/tweber/stickfighter/e/w;->a:Lcom/tweber/stickfighter/e/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/tweber/stickfighter/e/w;->a:Lcom/tweber/stickfighter/e/v;

    invoke-static {v0}, Lcom/tweber/stickfighter/e/v;->a(Lcom/tweber/stickfighter/e/v;)Lcom/tweber/stickfighter/e/z;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tweber/stickfighter/e/w;->a:Lcom/tweber/stickfighter/e/v;

    invoke-static {v0}, Lcom/tweber/stickfighter/e/v;->a(Lcom/tweber/stickfighter/e/v;)Lcom/tweber/stickfighter/e/z;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tweber/stickfighter/e/z;->cancel(Z)Z

    :cond_0
    iget-object v0, p0, Lcom/tweber/stickfighter/e/w;->a:Lcom/tweber/stickfighter/e/v;

    invoke-virtual {v0}, Lcom/tweber/stickfighter/e/v;->dismiss()V

    return-void
.end method
