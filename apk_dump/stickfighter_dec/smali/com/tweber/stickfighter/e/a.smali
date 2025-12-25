.class public Lcom/tweber/stickfighter/e/a;
.super Landroid/support/v4/app/aa;


# instance fields
.field private a:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/app/aa;-><init>()V

    return-void
.end method

.method public static a(I)Lcom/tweber/stickfighter/e/a;
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "EXTRA_INITIAL_COLOR"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v1, Lcom/tweber/stickfighter/e/a;

    invoke-direct {v1}, Lcom/tweber/stickfighter/e/a;-><init>()V

    invoke-virtual {v1, v0}, Lcom/tweber/stickfighter/e/a;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method

.method private a()V
    .locals 0

    invoke-direct {p0}, Lcom/tweber/stickfighter/e/a;->b()V

    return-void
.end method

.method private a(Landroid/support/v4/view/ViewPager;)V
    .locals 4

    new-instance v0, Lcom/tweber/stickfighter/e/d;

    invoke-virtual {p0}, Lcom/tweber/stickfighter/e/a;->getChildFragmentManager()Landroid/support/v4/app/al;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tweber/stickfighter/e/d;-><init>(Landroid/support/v4/app/al;)V

    new-instance v1, Lcom/tweber/stickfighter/g/c;

    invoke-direct {v1}, Lcom/tweber/stickfighter/g/c;-><init>()V

    invoke-virtual {p0}, Lcom/tweber/stickfighter/e/a;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "EXTRA_INITIAL_COLOR"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/tweber/stickfighter/g/c;->a(I)V

    const v2, 0x7f050045

    invoke-virtual {p0, v2}, Lcom/tweber/stickfighter/e/a;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tweber/stickfighter/e/d;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/bt;)V

    return-void
.end method

.method static synthetic a(Lcom/tweber/stickfighter/e/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/tweber/stickfighter/e/a;->a()V

    return-void
.end method

.method private b()V
    .locals 4

    invoke-virtual {p0}, Lcom/tweber/stickfighter/e/a;->getChildFragmentManager()Landroid/support/v4/app/al;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/al;->d()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tweber/stickfighter/g/c;

    invoke-virtual {v0}, Lcom/tweber/stickfighter/g/c;->a()I

    move-result v0

    invoke-static {}, Lcom/tweber/stickfighter/h/v;->a()Lcom/tweber/stickfighter/h/v;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tweber/stickfighter/h/v;->a(I)V

    invoke-static {}, Lcom/tweber/stickfighter/d/a;->a()Lcom/tweber/stickfighter/d/b;

    move-result-object v1

    invoke-static {}, Lcom/tweber/stickfighter/h/v;->a()Lcom/tweber/stickfighter/h/v;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tweber/stickfighter/h/v;->b()I

    move-result v2

    int-to-long v2, v2

    invoke-interface {v1, v2, v3, v0}, Lcom/tweber/stickfighter/d/b;->a(JI)V

    invoke-virtual {p0}, Lcom/tweber/stickfighter/e/a;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/tweber/stickfighter/g/v;

    invoke-virtual {v0}, Lcom/tweber/stickfighter/g/v;->b()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v4/app/aa;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const v0, 0x7f03002e

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0c0072

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/tweber/stickfighter/e/a;->a:Landroid/support/v4/view/ViewPager;

    iget-object v0, p0, Lcom/tweber/stickfighter/e/a;->a:Landroid/support/v4/view/ViewPager;

    invoke-direct {p0, v0}, Lcom/tweber/stickfighter/e/a;->a(Landroid/support/v4/view/ViewPager;)V

    const v0, 0x7f0c0081

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v2, Lcom/tweber/stickfighter/e/b;

    invoke-direct {v2, p0}, Lcom/tweber/stickfighter/e/b;-><init>(Lcom/tweber/stickfighter/e/a;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0c0082

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v2, Lcom/tweber/stickfighter/e/c;

    invoke-direct {v2, p0}, Lcom/tweber/stickfighter/e/c;-><init>(Lcom/tweber/stickfighter/e/a;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v1
.end method
