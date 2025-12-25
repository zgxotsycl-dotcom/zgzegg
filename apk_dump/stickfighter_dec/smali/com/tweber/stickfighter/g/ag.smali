.class Lcom/tweber/stickfighter/g/ag;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/tweber/stickfighter/g/ae;


# direct methods
.method constructor <init>(Lcom/tweber/stickfighter/g/ae;)V
    .locals 0

    iput-object p1, p0, Lcom/tweber/stickfighter/g/ag;->a:Lcom/tweber/stickfighter/g/ae;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    iget-object v0, p0, Lcom/tweber/stickfighter/g/ag;->a:Lcom/tweber/stickfighter/g/ae;

    invoke-static {v0}, Lcom/tweber/stickfighter/g/ae;->o(Lcom/tweber/stickfighter/g/ae;)V

    iget-object v0, p0, Lcom/tweber/stickfighter/g/ag;->a:Lcom/tweber/stickfighter/g/ae;

    invoke-static {v0}, Lcom/tweber/stickfighter/g/ae;->s(Lcom/tweber/stickfighter/g/ae;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tweber/stickfighter/g/ag;->a:Lcom/tweber/stickfighter/g/ae;

    invoke-static {v0}, Lcom/tweber/stickfighter/g/ae;->t(Lcom/tweber/stickfighter/g/ae;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/tweber/stickfighter/g/ag;->a:Lcom/tweber/stickfighter/g/ae;

    invoke-static {v0}, Lcom/tweber/stickfighter/g/ae;->t(Lcom/tweber/stickfighter/g/ae;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/tweber/stickfighter/g/ah;

    invoke-direct {v1, p0}, Lcom/tweber/stickfighter/g/ah;-><init>(Lcom/tweber/stickfighter/g/ag;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
