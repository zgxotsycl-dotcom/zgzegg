.class Lcom/tweber/stickfighter/g/n;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Lcom/tweber/stickfighter/g/k;


# direct methods
.method constructor <init>(Lcom/tweber/stickfighter/g/k;)V
    .locals 0

    iput-object p1, p0, Lcom/tweber/stickfighter/g/n;->a:Lcom/tweber/stickfighter/g/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/tweber/stickfighter/g/n;->a:Lcom/tweber/stickfighter/g/k;

    invoke-static {v0}, Lcom/tweber/stickfighter/g/k;->c(Lcom/tweber/stickfighter/g/k;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/tweber/stickfighter/g/n;->a:Lcom/tweber/stickfighter/g/k;

    invoke-static {v0}, Lcom/tweber/stickfighter/g/k;->d(Lcom/tweber/stickfighter/g/k;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/tweber/stickfighter/g/n;->a:Lcom/tweber/stickfighter/g/k;

    invoke-static {v0}, Lcom/tweber/stickfighter/g/k;->a(Lcom/tweber/stickfighter/g/k;)V

    invoke-static {}, Lcom/tweber/stickfighter/a/a;->a()Lcom/tweber/stickfighter/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tweber/stickfighter/a/a;->b()Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/tweber/stickfighter/g/n;->a:Lcom/tweber/stickfighter/g/k;

    invoke-static {v0}, Lcom/tweber/stickfighter/g/k;->c(Lcom/tweber/stickfighter/g/k;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/tweber/stickfighter/g/n;->a:Lcom/tweber/stickfighter/g/k;

    invoke-static {v0}, Lcom/tweber/stickfighter/g/k;->d(Lcom/tweber/stickfighter/g/k;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
