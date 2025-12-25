.class public Lcom/tweber/stickfighter/g/a;
.super Landroid/support/v4/app/Fragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method public static a()Lcom/tweber/stickfighter/g/a;
    .locals 1

    new-instance v0, Lcom/tweber/stickfighter/g/a;

    invoke-direct {v0}, Lcom/tweber/stickfighter/g/a;-><init>()V

    return-object v0
.end method

.method static synthetic a(Lcom/tweber/stickfighter/g/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/tweber/stickfighter/g/a;->b()V

    return-void
.end method

.method private b()V
    .locals 4

    invoke-virtual {p0}, Lcom/tweber/stickfighter/g/a;->getActivity()Landroid/support/v4/app/ae;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tweber/stickfighter/g/a;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0c00af

    invoke-static {v1, v2}, Lcom/tweber/stickfighter/j/d;->a(Landroid/view/View;I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0c00b1

    invoke-static {v1, v3}, Lcom/tweber/stickfighter/j/d;->a(Landroid/view/View;I)Ljava/lang/String;

    const v3, 0x7f0c00b0

    invoke-static {v1, v3}, Lcom/tweber/stickfighter/j/d;->a(Landroid/view/View;I)Ljava/lang/String;

    invoke-static {v0}, Lcom/tweber/stickfighter/j/d;->a(Landroid/app/Activity;)F

    move-result v1

    invoke-static {}, Lcom/tweber/stickfighter/d/a;->a()Lcom/tweber/stickfighter/d/b;

    move-result-object v3

    invoke-interface {v3, v2, v1}, Lcom/tweber/stickfighter/d/b;->a(Ljava/lang/String;F)Lcom/tweber/stickfighter/h/v;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/tweber/stickfighter/activities/SequenceDetailsActivity;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "SequenceId"

    invoke-virtual {v1}, Lcom/tweber/stickfighter/h/v;->b()I

    move-result v1

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const v0, 0x7f03003b

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0c0073

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/FloatingActionButton;

    new-instance v2, Lcom/tweber/stickfighter/g/b;

    invoke-direct {v2, p0}, Lcom/tweber/stickfighter/g/b;-><init>(Lcom/tweber/stickfighter/g/a;)V

    invoke-virtual {v0, v2}, Landroid/support/design/widget/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v1
.end method
