.class Lcom/tweber/stickfighter/views/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/tweber/stickfighter/views/EditorToolbar;


# direct methods
.method constructor <init>(Lcom/tweber/stickfighter/views/EditorToolbar;)V
    .locals 0

    iput-object p1, p0, Lcom/tweber/stickfighter/views/h;->a:Lcom/tweber/stickfighter/views/EditorToolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/tweber/stickfighter/views/h;->a:Lcom/tweber/stickfighter/views/EditorToolbar;

    invoke-static {v0}, Lcom/tweber/stickfighter/views/EditorToolbar;->a(Lcom/tweber/stickfighter/views/EditorToolbar;)Lcom/tweber/stickfighter/views/k;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_1
    :pswitch_0
    iget-object v0, p0, Lcom/tweber/stickfighter/views/h;->a:Lcom/tweber/stickfighter/views/EditorToolbar;

    invoke-static {v0}, Lcom/tweber/stickfighter/views/EditorToolbar;->a(Lcom/tweber/stickfighter/views/EditorToolbar;)Lcom/tweber/stickfighter/views/k;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/tweber/stickfighter/views/k;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/tweber/stickfighter/views/h;->a:Lcom/tweber/stickfighter/views/EditorToolbar;

    invoke-static {v0}, Lcom/tweber/stickfighter/views/EditorToolbar;->b(Lcom/tweber/stickfighter/views/EditorToolbar;)Landroid/support/design/widget/FloatingActionButton;

    move-result-object v0

    const v1, 0x7f020054

    invoke-virtual {v0, v1}, Landroid/support/design/widget/FloatingActionButton;->setImageResource(I)V

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/tweber/stickfighter/views/h;->a:Lcom/tweber/stickfighter/views/EditorToolbar;

    invoke-static {v0}, Lcom/tweber/stickfighter/views/EditorToolbar;->b(Lcom/tweber/stickfighter/views/EditorToolbar;)Landroid/support/design/widget/FloatingActionButton;

    move-result-object v0

    const v1, 0x7f020055

    invoke-virtual {v0, v1}, Landroid/support/design/widget/FloatingActionButton;->setImageResource(I)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
