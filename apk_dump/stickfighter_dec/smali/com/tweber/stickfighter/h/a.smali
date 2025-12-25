.class public abstract Lcom/tweber/stickfighter/h/a;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a(FF)V
.end method

.method public a(Landroid/view/MotionEvent;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0, v0, v1}, Lcom/tweber/stickfighter/h/a;->a(FF)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, v0, v1}, Lcom/tweber/stickfighter/h/a;->c(FF)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, v0, v1}, Lcom/tweber/stickfighter/h/a;->b(FF)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected abstract b(FF)V
.end method

.method protected abstract c(FF)V
.end method
