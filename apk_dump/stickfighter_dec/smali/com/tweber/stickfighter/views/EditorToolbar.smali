.class public Lcom/tweber/stickfighter/views/EditorToolbar;
.super Landroid/widget/LinearLayout;


# instance fields
.field private a:Landroid/support/design/widget/FloatingActionButton;

.field private b:Landroid/support/design/widget/FloatingActionButton;

.field private c:Landroid/support/design/widget/FloatingActionButton;

.field private d:Landroid/support/design/widget/FloatingActionButton;

.field private e:Landroid/support/design/widget/FloatingActionButton;

.field private f:Landroid/support/design/widget/FloatingActionButton;

.field private g:Landroid/widget/ProgressBar;

.field private h:Landroid/widget/ProgressBar;

.field private i:Landroid/widget/ProgressBar;

.field private j:Z

.field private k:Z

.field private l:Lcom/tweber/stickfighter/views/k;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tweber/stickfighter/views/EditorToolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/tweber/stickfighter/views/EditorToolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v2, p0, Lcom/tweber/stickfighter/views/EditorToolbar;->j:Z

    iput-object v3, p0, Lcom/tweber/stickfighter/views/EditorToolbar;->l:Lcom/tweber/stickfighter/views/k;

    invoke-virtual {p0}, Lcom/tweber/stickfighter/views/EditorToolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f030038

    invoke-static {v0, v1, v3}, Lcom/tweber/stickfighter/views/EditorToolbar;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/tweber/stickfighter/views/EditorToolbar;->addView(Landroid/view/View;)V

    iput-boolean v2, p0, Lcom/tweber/stickfighter/views/EditorToolbar;->k:Z

    const v0, 0x7f0c00a4

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/FloatingActionButton;

    iput-object v0, p0, Lcom/tweber/stickfighter/views/EditorToolbar;->a:Landroid/support/design/widget/FloatingActionButton;

    const v0, 0x7f0c00a9

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/FloatingActionButton;

    iput-object v0, p0, Lcom/tweber/stickfighter/views/EditorToolbar;->c:Landroid/support/design/widget/FloatingActionButton;

    const v0, 0x7f0c00a8

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/FloatingActionButton;

    iput-object v0, p0, Lcom/tweber/stickfighter/views/EditorToolbar;->b:Landroid/support/design/widget/FloatingActionButton;

    const v0, 0x7f0c00ad

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/FloatingActionButton;

    iput-object v0, p0, Lcom/tweber/stickfighter/views/EditorToolbar;->d:Landroid/support/design/widget/FloatingActionButton;

    const v0, 0x7f0c00a7

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/FloatingActionButton;

    iput-object v0, p0, Lcom/tweber/stickfighter/views/EditorToolbar;->e:Landroid/support/design/widget/FloatingActionButton;

    const v0, 0x7f0c00a1

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/FloatingActionButton;

    iput-object v0, p0, Lcom/tweber/stickfighter/views/EditorToolbar;->f:Landroid/support/design/widget/FloatingActionButton;

    const v0, 0x7f0c00a3

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/tweber/stickfighter/views/EditorToolbar;->g:Landroid/widget/ProgressBar;

    const v0, 0x7f0c00a6

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/tweber/stickfighter/views/EditorToolbar;->h:Landroid/widget/ProgressBar;

    const v0, 0x7f0c00ac

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/tweber/stickfighter/views/EditorToolbar;->i:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/tweber/stickfighter/views/EditorToolbar;->a:Landroid/support/design/widget/FloatingActionButton;

    new-instance v1, Lcom/tweber/stickfighter/views/a;

    invoke-direct {v1, p0}, Lcom/tweber/stickfighter/views/a;-><init>(Lcom/tweber/stickfighter/views/EditorToolbar;)V

    invoke-virtual {v0, v1}, Landroid/support/design/widget/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tweber/stickfighter/views/EditorToolbar;->c:Landroid/support/design/widget/FloatingActionButton;

    new-instance v1, Lcom/tweber/stickfighter/views/d;

    invoke-direct {v1, p0}, Lcom/tweber/stickfighter/views/d;-><init>(Lcom/tweber/stickfighter/views/EditorToolbar;)V

    invoke-virtual {v0, v1}, Landroid/support/design/widget/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tweber/stickfighter/views/EditorToolbar;->b:Landroid/support/design/widget/FloatingActionButton;

    new-instance v1, Lcom/tweber/stickfighter/views/e;

    invoke-direct {v1, p0}, Lcom/tweber/stickfighter/views/e;-><init>(Lcom/tweber/stickfighter/views/EditorToolbar;)V

    invoke-virtual {v0, v1}, Landroid/support/design/widget/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tweber/stickfighter/views/EditorToolbar;->d:Landroid/support/design/widget/FloatingActionButton;

    new-instance v1, Lcom/tweber/stickfighter/views/f;

    invoke-direct {v1, p0}, Lcom/tweber/stickfighter/views/f;-><init>(Lcom/tweber/stickfighter/views/EditorToolbar;)V

    invoke-virtual {v0, v1}, Landroid/support/design/widget/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tweber/stickfighter/views/EditorToolbar;->e:Landroid/support/design/widget/FloatingActionButton;

    new-instance v1, Lcom/tweber/stickfighter/views/g;

    invoke-direct {v1, p0}, Lcom/tweber/stickfighter/views/g;-><init>(Lcom/tweber/stickfighter/views/EditorToolbar;)V

    invoke-virtual {v0, v1}, Landroid/support/design/widget/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tweber/stickfighter/views/EditorToolbar;->f:Landroid/support/design/widget/FloatingActionButton;

    new-instance v1, Lcom/tweber/stickfighter/views/h;

    invoke-direct {v1, p0}, Lcom/tweber/stickfighter/views/h;-><init>(Lcom/tweber/stickfighter/views/EditorToolbar;)V

    invoke-virtual {v0, v1}, Landroid/support/design/widget/FloatingActionButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method static synthetic a(Lcom/tweber/stickfighter/views/EditorToolbar;)Lcom/tweber/stickfighter/views/k;
    .locals 1

    iget-object v0, p0, Lcom/tweber/stickfighter/views/EditorToolbar;->l:Lcom/tweber/stickfighter/views/k;

    return-object v0
