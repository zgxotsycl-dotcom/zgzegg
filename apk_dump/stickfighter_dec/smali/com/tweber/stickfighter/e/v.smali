.class public Lcom/tweber/stickfighter/e/v;
.super Landroid/support/v4/app/aa;


# instance fields
.field private a:Landroid/widget/ProgressBar;

.field private b:Lcom/tweber/stickfighter/e/z;

.field private c:Landroid/net/Uri;

.field private d:Z

.field private e:Lcom/tweber/stickfighter/h/v;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/app/aa;-><init>()V

    return-void
.end method

.method public static a(Landroid/net/Uri;)Lcom/tweber/stickfighter/e/v;
    .locals 4

    new-instance v0, Lcom/tweber/stickfighter/e/v;

    invoke-direct {v0}, Lcom/tweber/stickfighter/e/v;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "EXTRA_SFA_FILE_URI"

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tweber/stickfighter/e/v;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method static synthetic a(Lcom/tweber/stickfighter/e/v;)Lcom/tweber/stickfighter/e/z;
    .locals 1

    iget-object v0, p0, Lcom/tweber/stickfighter/e/v;->b:Lcom/tweber/stickfighter/e/z;

    return-object v0
.end method

.method static synthetic a(Lcom/tweber/stickfighter/e/v;Lcom/tweber/stickfighter/h/v;)Lcom/tweber/stickfighter/h/v;
    .locals 0

    iput-object p1, p0, Lcom/tweber/stickfighter/e/v;->e:Lcom/tweber/stickfighter/h/v;

    return-object p1
.end method

.method static synthetic a(Lcom/tweber/stickfighter/e/v;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/tweber/stickfighter/e/v;->d:Z

    return p1
.end method

.method static synthetic b(Lcom/tweber/stickfighter/e/v;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/tweber/stickfighter/e/v;->a:Landroid/widget/ProgressBar;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v4/app/aa;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tweber/stickfighter/e/v;->setCancelable(Z)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tweber/stickfighter/e/v;->setRetainInstance(Z)V

    invoke-virtual {p0}, Lcom/tweber/stickfighter/e/v;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "EXTRA_SFA_FILE_URI"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/tweber/stickfighter/e/v;->c:Landroid/net/Uri;

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

    const v0, 0x7f030033

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0c009c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/tweber/stickfighter/e/v;->a:Landroid/widget/ProgressBar;

    const v0, 0x7f0c0082

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v2, Lcom/tweber/stickfighter/e/w;

    invoke-direct {v2, p0}, Lcom/tweber/stickfighter/e/w;-><init>(Lcom/tweber/stickfighter/e/v;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0c0094

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v2, Lcom/tweber/stickfighter/e/x;

    invoke-direct {v2, p0}, Lcom/tweber/stickfighter/e/x;-><init>(Lcom/tweber/stickfighter/e/v;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0c009d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v2, Lcom/tweber/stickfighter/e/y;

    invoke-direct {v2, p0}, Lcom/tweber/stickfighter/e/y;-><init>(Lcom/tweber/stickfighter/e/v;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v0, p0, Lcom/tweber/stickfighter/e/v;->d:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0c009a

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

    iget-object v2, p0, Lcom/tweber/stickfighter/e/v;->e:Lcom/tweber/stickfighter/h/v;

    invoke-virtual {v2}, Lcom/tweber/stickfighter/h/v;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-object v1
.end method

.method public onDestroyView()V
    .locals 2

    invoke-virtual {p0}, Lcom/tweber/stickfighter/e/v;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tweber/stickfighter/e/v;->getRetainInstance()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setDismissMessage(Landroid/os/Message;)V

    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/aa;->onDestroyView()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/support/v4/app/aa;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/tweber/stickfighter/e/v;->b:Lcom/tweber/stickfighter/e/z;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tweber/stickfighter/e/z;

    iget-object v1, p0, Lcom/tweber/stickfighter/e/v;->c:Landroid/net/Uri;

    invoke-direct {v0, p0, v1}, Lcom/tweber/stickfighter/e/z;-><init>(Lcom/tweber/stickfighter/e/v;Landroid/net/Uri;)V

    iput-object v0, p0, Lcom/tweber/stickfighter/e/v;->b:Lcom/tweber/stickfighter/e/z;

    iget-object v0, p0, Lcom/tweber/stickfighter/e/v;->b:Lcom/tweber/stickfighter/e/z;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/tweber/stickfighter/e/z;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method
