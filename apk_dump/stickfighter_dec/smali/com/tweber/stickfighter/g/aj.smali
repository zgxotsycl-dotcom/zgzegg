.class Lcom/tweber/stickfighter/g/aj;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# instance fields
.field final synthetic a:Lcom/tweber/stickfighter/g/ae;


# direct methods
.method constructor <init>(Lcom/tweber/stickfighter/g/ae;)V
    .locals 0

    iput-object p1, p0, Lcom/tweber/stickfighter/g/aj;->a:Lcom/tweber/stickfighter/g/ae;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .locals 4

    and-int/lit8 v0, p1, 0x4

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tweber/stickfighter/g/aj;->a:Lcom/tweber/stickfighter/g/ae;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tweber/stickfighter/g/ae;->c(Lcom/tweber/stickfighter/g/ae;Z)V

    iget-object v0, p0, Lcom/tweber/stickfighter/g/aj;->a:Lcom/tweber/stickfighter/g/ae;

    invoke-static {v0}, Lcom/tweber/stickfighter/g/ae;->t(Lcom/tweber/stickfighter/g/ae;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/tweber/stickfighter/g/ak;

    invoke-direct {v1, p0}, Lcom/tweber/stickfighter/g/ak;-><init>(Lcom/tweber/stickfighter/g/aj;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
