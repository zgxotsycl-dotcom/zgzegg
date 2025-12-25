.class Lcom/tweber/stickfighter/b/u;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/tweber/stickfighter/h/v;

.field final synthetic b:Lcom/tweber/stickfighter/b/r;


# direct methods
.method constructor <init>(Lcom/tweber/stickfighter/b/r;Lcom/tweber/stickfighter/h/v;)V
    .locals 0

    iput-object p1, p0, Lcom/tweber/stickfighter/b/u;->b:Lcom/tweber/stickfighter/b/r;

    iput-object p2, p0, Lcom/tweber/stickfighter/b/u;->a:Lcom/tweber/stickfighter/h/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/tweber/stickfighter/b/u;->b:Lcom/tweber/stickfighter/b/r;

    iget-object v1, p0, Lcom/tweber/stickfighter/b/u;->a:Lcom/tweber/stickfighter/h/v;

    invoke-static {v0, v1}, Lcom/tweber/stickfighter/b/r;->a(Lcom/tweber/stickfighter/b/r;Lcom/tweber/stickfighter/h/v;)V

    return-void
.end method
