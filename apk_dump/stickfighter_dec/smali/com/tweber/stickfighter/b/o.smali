.class Lcom/tweber/stickfighter/b/o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/tweber/stickfighter/b/k;


# direct methods
.method constructor <init>(Lcom/tweber/stickfighter/b/k;I)V
    .locals 0

    iput-object p1, p0, Lcom/tweber/stickfighter/b/o;->b:Lcom/tweber/stickfighter/b/k;

    iput p2, p0, Lcom/tweber/stickfighter/b/o;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/tweber/stickfighter/b/o;->b:Lcom/tweber/stickfighter/b/k;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/tweber/stickfighter/b/o;->b:Lcom/tweber/stickfighter/b/k;

    invoke-static {v2}, Lcom/tweber/stickfighter/b/k;->a(Lcom/tweber/stickfighter/b/k;)Lcom/tweber/stickfighter/h/v;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tweber/stickfighter/h/v;->f()Lcom/tweber/stickfighter/c/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tweber/stickfighter/c/a;->a()I

    move-result v2

    iget v3, p0, Lcom/tweber/stickfighter/b/o;->a:I

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/tweber/stickfighter/b/k;->notifyItemRangeChanged(II)V

    return-void
.end method
