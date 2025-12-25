.class Lcom/tweber/stickfighter/e/al;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/tweber/stickfighter/h/l;

.field final synthetic b:Lcom/tweber/stickfighter/e/aj;


# direct methods
.method constructor <init>(Lcom/tweber/stickfighter/e/aj;Lcom/tweber/stickfighter/h/l;)V
    .locals 0

    iput-object p1, p0, Lcom/tweber/stickfighter/e/al;->b:Lcom/tweber/stickfighter/e/aj;

    iput-object p2, p0, Lcom/tweber/stickfighter/e/al;->a:Lcom/tweber/stickfighter/h/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/tweber/stickfighter/e/al;->b:Lcom/tweber/stickfighter/e/aj;

    iget-object v0, v0, Lcom/tweber/stickfighter/e/aj;->a:Lcom/tweber/stickfighter/e/af;

    iget-object v1, p0, Lcom/tweber/stickfighter/e/al;->a:Lcom/tweber/stickfighter/h/l;

    invoke-static {v0, v1}, Lcom/tweber/stickfighter/e/af;->a(Lcom/tweber/stickfighter/e/af;Lcom/tweber/stickfighter/h/l;)V

    return-void
.end method
