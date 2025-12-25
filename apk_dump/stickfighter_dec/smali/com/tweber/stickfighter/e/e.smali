.class public Lcom/tweber/stickfighter/e/e;
.super Landroid/support/v4/app/aa;


# instance fields
.field private final a:[I

.field private final b:[Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private d:Landroid/widget/Spinner;

.field private e:Landroid/widget/SeekBar;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/ProgressBar;

.field private h:Lcom/tweber/stickfighter/e/l;

.field private i:I

.field private j:Ljava/io/File;

.field private k:Z

.field private l:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v1, 0x6

    invoke-direct {p0}, Landroid/support/v4/app/aa;-><init>()V

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/tweber/stickfighter/e/e;->a:[I

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "0.5x"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "1x"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "1.5x"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "2x"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "3x"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "4x"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/tweber/stickfighter/e/e;->b:[Ljava/lang/String;

    const-string v0, "PlayerKeyFPS"

    iput-object v0, p0, Lcom/tweber/stickfighter/e/e;->c:Ljava/lang/String;

    return-void

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x6
        0x8
    .end array-data
.end method

.method static synthetic a(Lcom/tweber/stickfighter/e/e;I)I
    .locals 0

    iput p1, p0, Lcom/tweber/stickfighter/e/e;->i:I

    return p1
.end method

.method static synthetic a(Lcom/tweber/stickfighter/e/e;Ljava/io/File;)Ljava/io/File;
    .locals 0

    iput-object p1, p0, Lcom/tweber/stickfighter/e/e;->j:Ljava/io/File;

    return-object p1
.end method

.method private a()V
    .locals 0

    invoke-virtual {p0}, Lcom/tweber/stickfighter/e/e;->dismiss()V

    return-void
.end method

.method static synthetic a(Lcom/tweber/stickfighter/e/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/tweber/stickfighter/e/e;->a()V

    return-void
.end method

.method static synthetic a(Lcom/tweber/stickfighter/e/e;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/tweber/stickfighter/e/e;->l:Z

    return p1
.end method

.method private b()V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tweber/stickfighter/e/e;->k:Z

    invoke-virtual {p0}, Lcom/tweber/stickfighter/e/e;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0c0083

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f0c008c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f0c0090

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Lcom/tweber/stickfighter/e/l;

    iget v1, p0, Lcom/tweber/stickfighter/e/e;->i:I

    invoke-direct {v0, p0, v1}, Lcom/tweber/stickfighter/e/l;-><init>(Lcom/tweber/stickfighter/e/e;I)V

    iput-object v0, p0, Lcom/tweber/stickfighter/e/e;->h:Lcom/tweber/stickfighter/e/l;

    iget-object v0, p0, Lcom/tweber/stickfighter/e/e;->h:Lcom/tweber/stickfighter/e/l;

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/tweber/stickfighter/e/l;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method static synthetic b(Lcom/tweber/stickfighter/e/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/tweber/stickfighter/e/e;->b()V

    return-void
.end method

.method private c()V
    .locals 2

    iget-object v0, p0, Lcom/tweber/stickfighter/e/e;->h:Lcom/tweber/stickfighter/e/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tweber/stickfighter/e/e;->h:Lcom/tweber/stickfighter/e/l;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tweber/stickfighter/e/l;->cancel(Z)Z

    :cond_0
    invoke-virtual {p0}, Lcom/tweber/stickfighter/e/e;->dismiss()V

    return-void
.end method

.method static synthetic c(Lcom/tweber/stickfighter/e/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/tweber/stickfighter/e/e;->c()V

    return-void
.end method

.method private d()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.STREAM"

    iget-object v2, p0, Lcom/tweber/stickfighter/e/e;->j:Ljava/io/File;

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.TITLE"

    invoke-static {}, Lcom/tweber/stickfighter/h/v;->a()Lcom/tweber/stickfighter/h/v;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tweber/stickfighter/h/v;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "video/mp4"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/tweber/stickfighter/e/e;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050082

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tweber/stickfighter/e/e;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic d(Lcom/tweber/stickfighter/e/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/tweber/stickfighter/e/e;->d()V

    return-void
.end method

.method private e()V
    .locals 0

    invoke-virtual {p0}, Lcom/tweber/stickfighter/e/e;->dismiss()V

    return-void
.end method

.method static synthetic e(Lcom/tweber/stickfighter/e/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/tweber/stickfighter/e/e;->e()V

    return-void
.end method

.method static synthetic f(Lcom/tweber/stickfighter/e/e;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tweber/stickfighter/e/e;->b:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/tweber/stickfighter/e/e;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/tweber/stickfighter/e/e;->f:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic h(Lcom/tweber/stickfighter/e/e;)[I
    .locals 1

    iget-object v0, p0, Lcom/tweber/stickfighter/e/e;->a:[I

    return-object v0
.end method

.method static synthetic i(Lcom/tweber/stickfighter/e/e;)Landroid/widget/Spinner;
    .locals 1

    iget-object v0, p0, Lcom/tweber/stickfighter/e/e;->d:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic j(Lcom/tweber/stickfighter/e/e;)Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/tweber/stickfighter/e/e;->j:Ljava/io/File;

    return-object v0
.end method

.method static synthetic k(Lcom/tweber/stickfighter/e/e;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/tweber/stickfighter/e/e;->g:Landroid/widget/ProgressBar;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v4/app/aa;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tweber/stickfighter/e/e;->setCancelable(Z)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tweber/stickfighter/e/e;->setRetainInstance(Z)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/support/v4/app/aa;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/Window;->requestFeature(I)Z

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8

    const v7, 0x7f0c0090

    const v6, 0x7f0c008c

    const v5, 0x7f0c0083

    const/4 v4, 0x0

    const/16 v3, 0x8

    const v0, 0x7f03002f

    invoke-virtual {p1, v0, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0c008e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/tweber/stickfighter/e/e;->g:Landroid/widget/ProgressBar;

    const v0, 0x7f0c008b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v2, Lcom/tweber/stickfighter/e/f;

    invoke-direct {v2, p0}, Lcom/tweber/stickfighter/e/f;-><init>(Lcom/tweber/stickfighter/e/e;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0c008a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v2, Lcom/tweber/stickfighter/e/g;

    invoke-direct {v2, p0}, Lcom/tweber/stickfighter/e/g;-><init>(Lcom/tweber/stickfighter/e/e;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0c008f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v2, Lcom/tweber/stickfighter/e/h;

    invoke-direct {v2, p0}, Lcom/tweber/stickfighter/e/h;-><init>(Lcom/tweber/stickfighter/e/e;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0c0093

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v2, Lcom/tweber/stickfighter/e/i;

    invoke-direct {v2, p0}, Lcom/tweber/stickfighter/e/i;-><init>(Lcom/tweber/stickfighter/e/e;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0c0094

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v2, Lcom/tweber/stickfighter/e/j;

    invoke-direct {v2, p0}, Lcom/tweber/stickfighter/e/j;-><init>(Lcom/tweber/stickfighter/e/e;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v0, p0, Lcom/tweber/stickfighter/e/e;->l:Z

    if-eqz v0, :cond_0

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0c0092

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/tweber/stickfighter/e/e;->j:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    const v0, 0x7f0c0086

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/tweber/stickfighter/e/e;->d:Landroid/widget/Spinner;

    iget-object v0, p0, Lcom/tweber/stickfighter/e/e;->d:Landroid/widget/Spinner;

    new-instance v2, Lcom/tweber/stickfighter/b/x;

    invoke-direct {v2}, Lcom/tweber/stickfighter/b/x;-><init>()V

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, p0, Lcom/tweber/stickfighter/e/e;->d:Landroid/widget/Spinner;

    iget-object v2, p0, Lcom/tweber/stickfighter/e/e;->d:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v2

    invoke-interface {v2}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    int-to-double v2, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setSelection(I)V

    const v0, 0x7f0c0089

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/tweber/stickfighter/e/e;->e:Landroid/widget/SeekBar;

    const v0, 0x7f0c0088

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tweber/stickfighter/e/e;->f:Landroid/widget/TextView;

    invoke-static {}, Lcom/tweber/stickfighter/StickFighterApplication;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "PlayerKeyFPS"

    const/4 v3, 0x3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iget-object v2, p0, Lcom/tweber/stickfighter/e/e;->e:Landroid/widget/SeekBar;

    iget-object v3, p0, Lcom/tweber/stickfighter/e/e;->a:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v2, p0, Lcom/tweber/stickfighter/e/e;->e:Landroid/widget/SeekBar;

    invoke-virtual {v2, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v2, p0, Lcom/tweber/stickfighter/e/e;->b:[Ljava/lang/String;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/tweber/stickfighter/e/e;->f:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/tweber/stickfighter/e/e;->a:[I

    aget v0, v2, v0

    iput v0, p0, Lcom/tweber/stickfighter/e/e;->i:I

    iget-object v0, p0, Lcom/tweber/stickfighter/e/e;->e:Landroid/widget/SeekBar;

    new-instance v2, Lcom/tweber/stickfighter/e/k;

    invoke-direct {v2, p0}, Lcom/tweber/stickfighter/e/k;-><init>(Lcom/tweber/stickfighter/e/e;)V

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-object v1

    :cond_0
    iget-boolean v0, p0, Lcom/tweber/stickfighter/e/e;->k:Z

    if-eqz v0, :cond_1

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_1
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public onDestroyView()V
    .locals 2

    invoke-virtual {p0}, Lcom/tweber/stickfighter/e/e;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tweber/stickfighter/e/e;->getRetainInstance()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setDismissMessage(Landroid/os/Message;)V

    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/aa;->onDestroyView()V

    return-void
.end method
