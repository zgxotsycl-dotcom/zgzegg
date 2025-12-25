.class Lcom/tweber/stickfighter/views/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic a:Lcom/tweber/stickfighter/views/EditorToolbar;


# direct methods
.method constructor <init>(Lcom/tweber/stickfighter/views/EditorToolbar;)V
    .locals 0

    iput-object p1, p0, Lcom/tweber/stickfighter/views/b;->a:Lcom/tweber/stickfighter/views/EditorToolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/tweber/stickfighter/views/b;->a:Lcom/tweber/stickfighter/views/EditorToolbar;

    invoke-static {v0}, Lcom/tweber/stickfighter/views/EditorToolbar;->e(Lcom/tweber/stickfighter/views/EditorToolbar;)Landroid/support/design/widget/FloatingActionButton;

    move-result-object v1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/design/widget/FloatingActionButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method
