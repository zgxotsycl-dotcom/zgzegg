.class Lcom/tweber/stickfighter/e/ah;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/tweber/stickfighter/h/m;

.field final synthetic b:Lcom/tweber/stickfighter/e/ag;


# direct methods
.method constructor <init>(Lcom/tweber/stickfighter/e/ag;Lcom/tweber/stickfighter/h/m;)V
    .locals 0

    iput-object p1, p0, Lcom/tweber/stickfighter/e/ah;->b:Lcom/tweber/stickfighter/e/ag;

    iput-object p2, p0, Lcom/tweber/stickfighter/e/ah;->a:Lcom/tweber/stickfighter/h/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/tweber/stickfighter/e/ah;->b:Lcom/tweber/stickfighter/e/ag;

    iget-object v0, v0, Lcom/tweber/stickfighter/e/ag;->a:Lcom/tweber/stickfighter/e/af;

    iget-object v1, p0, Lcom/tweber/stickfighter/e/ah;->a:Lcom/tweber/stickfighter/h/m;

    invoke-static {v0, v1}, Lcom/tweber/stickfighter/e/af;->a(Lcom/tweber/stickfighter/e/af;Lcom/tweber/stickfighter/h/m;)V

    return-void
.end method
