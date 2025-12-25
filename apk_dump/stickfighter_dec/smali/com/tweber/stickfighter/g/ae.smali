.class public Lcom/tweber/stickfighter/g/ae;
.super Landroid/support/v4/app/Fragment;

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# instance fields
.field private A:Landroid/widget/ImageView;

.field private B:Landroid/view/View;

.field private C:Landroid/widget/SeekBar;

.field private D:Landroid/widget/TextView;

.field private E:Landroid/widget/SeekBar;

.field private F:Landroid/widget/TextView;

.field private G:Landroid/support/v7/widget/SwitchCompat;

.field private H:Landroid/widget/Button;

.field private I:Landroid/widget/Button;

.field private J:Landroid/widget/ImageView;

.field private volatile K:Z

.field private volatile L:I

.field private volatile M:I

.field private N:Ljava/util/ArrayList;

.field private O:Ljava/util/ArrayList;

.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:[I

.field private final e:[I

.field private final f:[Ljava/lang/String;

.field private final g:I

.field private h:Lcom/tweber/stickfighter/g/az;

.field private i:I

.field private j:I

.field private k:Z

.field private l:Lcom/tweber/stickfighter/h/v;

.field private m:I

.field private n:Lcom/tweber/stickfighter/h/p;

.field private o:Landroid/view/TextureView;

.field private p:Lcom/tweber/stickfighter/g/ba;

.field private volatile q:Lcom/tweber/stickfighter/h/j;

.field private r:Landroid/os/Handler;

.field private s:Landroid/os/Handler;

.field private t:Landroid/os/Handler;

.field private u:Landroid/view/View;

.field private v:Landroid/widget/ProgressBar;

.field private w:Landroid/view/View;

.field private x:Landroid/widget/TextView;

.field private y:Landroid/widget/TextView;

.field private z:Landroid/widget/SeekBar;


# direct methods
.method public constructor <init>()V
    .locals 5

    const/4 v1, 0x6

    const/4 v4, 0x4

    const/4 v3, 0x0

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const-string v0, "PlayerFPS"

    iput-object v0, p0, Lcom/tweber/stickfighter/g/ae;->a:Ljava/lang/String;

    const-string v0, "PlayerKeyFPS"

    iput-object v0, p0, Lcom/tweber/stickfighter/g/ae;->b:Ljava/lang/String;

    const-string v0, "PlayerRepeat"

    iput-object v0, p0, Lcom/tweber/stickfighter/g/ae;->c:Ljava/lang/String;

    new-array v0, v4, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/tweber/stickfighter/g/ae;->d:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/tweber/stickfighter/g/ae;->e:[I

    new-array v0, v1, [Ljava/lang/String;

    const-string v1, "0.5x"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "1x"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "1.5x"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "2x"

    aput-object v2, v0, v1

    const-string v1, "3x"

    aput-object v1, v0, v4

    const/4 v1, 0x5

    const-string v2, "4x"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/tweber/stickfighter/g/ae;->f:[Ljava/lang/String;

    const/16 v0, 0xbb8

    iput v0, p0, Lcom/tweber/stickfighter/g/ae;->g:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tweber/stickfighter/g/ae;->h:Lcom/tweber/stickfighter/g/az;

    iput-boolean v3, p0, Lcom/tweber/stickfighter/g/ae;->K:Z

    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lcom/tweber/stickfighter/g/ae;->i:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/tweber/stickfighter/g/ae;->N:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lcom/tweber/stickfighter/g/ae;->i:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/tweber/stickfighter/g/ae;->O:Ljava/util/ArrayList;

    return-void

    :array_0
    .array-data 4
        0x18
        0x24
        0x30
        0x3c
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x6
        0x8
    .end array-data
.end method

.method static synthetic A(Lcom/tweber/stickfighter/g/ae;)Lcom/tweber/stickfighter/h/v;
    .locals 1

    iget-object v0, p0, Lcom/tweber/stickfighter/g/ae;->l:Lcom/tweber/stickfighter/h/v;

    return-object v0
.end method

.method static synthetic B(Lcom/tweber/stickfighter/g/ae;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/tweber/stickfighter/g/ae;->B:Landroid/view/View;

    return-object v0
.end method

.method static synthetic C(Lcom/tweber/stickfighter/g/ae;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/tweber/stickfighter/g/ae;->v:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic D(Lcom/tweber/stickfighter/g/ae;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/tweber/stickfighter/g/ae;->u:Landroid/view/View;

    return-object v0
.end method

.method static synthetic E(Lcom/tweber/stickfighter/g/ae;)I
    .locals 2

    iget v0, p0, Lcom/tweber/stickfighter/g/ae;->L:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/tweber/stickfighter/g/ae;->L:I

    return v0
.end method

.method static synthetic F(Lcom/tweber/stickfighter/g/ae;)I
    .locals 1

    iget v0, p0, Lcom/tweber/stickfighter/g/ae;->M:I

    return v0
.end method

.method static synthetic G(Lcom/tweber/stickfighter/g/ae;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/tweber/stickfighter/g/ae;->s:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic H(Lcom/tweber/stickfighter/g/ae;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/tweber/stickfighter/g/ae;->r:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic I(Lcom/tweber/stickfighter/g/ae;)I
    .locals 2

    iget v0, p0, Lcom/tweber/stickfighter/g/ae;->M:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/tweber/stickfighter/g/ae;->M:I

    return v0
.end method

.method static synthetic a(Lcom/tweber/stickfighter/g/ae;I)I
    .locals 0

    iput p1, p0, Lcom/tweber/stickfighter/g/ae;->i:I

    return p1
.end method

.method public static a()Lcom/tweber/stickfighter/g/ae;
    .locals 1

    new-instance v0, Lcom/tweber/stickfighter/g/ae;

    invoke-direct {v0}, Lcom/tweber/stickfighter/g/ae;-><init>()V

    return-object v0
.end method

.method static synthetic a(Lcom/tweber/stickfighter/g/ae;Lcom/tweber/stickfighter/g/az;)Lcom/tweber/stickfighter/g/az;
    .locals 0

    iput-object p1, p0, Lcom/tweber/stickfighter/g/ae;->h:Lcom/tweber/stickfighter/g/az;

    return-object p1
.end method

.method static synthetic a(Lcom/tweber/stickfighter/g/ae;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/tweber/stickfighter/g/ae;->N:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic a(Lcom/tweber/stickfighter/g/ae;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/tweber/stickfighter/g/ae;->N:Ljava/util/ArrayList;

    return-object p1
.end method

.method private a(IZ)V
    .locals 5

    div-int/lit8 v0, p1, 0x3c

    rem-int/lit8 v1, p1, 0x3c

    const-string v2, "%d:%02d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tweber/stickfighter/g/ae;->x:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/tweber/stickfighter/g/ae;->z:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/tweber/stickfighter/g/ae;->m:I

    add-int/lit8 v1, v1, -0x1

    int-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    iget v2, p0, Lcom/tweber/stickfighter/g/ae;->j:I

    div-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v0, p0, Lcom/tweber/stickfighter/g/ae;->z:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_0
    return-void
.end method

.method private a(Landroid/graphics/Canvas;Lcom/tweber/stickfighter/h/k;)V
    .locals 6

    iget-object v0, p0, Lcom/tweber/stickfighter/g/ae;->q:Lcom/tweber/stickfighter/h/j;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tweber/stickfighter/h/j;

    iget-object v1, p0, Lcom/tweber/stickfighter/g/ae;->l:Lcom/tweber/stickfighter/h/v;

    invoke-virtual {v1}, Lcom/tweber/stickfighter/h/v;->d()F

    move-result v1

    iget-object v2, p0, Lcom/tweber/stickfighter/g/ae;->o:Landroid/view/TextureView;

    invoke-direct {v0, v1, v2}, Lcom/tweber/stickfighter/h/j;-><init>(FLandroid/view/View;)V

    iput-object v0, p0, Lcom/tweber/stickfighter/g/ae;->q:Lcom/tweber/stickfighter/h/j;

    :cond_0
    iget-object v1, p0, Lcom/tweber/stickfighter/g/ae;->q:Lcom/tweber/stickfighter/h/j;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/tweber/stickfighter/g/ae;->l:Lcom/tweber/stickfighter/h/v;

    invoke-virtual {v0}, Lcom/tweber/stickfighter/h/v;->e()I

    move-result v5

    move-object v0, p2

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/tweber/stickfighter/h/k;->a(Lcom/tweber/stickfighter/h/j;Landroid/graphics/Canvas;ZLcom/tweber/stickfighter/h/p;I)V

    return-void
.end method

.method static synthetic a(Lcom/tweber/stickfighter/g/ae;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/tweber/stickfighter/g/ae;->a(IZ)V

    return-void
.end method

.method static synthetic a(Lcom/tweber/stickfighter/g/ae;Landroid/graphics/Canvas;Lcom/tweber/stickfighter/h/k;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/tweber/stickfighter/g/ae;->a(Landroid/graphics/Canvas;Lcom/tweber/stickfighter/h/k;)V

    return-void
.end method

.method static synthetic a(Lcom/tweber/stickfighter/g/ae;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tweber/stickfighter/g/ae;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/tweber/stickfighter/g/ae;->w:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    invoke-direct {p0}, Lcom/tweber/stickfighter/g/ae;->e()V

    iput v3, p0, Lcom/tweber/stickfighter/g/ae;->L:I

    iput v3, p0, Lcom/tweber/stickfighter/g/ae;->M:I

    new-instance v0, Lcom/tweber/stickfighter/g/ay;

    iget-object v1, p0, Lcom/tweber/stickfighter/g/ae;->N:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v3, v1}, Lcom/tweber/stickfighter/g/ay;-><init>(Lcom/tweber/stickfighter/g/ae;ILjava/util/ArrayList;)V

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/tweber/stickfighter/g/ay;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    iget v0, p0, Lcom/tweber/stickfighter/g/ae;->m:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/tweber/stickfighter/g/ae;->j:I

    if-gt v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/tweber/stickfighter/g/ae;->k:Z

    if-nez v0, :cond_2

    :cond_0
    new-instance v0, Lcom/tweber/stickfighter/g/ay;

    iget v1, p0, Lcom/tweber/stickfighter/g/ae;->j:I

    iget-object v2, p0, Lcom/tweber/stickfighter/g/ae;->O:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v2}, Lcom/tweber/stickfighter/g/ay;-><init>(Lcom/tweber/stickfighter/g/ae;ILjava/util/ArrayList;)V

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/tweber/stickfighter/g/ay;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/tweber/stickfighter/g/ae;->o:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    iget-object v1, p0, Lcom/tweber/stickfighter/g/ae;->n:Lcom/tweber/stickfighter/h/p;

    invoke-direct {p0, v0, v1}, Lcom/tweber/stickfighter/g/ae;->a(Landroid/graphics/Canvas;Lcom/tweber/stickfighter/h/k;)V

    iget-object v1, p0, Lcom/tweber/stickfighter/g/ae;->o:Landroid/view/TextureView;

    invoke-virtual {v1, v0}, Landroid/view/TextureView;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/tweber/stickfighter/g/ae;->L:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/tweber/stickfighter/g/ae;->a(IZ)V

    :cond_1
    return-void

    :cond_2
    new-instance v0, Lcom/tweber/stickfighter/g/ay;

    iget-object v1, p0, Lcom/tweber/stickfighter/g/ae;->O:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v3, v1}, Lcom/tweber/stickfighter/g/ay;-><init>(Lcom/tweber/stickfighter/g/ae;ILjava/util/ArrayList;)V

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/tweber/stickfighter/g/ay;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method static synthetic b(Lcom/tweber/stickfighter/g/ae;I)I
    .locals 0

    iput p1, p0, Lcom/tweber/stickfighter/g/ae;->j:I

    return p1
.end method

.method static synthetic b(Lcom/tweber/stickfighter/g/ae;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/tweber/stickfighter/g/ae;->O:Ljava/util/ArrayList;

    return-object p1
.end method

.method private b()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/tweber/stickfighter/StickFighterApplication;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "PlayerFPS"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/tweber/stickfighter/g/ae;->d:[I

    aget v1, v2, v1

    iput v1, p0, Lcom/tweber/stickfighter/g/ae;->i:I

    const-string v1, "PlayerKeyFPS"

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/tweber/stickfighter/g/ae;->e:[I

    aget v1, v2, v1

    iput v1, p0, Lcom/tweber/stickfighter/g/ae;->j:I

    const-string v1, "PlayerRepeat"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tweber/stickfighter/g/ae;->k:Z

    iput v3, p0, Lcom/tweber/stickfighter/g/ae;->L:I

    iput v3, p0, Lcom/tweber/stickfighter/g/ae;->M:I

    iget v0, p0, Lcom/tweber/stickfighter/g/ae;->L:I

    invoke-direct {p0, v0, v4}, Lcom/tweber/stickfighter/g/ae;->a(IZ)V

    invoke-direct {p0}, Lcom/tweber/stickfighter/g/ae;->i()V

    new-instance v0, Lcom/tweber/stickfighter/g/ay;

    iget-object v1, p0, Lcom/tweber/stickfighter/g/ae;->N:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v3, v1}, Lcom/tweber/stickfighter/g/ay;-><init>(Lcom/tweber/stickfighter/g/ae;ILjava/util/ArrayList;)V

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/tweber/stickfighter/g/ay;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    iget v0, p0, Lcom/tweber/stickfighter/g/ae;->m:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/tweber/stickfighter/g/ae;->j:I

    if-gt v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/tweber/stickfighter/g/ae;->k:Z

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lcom/tweber/stickfighter/g/ay;

    iget v1, p0, Lcom/tweber/stickfighter/g/ae;->j:I

    iget-object v2, p0, Lcom/tweber/stickfighter/g/ae;->O:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v2}, Lcom/tweber/stickfighter/g/ay;-><init>(Lcom/tweber/stickfighter/g/ae;ILjava/util/ArrayList;)V

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/tweber/stickfighter/g/ay;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/tweber/stickfighter/g/ay;

    iget-object v1, p0, Lcom/tweber/stickfighter/g/ae;->O:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v3, v1}, Lcom/tweber/stickfighter/g/ay;-><init>(Lcom/tweber/stickfighter/g/ae;ILjava/util/ArrayList;)V

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/tweber/stickfighter/g/ay;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method static synthetic b(Lcom/tweber/stickfighter/g/ae;)V
    .locals 0

    invoke-direct {p0}, Lcom/tweber/stickfighter/g/ae;->c()V

    return-void
.end method

.method private b(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/tweber/stickfighter/g/ae;->getActivity()Landroid/support/v4/app/ae;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/ae;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x700

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    invoke-direct {p0, p1}, Lcom/tweber/stickfighter/g/ae;->c(Z)V

    return-void
.end method

.method static synthetic b(Lcom/tweber/stickfighter/g/ae;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/tweber/stickfighter/g/ae;->k:Z

    return p1
.end method

.method static synthetic c(Lcom/tweber/stickfighter/g/ae;I)I
    .locals 0

    iput p1, p0, Lcom/tweber/stickfighter/g/ae;->L:I

    return p1
.end method

.method private c()V
    .locals 1

    iget-boolean v0, p0, Lcom/tweber/stickfighter/g/ae;->K:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/tweber/stickfighter/g/ae;->e()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/tweber/stickfighter/g/ae;->d()V

    goto :goto_0
.end method

.method static synthetic c(Lcom/tweber/stickfighter/g/ae;)V
    .locals 0

    invoke-direct {p0}, Lcom/tweber/stickfighter/g/ae;->g()V

    return-void
.end method

.method static synthetic c(Lcom/tweber/stickfighter/g/ae;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tweber/stickfighter/g/ae;->b(Z)V

    return-void
.end method

.method private c(Z)V
    .locals 2

    iget-object v0, p0, Lcom/tweber/stickfighter/g/ae;->w:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/tweber/stickfighter/g/ae;->getActivity()Landroid/support/v4/app/ae;

    move-result-object v0

    const v1, 0x7f040013

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    new-instance v1, Lcom/tweber/stickfighter/g/am;

    invoke-direct {v1, p0}, Lcom/tweber/stickfighter/g/am;-><init>(Lcom/tweber/stickfighter/g/ae;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/tweber/stickfighter/g/ae;->w:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tweber/stickfighter/g/ae;->w:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/tweber/stickfighter/g/ae;I)I
    .locals 0

    iput p1, p0, Lcom/tweber/stickfighter/g/ae;->M:I

    return p1
.end method

.method static synthetic d(Lcom/tweber/stickfighter/g/ae;)Landroid/widget/SeekBar;
    .locals 1

    iget-object v0, p0, Lcom/tweber/stickfighter/g/ae;->C:Landroid/widget/SeekBar;

    return-object v0
.end method

.method private d()V
    .locals 3

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/tweber/stickfighter/g/ae;->K:Z

    invoke-virtual {p0}, Lcom/tweber/stickfighter/g/ae;->getActivity()Landroid/support/v4/app/ae;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/ae;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    new-instance v0, Lcom/tweber/stickfighter/g/ba;

    iget-object v1, p0, Lcom/tweber/stickfighter/g/ae;->o:Landroid/view/TextureView;

    invoke-direct {v0, p0, v1}, Lcom/tweber/stickfighter/g/ba;-><init>(Lcom/tweber/stickfighter/g/ae;Landroid/view/TextureView;)V

    iput-object v0, p0, Lcom/tweber/stickfighter/g/ae;->p:Lcom/tweber/stickfighter/g/ba;

    iget-object v0, p0, Lcom/tweber/stickfighter/g/ae;->p:Lcom/tweber/stickfighter/g/ba;

    invoke-virtual {v0}, Lcom/tweber/stickfighter/g/ba;->start()V

    iget-object v0, p0, Lcom/tweber/stickfighter/g/ae;->J:Landroid/widget/ImageView;

    const v1, 0x7f020069

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget v0, p0, Lcom/tweber/stickfighter/g/ae;->L:I

    invoke-direct {p0, v0, v2}, Lcom/tweber/stickfighter/g/ae;->a(IZ)V

    invoke-direct {p0}, Lcom/tweber/stickfighter/g/ae;->f()V

    return-void
.end method

.method private d(Z)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/tweber/stickfighter/g/ae;->getActivity()Landroid/support/v4/app/ae;

    move-result-object v0

    const v1, 0x7f040012

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    new-instance v1, Lcom/tweber/stickfighter/g/an;

    invoke-direct {v1, p0}, Lcom/tweber/stickfighter/g/an;-><init>(Lcom/tweber/stickfighter/g/ae;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/tweber/stickfighter/g/ae;->w:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tweber/stickfighter/g/ae;->w:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic e(Lcom/tweber/stickfighter/g/ae;)Landroid/widget/SeekBar;
    .locals 1

    iget-object v0, p0, Lcom/tweber/stickfighter/g/ae;->E:Landroid/widget/SeekBar;

    return-object v0
.end method

.method private e()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tweber/stickfighter/g/ae;->K:Z

    invoke-virtual {p0}, Lcom/tweber/stickfighter/g/ae;->getActivity()Landroid/support/v4/app/ae;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/ae;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    iget-object v0, p0, Lcom/tweber/stickfighter/g/ae;->p:Lcom/tweber/stickfighter/g/ba;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tweber/stickfighter/g/ae;->p:Lcom/tweber/stickfighter/g/ba;

    invoke-virtual {v0}, Lcom/tweber/stickfighter/g/ba;->a()V

    iput-object v2, p0, Lcom/tweber/stickfighter/g/ae;->p:Lcom/tweber/stickfighter/g/ba;

    :cond_0
    iget-object v0, p0, Lcom/tweber/stickfighter/g/ae;->J:Landroid/widget/ImageView;

    const v1, 0x7f02005e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/tweber/stickfighter/g/ae;->b(Z)V

    iget-object v0, p0, Lcom/tweber/stickfighter/g/ae;->t:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic f(Lcom/tweber/stickfighter/g/ae;)Landroid/support/v7/widget/SwitchCompat;
    .locals 1

    iget-object v0, p0, Lcom/tweber/stickfighter/g/ae;->G:Landroid/support/v7/widget/SwitchCompat;

    return-object v0
.end method

.method private f()V
    .locals 2

    iget-object v0, p0, Lcom/tweber/stickfighter/g/ae;->t:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/tweber/stickfighter/g/ae;->getActivity()Landroid/support/v4/app/ae;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/ae;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x706

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/tweber/stickfighter/g/ae;->d(Z)V

    invoke-direct {p0}, Lcom/tweber/stickfighter/g/ae;->h()V

    return-void
.end method

.method static synthetic g(Lcom/tweber/stickfighter/g/ae;)I
    .locals 1

    iget v0, p0, Lcom/tweber/stickfighter/g/ae;->i:I

    return v0
.end method

.method private g()V
    .locals 9

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v5, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p0}, Lcom/tweber/stickfighter/g/ae;->e()V

    invoke-static {}, Lcom/tweber/stickfighter/StickFighterApplication;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v3, "PlayerFPS"

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iget-object v4, p0, Lcom/tweber/stickfighter/g/ae;->C:Landroid/widget/SeekBar;

    iget-object v6, p0, Lcom/tweber/stickfighter/g/ae;->d:[I

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v6}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v4, p0, Lcom/tweber/stickfighter/g/ae;->C:Landroid/widget/SeekBar;

    invoke-virtual {v4, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    const-string v3, "PlayerKeyFPS"

    const/4 v4, 0x3

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iget-object v4, p0, Lcom/tweber/stickfighter/g/ae;->E:Landroid/widget/SeekBar;

    iget-object v6, p0, Lcom/tweber/stickfighter/g/ae;->e:[I

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v6}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v4, p0, Lcom/tweber/stickfighter/g/ae;->E:Landroid/widget/SeekBar;

    invoke-virtual {v4, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    const-string v3, "PlayerRepeat"

    invoke-interface {v0, v3, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v3, p0, Lcom/tweber/stickfighter/g/ae;->G:Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    iget-object v0, p0, Lcom/tweber/stickfighter/g/ae;->B:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v6, v2

    move v7, v5

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    invoke-virtual {p0}, Lcom/tweber/stickfighter/g/ae;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x10e0000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    iget-object v1, p0, Lcom/tweber/stickfighter/g/ae;->B:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/tweber/stickfighter/g/ae;->B:Landroid/view/View;

    new-instance v1, Lcom/tweber/stickfighter/g/ao;

    invoke-direct {v1, p0}, Lcom/tweber/stickfighter/g/ao;-><init>(Lcom/tweber/stickfighter/g/ae;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private h()V
    .locals 9

    const/4 v5, 0x1

    const/4 v2, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    iget-object v0, p0, Lcom/tweber/stickfighter/g/ae;->B:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v6, v1

    move v7, v5

    move v8, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    invoke-virtual {p0}, Lcom/tweber/stickfighter/g/ae;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x10e0000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    new-instance v1, Lcom/tweber/stickfighter/g/ap;

    invoke-direct {v1, p0}, Lcom/tweber/stickfighter/g/ap;-><init>(Lcom/tweber/stickfighter/g/ae;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/tweber/stickfighter/g/ae;->B:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method static synthetic h(Lcom/tweber/stickfighter/g/ae;)[I
    .locals 1

    iget-object v0, p0, Lcom/tweber/stickfighter/g/ae;->d:[I

    return-object v0
.end method

.method static synthetic i(Lcom/tweber/stickfighter/g/ae;)I
    .locals 1

    iget v0, p0, Lcom/tweber/stickfighter/g/ae;->j:I

    return v0
.end method

.method private i()V
    .locals 6

    iget v0, p0, Lcom/tweber/stickfighter/g/ae;->m:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/tweber/stickfighter/g/ae;->j:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    div-int/lit8 v1, v0, 0x3c

    rem-int/lit8 v2, v0, 0x3c

    const-string v3, "%d:%02d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    const/4 v1, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tweber/stickfighter/g/ae;->y:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/tweber/stickfighter/g/ae;->z:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setMax(I)V

    return-void
.end method

.method static synthetic j(Lcom/tweber/stickfighter/g/ae;)[I
    .locals 1

    iget-object v0, p0, Lcom/tweber/stickfighter/g/ae;->e:[I

    return-object v0
.end method

.method static synthetic k(Lcom/tweber/stickfighter/g/ae;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/tweber/stickfighter/g/ae;->k:Z

    return v0
.end method

.method static synthetic l(Lcom/tweber/stickfighter/g/ae;)V
    .locals 0

    invoke-direct {p0}, Lcom/tweber/stickfighter/g/ae;->b()V

    return-void
.end method

.method static synthetic m(Lcom/tweber/stickfighter/g/ae;)Landroid/view/TextureView;
    .locals 1

    iget-object v0, p0, Lcom/tweber/stickfighter/g/ae;->o:Landroid/view/TextureView;

    return-object v0
.end method

.method static synthetic n(Lcom/tweber/stickfighter/g/ae;)Lcom/tweber/stickfighter/h/p;
    .locals 1

    iget-object v0, p0, Lcom/tweber/stickfighter/g/ae;->n:Lcom/tweber/stickfighter/h/p;

    return-object v0
.end method

.method static synthetic o(Lcom/tweber/stickfighter/g/ae;)V
    .locals 0

    invoke-direct {p0}, Lcom/tweber/stickfighter/g/ae;->h()V

    return-void
.end method

.method static synthetic p(Lcom/tweber/stickfighter/g/ae;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/tweber/stickfighter/g/ae;->D:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic q(Lcom/tweber/stickfighter/g/ae;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tweber/stickfighter/g/ae;->f:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic r(Lcom/tweber/stickfighter/g/ae;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/tweber/stickfighter/g/ae;->F:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic s(Lcom/tweber/stickfighter/g/ae;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/tweber/stickfighter/g/ae;->w:Landroid/view/View;

    return-object v0
.end method

.method static synthetic t(Lcom/tweber/stickfighter/g/ae;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/tweber/stickfighter/g/ae;->t:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic u(Lcom/tweber/stickfighter/g/ae;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/tweber/stickfighter/g/ae;->K:Z

    return v0
.end method

.method static synthetic v(Lcom/tweber/stickfighter/g/ae;)V
    .locals 0

    invoke-direct {p0}, Lcom/tweber/stickfighter/g/ae;->f()V

    return-void
.end method

.method static synthetic w(Lcom/tweber/stickfighter/g/ae;)V
    .locals 0

    invoke-direct {p0}, Lcom/tweber/stickfighter/g/ae;->e()V

    return-void
.end method

.method static synthetic x(Lcom/tweber/stickfighter/g/ae;)I
    .locals 1

    iget v0, p0, Lcom/tweber/stickfighter/g/ae;->L:I

    return v0
.end method

.method static synthetic y(Lcom/tweber/stickfighter/g/ae;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/tweber/stickfighter/g/ae;->O:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic z(Lcom/tweber/stickfighter/g/ae;)I
    .locals 1

    iget v0, p0, Lcom/tweber/stickfighter/g/ae;->m:I

    return v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/tweber/stickfighter/h/v;->a()Lcom/tweber/stickfighter/h/v;

    move-result-object v0

    iput-object v0, p0, Lcom/tweber/stickfighter/g/ae;->l:Lcom/tweber/stickfighter/h/v;

    iget-object v0, p0, Lcom/tweber/stickfighter/g/ae;->l:Lcom/tweber/stickfighter/h/v;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/tweber/stickfighter/g/ae;->getActivity()Landroid/support/v4/app/ae;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/ae;->finish()V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/tweber/stickfighter/d/a;->a()Lcom/tweber/stickfighter/d/b;

    move-result-object v0

    iget-object v1, p0, Lcom/tweber/stickfighter/g/ae;->l:Lcom/tweber/stickfighter/h/v;

    invoke-virtual {v1}, Lcom/tweber/stickfighter/h/v;->b()I

    move-result v1

    int-to-long v2, v1

    invoke-interface {v0, v2, v3}, Lcom/tweber/stickfighter/d/b;->b(J)I

    move-result v0

    iput v0, p0, Lcom/tweber/stickfighter/g/ae;->m:I

    iget-object v0, p0, Lcom/tweber/stickfighter/g/ae;->l:Lcom/tweber/stickfighter/h/v;

    invoke-virtual {v0}, Lcom/tweber/stickfighter/h/v;->f()Lcom/tweber/stickfighter/c/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tweber/stickfighter/c/a;->a(I)Lcom/tweber/stickfighter/h/p;

    move-result-object v0

    iput-object v0, p0, Lcom/tweber/stickfighter/g/ae;->n:Lcom/tweber/stickfighter/h/p;

    new-instance v0, Lcom/tweber/stickfighter/g/af;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/tweber/stickfighter/g/af;-><init>(Lcom/tweber/stickfighter/g/ae;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tweber/stickfighter/g/ae;->r:Landroid/os/Handler;

    new-instance v0, Lcom/tweber/stickfighter/g/aq;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/tweber/stickfighter/g/aq;-><init>(Lcom/tweber/stickfighter/g/ae;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tweber/stickfighter/g/ae;->s:Landroid/os/Handler;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tweber/stickfighter/g/ae;->t:Landroid/os/Handler;

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/tweber/stickfighter/g/ae;->l:Lcom/tweber/stickfighter/h/v;

    if-nez v0, :cond_0

    move-object v1, v3

    :goto_0
    return-object v1

    :cond_0
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0}, Lcom/tweber/stickfighter/g/ae;->getActivity()Landroid/support/v4/app/ae;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/ae;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/tweber/stickfighter/g/ae;->getActivity()Landroid/support/v4/app/ae;

    move-result-object v0

    invoke-static {v0}, Lcom/tweber/stickfighter/j/d;->c(Landroid/app/Activity;)I

    move-result v0

    invoke-virtual {p0}, Lcom/tweber/stickfighter/g/ae;->getActivity()Landroid/support/v4/app/ae;

    move-result-object v5

    invoke-static {v5}, Lcom/tweber/stickfighter/j/d;->b(Landroid/app/Activity;)I

    move-result v5

    iget v6, v4, Landroid/graphics/Rect;->right:I

    if-eq v0, v6, :cond_1

    move v0, v1

    :goto_1
    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    if-eq v5, v4, :cond_2

    :goto_2
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    const v0, 0x7f030045

    :goto_3
    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0c00e4

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/tweber/stickfighter/g/ae;->v:Landroid/widget/ProgressBar;

    const v0, 0x7f0c00e1

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tweber/stickfighter/g/ae;->u:Landroid/view/View;

    iget-object v0, p0, Lcom/tweber/stickfighter/g/ae;->u:Landroid/view/View;

    new-instance v4, Lcom/tweber/stickfighter/g/ar;

    invoke-direct {v4, p0}, Lcom/tweber/stickfighter/g/ar;-><init>(Lcom/tweber/stickfighter/g/ae;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v0, 0x7f0c00ce

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tweber/stickfighter/g/ae;->w:Landroid/view/View;

    const v0, 0x7f0c00d0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tweber/stickfighter/g/ae;->J:Landroid/widget/ImageView;

    const v0, 0x7f0c00cf

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v4, Lcom/tweber/stickfighter/g/as;

    invoke-direct {v4, p0}, Lcom/tweber/stickfighter/g/as;-><init>(Lcom/tweber/stickfighter/g/ae;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0c00d4

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tweber/stickfighter/g/ae;->A:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/tweber/stickfighter/g/ae;->A:Landroid/widget/ImageView;

    new-instance v4, Lcom/tweber/stickfighter/g/at;

    invoke-direct {v4, p0}, Lcom/tweber/stickfighter/g/at;-><init>(Lcom/tweber/stickfighter/g/ae;)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0c0081

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tweber/stickfighter/g/ae;->H:Landroid/widget/Button;

    iget-object v0, p0, Lcom/tweber/stickfighter/g/ae;->H:Landroid/widget/Button;

    new-instance v4, Lcom/tweber/stickfighter/g/au;

    invoke-direct {v4, p0}, Lcom/tweber/stickfighter/g/au;-><init>(Lcom/tweber/stickfighter/g/ae;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0c0082

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tweber/stickfighter/g/ae;->I:Landroid/widget/Button;

    iget-object v0, p0, Lcom/tweber/stickfighter/g/ae;->I:Landroid/widget/Button;

    new-instance v4, Lcom/tweber/stickfighter/g/av;

    invoke-direct {v4, p0}, Lcom/tweber/stickfighter/g/av;-><init>(Lcom/tweber/stickfighter/g/ae;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0c00d1

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tweber/stickfighter/g/ae;->x:Landroid/widget/TextView;

    const v0, 0x7f0c00d3

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tweber/stickfighter/g/ae;->y:Landroid/widget/TextView;

    const v0, 0x7f0c00d2

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/tweber/stickfighter/g/ae;->z:Landroid/widget/SeekBar;

    const v0, 0x7f0c00d5

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tweber/stickfighter/g/ae;->B:Landroid/view/View;

    const v0, 0x7f0c00d8

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/tweber/stickfighter/g/ae;->C:Landroid/widget/SeekBar;

    const v0, 0x7f0c00d7

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tweber/stickfighter/g/ae;->D:Landroid/widget/TextView;

    const v0, 0x7f0c0089

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/tweber/stickfighter/g/ae;->E:Landroid/widget/SeekBar;

    const v0, 0x7f0c0088

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tweber/stickfighter/g/ae;->F:Landroid/widget/TextView;

    const v0, 0x7f0c00dc

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SwitchCompat;

    iput-object v0, p0, Lcom/tweber/stickfighter/g/ae;->G:Landroid/support/v7/widget/SwitchCompat;

    iget-object v0, p0, Lcom/tweber/stickfighter/g/ae;->C:Landroid/widget/SeekBar;

    new-instance v4, Lcom/tweber/stickfighter/g/aw;

    invoke-direct {v4, p0}, Lcom/tweber/stickfighter/g/aw;-><init>(Lcom/tweber/stickfighter/g/ae;)V

    invoke-virtual {v0, v4}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v0, p0, Lcom/tweber/stickfighter/g/ae;->E:Landroid/widget/SeekBar;

    new-instance v4, Lcom/tweber/stickfighter/g/ax;

    invoke-direct {v4, p0}, Lcom/tweber/stickfighter/g/ax;-><init>(Lcom/tweber/stickfighter/g/ae;)V

    invoke-virtual {v0, v4}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    new-instance v0, Landroid/view/TextureView;

    invoke-virtual {p0}, Lcom/tweber/stickfighter/g/ae;->getActivity()Landroid/support/v4/app/ae;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tweber/stickfighter/g/ae;->o:Landroid/view/TextureView;

    iget-object v0, p0, Lcom/tweber/stickfighter/g/ae;->o:Landroid/view/TextureView;

    invoke-virtual {v0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    iget-object v0, p0, Lcom/tweber/stickfighter/g/ae;->o:Landroid/view/TextureView;

    invoke-virtual {v0, v2}, Landroid/view/TextureView;->setOpaque(Z)V

    move-object v0, v1

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/tweber/stickfighter/g/ae;->o:Landroid/view/TextureView;

    invoke-virtual {v0, v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/tweber/stickfighter/g/ae;->o:Landroid/view/TextureView;

    new-instance v4, Lcom/tweber/stickfighter/g/ag;

    invoke-direct {v4, p0}, Lcom/tweber/stickfighter/g/ag;-><init>(Lcom/tweber/stickfighter/g/ae;)V

    invoke-virtual {v0, v4}, Landroid/view/TextureView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-direct {p0}, Lcom/tweber/stickfighter/g/ae;->b()V

    if-nez p3, :cond_6

    new-instance v0, Lcom/tweber/stickfighter/g/az;

    invoke-direct {v0, p0, v3}, Lcom/tweber/stickfighter/g/az;-><init>(Lcom/tweber/stickfighter/g/ae;Lcom/tweber/stickfighter/g/af;)V

    iput-object v0, p0, Lcom/tweber/stickfighter/g/ae;->h:Lcom/tweber/stickfighter/g/az;

    iget-object v0, p0, Lcom/tweber/stickfighter/g/ae;->h:Lcom/tweber/stickfighter/g/az;

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Lcom/tweber/stickfighter/g/az;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_4
    iget-object v0, p0, Lcom/tweber/stickfighter/g/ae;->z:Landroid/widget/SeekBar;

    new-instance v2, Lcom/tweber/stickfighter/g/ai;

    invoke-direct {v2, p0}, Lcom/tweber/stickfighter/g/ai;-><init>(Lcom/tweber/stickfighter/g/ae;)V

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    invoke-virtual {p0}, Lcom/tweber/stickfighter/g/ae;->getActivity()Landroid/support/v4/app/ae;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/ae;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/tweber/stickfighter/g/aj;

    invoke-direct {v2, p0}, Lcom/tweber/stickfighter/g/aj;-><init>(Lcom/tweber/stickfighter/g/ae;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/tweber/stickfighter/g/al;

    invoke-direct {v2, p0}, Lcom/tweber/stickfighter/g/al;-><init>(Lcom/tweber/stickfighter/g/ae;)V

    const-wide/16 v4, 0x12c

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_1
    move v0, v2

    goto/16 :goto_1

    :cond_2
    move v1, v2

    goto/16 :goto_2

    :cond_3
    if-eqz v0, :cond_4

    const v0, 0x7f030044

    goto/16 :goto_3

    :cond_4
    if-eqz v1, :cond_5

    const v0, 0x7f030047

    goto/16 :goto_3

    :cond_5
    const v0, 0x7f030046

    goto/16 :goto_3

    :cond_6
    iget-object v0, p0, Lcom/tweber/stickfighter/g/ae;->u:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    iget-object v0, p0, Lcom/tweber/stickfighter/g/ae;->l:Lcom/tweber/stickfighter/h/v;

    invoke-virtual {v0}, Lcom/tweber/stickfighter/h/v;->f()Lcom/tweber/stickfighter/c/a;

    move-result-object v0

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Lcom/tweber/stickfighter/c/a;->b(I)V

    iget-object v0, p0, Lcom/tweber/stickfighter/g/ae;->h:Lcom/tweber/stickfighter/g/az;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tweber/stickfighter/g/ae;->h:Lcom/tweber/stickfighter/g/az;

    invoke-virtual {v0}, Lcom/tweber/stickfighter/g/az;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/tweber/stickfighter/g/ae;->getActivity()Landroid/support/v4/app/ae;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/ae;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tweber/stickfighter/g/ae;->h:Lcom/tweber/stickfighter/g/az;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tweber/stickfighter/g/az;->cancel(Z)Z

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tweber/stickfighter/g/ae;->h:Lcom/tweber/stickfighter/g/az;

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    invoke-direct {p0}, Lcom/tweber/stickfighter/g/ae;->e()V

    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    iget v0, p0, Lcom/tweber/stickfighter/g/ae;->L:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/tweber/stickfighter/g/ae;->M:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tweber/stickfighter/g/ae;->n:Lcom/tweber/stickfighter/h/p;

    :goto_0
    iget-object v1, p0, Lcom/tweber/stickfighter/g/ae;->o:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/TextureView;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/tweber/stickfighter/g/ae;->a(Landroid/graphics/Canvas;Lcom/tweber/stickfighter/h/k;)V

    iget-object v0, p0, Lcom/tweber/stickfighter/g/ae;->o:Landroid/view/TextureView;

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tweber/stickfighter/g/ae;->N:Ljava/util/ArrayList;

    iget v1, p0, Lcom/tweber/stickfighter/g/ae;->M:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tweber/stickfighter/h/k;

    goto :goto_0
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method
