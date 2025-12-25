.class Lcom/tweber/stickfighter/b/t;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/tweber/stickfighter/h/v;

.field final synthetic b:Lcom/tweber/stickfighter/b/r;


# direct methods
.method constructor <init>(Lcom/tweber/stickfighter/b/r;Lcom/tweber/stickfighter/h/v;)V
    .locals 0

    iput-object p1, p0, Lcom/tweber/stickfighter/b/t;->b:Lcom/tweber/stickfighter/b/r;

    iput-object p2, p0, Lcom/tweber/stickfighter/b/t;->a:Lcom/tweber/stickfighter/h/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/tweber/stickfighter/b/t;->b:Lcom/tweber/stickfighter/b/r;

    iget-object v1, p0, Lcom/tweber/stickfighter/b/t;->a:Lcom/tweber/stickfighter/h/v;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/tweber/stickfighter/b/r;->a(Lcom/tweber/stickfighter/b/r;Lcom/tweber/stickfighter/h/v;Landroid/content/Context;)V

    return-void
.end method