.end method

.method static synthetic b(Lcom/tweber/stickfighter/views/EditorToolbar;)Landroid/support/design/widget/FloatingActionButton;
    .locals 1

    iget-object v0, p0, Lcom/tweber/stickfighter/views/EditorToolbar;->f:Landroid/support/design/widget/FloatingActionButton;

    return-object v0
.end method

.method static synthetic c(Lcom/tweber/stickfighter/views/EditorToolbar;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/tweber/stickfighter/views/EditorToolbar;->h:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic d(Lcom/tweber/stickfighter/views/EditorToolbar;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/tweber/stickfighter/views/EditorToolbar;->i:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic e(Lcom/tweber/stickfighter/views/EditorToolbar;)Landroid/support/design/widget/FloatingActionButton;
    .locals 1

    iget-object v0, p0, Lcom/tweber/stickfighter/views/EditorToolbar;->e:Landroid/support/design/widget/FloatingActionButton;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 10

    const/4 v5, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    const v1, 0x3f666666    # 0.9f

    const/high16 v6, 0x3f000000    # 0.5f

    iget-object v0, p0, Lcom/tweber/stickfighter/views/EditorToolbar;->g:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->clearAnimation()V

    iget-object v0, p0, Lcom/tweber/stickfighter/views/EditorToolbar;->g:Landroid/widget/ProgressBar;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/tweber/stickfighter/views/EditorToolbar;->g:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x10e0001

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    int-to-long v2, v9

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    iget-object v1, p0, Lcom/tweber/stickfighter/views/EditorToolbar;->g:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public a(Z)V
    .locals 7

    const/4 v6, 0x1

    iget-boolean v0, p0, Lcom/tweber/stickfighter/views/EditorToolbar;->j:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tweber/stickfighter/views/EditorToolbar;->e:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v0, v6}, Landroid/support/design/widget/FloatingActionButton;->setEnabled(Z)V

    iput-boolean v6, p0, Lcom/tweber/stickfighter/views/EditorToolbar;->j:Z

    iget-object v0, p0, Lcom/tweber/stickfighter/views/EditorToolbar;->e:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v0}, Landroid/support/design/widget/FloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b002f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iget-object v1, p0, Lcom/tweber/stickfighter/views/EditorToolbar;->e:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v1}, Landroid/support/design/widget/FloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b002e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iget-object v2, p0, Lcom/tweber/stickfighter/views/EditorToolbar;->e:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v2}, Landroid/support/design/widget/FloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    if-eqz p1, :cond_1

    new-instance v3, Landroid/animation/ArgbEvaluator;

    invoke-direct {v3}, Landroid/animation/ArgbEvaluator;-><init>()V

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-static {v3, v4}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/tweber/stickfighter/views/b;

    invoke-direct {v1, p0}, Lcom/tweber/stickfighter/views/b;-><init>(Lcom/tweber/stickfighter/views/EditorToolbar;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/tweber/stickfighter/views/EditorToolbar;->e:Landroid/support/design/widget/FloatingActionButton;

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/design/widget/FloatingActionButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method

.method public b()V
    .locals 10

    const/4 v5, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    const v1, 0x3f666666    # 0.9f

    const/high16 v6, 0x3f000000    # 0.5f

    iget-object v0, p0, Lcom/tweber/stickfighter/views/EditorToolbar;->h:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->clearAnimation()V

    iget-object v0, p0, Lcom/tweber/stickfighter/views/EditorToolbar;->h:Landroid/widget/ProgressBar;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/tweber/stickfighter/views/EditorToolbar;->h:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x10e0001

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    int-to-long v2, v9

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    iget-object v1, p0, Lcom/tweber/stickfighter/views/EditorToolbar;->h:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public b(Z)V
    .locals 6

    const/4 v5, 0x0

    iget-boolean v0, p0, Lcom/tweber/stickfighter/views/EditorToolbar;->j:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tweber/stickfighter/views/EditorToolbar;->e:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v0, v5}, Landroid/support/design/widget/FloatingActionButton;->setEnabled(Z)V

    iput-boolean v5, p0, Lcom/tweber/stickfighter/views/EditorToolbar;->j:Z

    iget-object v0, p0, Lcom/tweber/stickfighter/views/EditorToolbar;->e:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v0}, Landroid/support/design/widget/FloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b002f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iget-object v1, p0, Lcom/tweber/stickfighter/views/EditorToolbar;->e:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v1}, Landroid/support/design/widget/FloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b002e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iget-object v2, p0, Lcom/tweber/stickfighter/views/EditorToolbar;->e:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v2}, Landroid/support/design/widget/FloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    if-eqz p1, :cond_1

    new-instance v3, Landroid/animation/ArgbEvaluator;

    invoke-direct {v3}, Landroid/animation/ArgbEvaluator;-><init>()V

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-static {v3, v4}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/tweber/stickfighter/views/c;

    invoke-direct {v1, p0}, Lcom/tweber/stickfighter/views/c;-><init>(Lcom/tweber/stickfighter/views/EditorToolbar;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tweber/stickfighter/views/EditorToolbar;->e:Landroid/support/design/widget/FloatingActionButton;

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/FloatingActionButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method

.method public c()V
    .locals 10

    const/4 v5, 0x1

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3f666666    # 0.9f

    const/high16 v6, 0x3f000000    # 0.5f

    iget-object v0, p0, Lcom/tweber/stickfighter/views/EditorToolbar;->h:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->clearAnimation()V

    iget-object v0, p0, Lcom/tweber/stickfighter/views/EditorToolbar;->h:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x10e0001

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    int-to-long v2, v9

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    new-instance v1, Lcom/tweber/stickfighter/views/i;

    invoke-direct {v1, p0}, Lcom/tweber/stickfighter/views/i;-><init>(Lcom/tweber/stickfighter/views/EditorToolbar;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/tweber/stickfighter/views/EditorToolbar;->h:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public d()V
    .locals 10

    const/4 v5, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    const v1, 0x3f666666    # 0.9f

    const/high16 v6, 0x3f000000    # 0.5f

    iget-object v0, p0, Lcom/tweber/stickfighter/views/EditorToolbar;->i:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->clearAnimation()V

    iget-object v0, p0, Lcom/tweber/stickfighter/views/EditorToolbar;->i:Landroid/widget/ProgressBar;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/tweber/stickfighter/views/EditorToolbar;->i:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x10e0001

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    int-to-long v2, v9

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    iget-object v1, p0, Lcom/tweber/stickfighter/views/EditorToolbar;->i:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public e()V
    .locals 10

    const/4 v5, 0x1

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3f666666    # 0.9f

    const/high16 v6, 0x3f000000    # 0.5f

    iget-object v0, p0, Lcom/tweber/stickfighter/views/EditorToolbar;->i:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->clearAnimation()V

    iget-object v0, p0, Lcom/tweber/stickfighter/views/EditorToolbar;->i:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x10e0001

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    int-to-long v2, v9

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    new-instance v1, Lcom/tweber/stickfighter/views/j;

    invoke-direct {v1, p0}, Lcom/tweber/stickfighter/views/j;-><init>(Lcom/tweber/stickfighter/views/EditorToolbar;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/tweber/stickfighter/views/EditorToolbar;->i:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public f()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/tweber/stickfighter/views/EditorToolbar;->a:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/FloatingActionButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/tweber/stickfighter/views/EditorToolbar;->b:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/FloatingActionButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/tweber/stickfighter/views/EditorToolbar;->c:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/FloatingActionButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/tweber/stickfighter/views/EditorToolbar;->d:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/FloatingActionButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/tweber/stickfighter/views/EditorToolbar;->e:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/FloatingActionButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/tweber/stickfighter/views/EditorToolbar;->f:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/FloatingActionButton;->setEnabled(Z)V

    return-void
.end method

.method public g()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/tweber/stickfighter/views/EditorToolbar;->a:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/FloatingActionButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/tweber/stickfighter/views/EditorToolbar;->b:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/FloatingActionButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/tweber/stickfighter/views/EditorToolbar;->c:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/FloatingActionButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/tweber/stickfighter/views/EditorToolbar;->d:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/FloatingActionButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/tweber/stickfighter/views/EditorToolbar;->e:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/FloatingActionButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/tweber/stickfighter/views/EditorToolbar;->f:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/FloatingActionButton;->setEnabled(Z)V

    return-void
.end method

.method public h()V
    .locals 2

    const/16 v1, 0x8

    const v0, 0x7f0c00a5

    invoke-virtual {p0, v0}, Lcom/tweber/stickfighter/views/EditorToolbar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0c00ab

    invoke-virtual {p0, v0}, Lcom/tweber/stickfighter/views/EditorToolbar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setActiveActionMode(I)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/tweber/stickfighter/views/EditorToolbar;->c:Landroid/support/design/widget/FloatingActionButton;

    const v1, 0x7f02005b

    invoke-virtual {v0, v1}, Landroid/support/design/widget/FloatingActionButton;->setImageResource(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/tweber/stickfighter/views/EditorToolbar;->c:Landroid/support/design/widget/FloatingActionButton;

    const v1, 0x7f02005d

    invoke-virtual {v0, v1}, Landroid/support/design/widget/FloatingActionButton;->setImageResource(I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/tweber/stickfighter/views/EditorToolbar;->c:Landroid/support/design/widget/FloatingActionButton;

    const v1, 0x7f020059

    invoke-virtual {v0, v1}, Landroid/support/design/widget/FloatingActionButton;->setImageResource(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setOnInteractionListener(Lcom/tweber/stickfighter/views/k;)V
    .locals 0

    iput-object p1, p0, Lcom/tweber/stickfighter/views/EditorToolbar;->l:Lcom/tweber/stickfighter/views/k;

    return-void
.end method
