.class public Lcom/tweber/stickfighter/e/q;
.super Landroid/support/v4/app/aa;


# instance fields
.field private a:Landroid/widget/ProgressBar;

.field private b:Lcom/tweber/stickfighter/e/u;

.field private c:Ljava/io/File;

.field private d:Ljava/io/File;

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/app/aa;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/tweber/stickfighter/e/q;)Lcom/tweber/stickfighter/e/u;
    .locals 1

    iget-object v0, p0, Lcom/tweber/stickfighter/e/q;->b:Lcom/tweber/stickfighter/e/u;

    return-object v0
.end method

.method static synthetic a(Lcom/tweber/stickfighter/e/q;Ljava/io/File;)Ljava/io/File;
    .locals 0

    iput-object p1, p0, Lcom/tweber/stickfighter/e/q;->c:Ljava/io/File;

    return-object p1
.end method

.method static synthetic a(Lcom/tweber/stickfighter/e/q;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/tweber/stickfighter/e/q;->e:Z

    return p1
.end method

.method static synthetic b(Lcom/tweber/stickfighter/e/q;)Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/tweber/stickfighter/e/q;->d:Ljava/io/File;

    return-object v0
.end method

.method static synthetic b(Lcom/tweber/stickfighter/e/q;Ljava/io/File;)Ljava/io/File;
    .locals 0

    iput-object p1, p0, Lcom/tweber/stickfighter/e/q;->d:Ljava/io/File;

    return-object p1
.end method

.method static synthetic c(Lcom/tweber/stickfighter/e/q;)Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/tweber/stickfighter/e/q;->c:Ljava/io/File;

    return-object v0
.end method

.method static synthetic d(Lcom/tweber/stickfighter/e/q;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/tweber/stickfighter/e/q;->a:Landroid/widget/ProgressBar;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v4/app/aa;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tweber/stickfighter/e/q;->setCancelable(Z)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tweber/stickfighter/e/q;->setRetainInstance(Z)V

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
    .locals 4

    const/4 v3, 0x0

    const v0, 0x7f030031

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0c0098

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/tweber/stickfighter/e/q;->a:Landroid/widget/ProgressBar;

    const v0, 0x7f0c0082

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v2, Lcom/tweber/stickfighter/e/r;

    invoke-direct {v2, p0}, Lcom/tweber/stickfighter/e/r;-><init>(Lcom/tweber/stickfighter/e/q;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0c0093

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v2, Lcom/tweber/stickfighter/e/s;

    invoke-direct {v2, p0}, Lcom/tweber/stickfighter/e/s;-><init>(Lcom/tweber/stickfighter/e/q;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0c0094

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v2, Lcom/tweber/stickfighter/e/t;

    invoke-direct {v2, p0}, Lcom/tweber/stickfighter/e/t;-><init>(Lcom/tweber/stickfighter/e/q;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v0, p0, Lcom/tweber/stickfighter/e/q;->e:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0c0096

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0c0090

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0c0092

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/tweber/stickfighter/e/q;->d:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-object v1
.end method

.method public onDestroyView()V
    .locals 2

    invoke-virtual {p0}, Lcom/tweber/stickfighter/e/q;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tweber/stickfighter/e/q;->getRetainInstance()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setDismissMessage(Landroid/os/Message;)V

    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/aa;->onDestroyView()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1, p2}, Landroid/support/v4/app/aa;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/tweber/stickfighter/e/q;->b:Lcom/tweber/stickfighter/e/u;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tweber/stickfighter/e/u;

    invoke-static {}, Lcom/tweber/stickfighter/h/v;->a()Lcom/tweber/stickfighter/h/v;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tweber/stickfighter/h/v;->b()I

    move-result v1

    int-to-long v2, v1

    invoke-direct {v0, p0, v2, v3}, Lcom/tweber/stickfighter/e/u;-><init>(Lcom/tweber/stickfighter/e/q;J)V

    iput-object v0, p0, Lcom/tweber/stickfighter/e/q;->b:Lcom/tweber/stickfighter/e/u;

    iget-object v0, p0, Lcom/tweber/stickfighter/e/q;->b:Lcom/tweber/stickfighter/e/u;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/tweber/stickfighter/e/u;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method
