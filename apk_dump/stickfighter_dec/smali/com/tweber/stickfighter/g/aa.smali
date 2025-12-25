.class public Lcom/tweber/stickfighter/g/aa;
.super Landroid/support/v4/app/Fragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method public static a()Lcom/tweber/stickfighter/g/aa;
    .locals 1

    new-instance v0, Lcom/tweber/stickfighter/g/aa;

    invoke-direct {v0}, Lcom/tweber/stickfighter/g/aa;-><init>()V

    return-object v0
.end method

.method static synthetic a(Lcom/tweber/stickfighter/g/aa;)V
    .locals 0

    invoke-direct {p0}, Lcom/tweber/stickfighter/g/aa;->b()V

    return-void
.end method

.method private b()V
    .locals 3

    invoke-virtual {p0}, Lcom/tweber/stickfighter/g/aa;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v0, v1}, Landroid/support/v4/b/c;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    invoke-virtual {p0, v0, v1}, Lcom/tweber/stickfighter/g/aa;->requestPermissions([Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/tweber/stickfighter/e/e;

    invoke-direct {v0}, Lcom/tweber/stickfighter/e/e;-><init>()V

    invoke-virtual {p0}, Lcom/tweber/stickfighter/g/aa;->getFragmentManager()Landroid/support/v4/app/al;

    move-result-object v1

    const-string v2, "CreateVideoDialogTag"

    invoke-virtual {v0, v1, v2}, Lcom/tweber/stickfighter/e/e;->show(Landroid/support/v4/app/al;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const v0, 0x7f030042

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0c00cd

    invoke-static {}, Lcom/tweber/stickfighter/h/v;->a()Lcom/tweber/stickfighter/h/v;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tweber/stickfighter/h/v;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/tweber/stickfighter/j/d;->a(Landroid/view/View;ILjava/lang/String;)V

    const v0, 0x7f0c00cb

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/CardView;

    new-instance v2, Lcom/tweber/stickfighter/g/ab;

    invoke-direct {v2, p0}, Lcom/tweber/stickfighter/g/ab;-><init>(Lcom/tweber/stickfighter/g/aa;)V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/CardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0c00cc

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/CardView;

    new-instance v2, Lcom/tweber/stickfighter/g/ac;

    invoke-direct {v2, p0}, Lcom/tweber/stickfighter/g/ac;-><init>(Lcom/tweber/stickfighter/g/aa;)V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/CardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    array-length v0, p3

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget v0, p3, v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/tweber/stickfighter/g/aa;->b()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_0
    .end packed-switch
.end method
