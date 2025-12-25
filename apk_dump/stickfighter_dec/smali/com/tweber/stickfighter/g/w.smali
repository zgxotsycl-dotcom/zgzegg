.class public Lcom/tweber/stickfighter/g/w;
.super Landroid/support/v4/app/Fragment;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const-string v0, "100"

    iput-object v0, p0, Lcom/tweber/stickfighter/g/w;->a:Ljava/lang/String;

    return-void
.end method

.method private a(F)V
    .locals 2

    invoke-virtual {p0}, Lcom/tweber/stickfighter/g/w;->a()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, p1

    float-to-int v0, v0

    iget-object v1, p0, Lcom/tweber/stickfighter/g/w;->b:Landroid/widget/EditText;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic a(Lcom/tweber/stickfighter/g/w;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tweber/stickfighter/g/w;->a(F)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lcom/tweber/stickfighter/g/w;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/16 v0, 0x64

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const v0, 0x7f03003f

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0c00c2

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/tweber/stickfighter/g/w;->b:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/tweber/stickfighter/g/w;->b:Landroid/widget/EditText;

    const-string v2, "100"

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/tweber/stickfighter/g/w;->b:Landroid/widget/EditText;

    new-instance v2, Lcom/tweber/stickfighter/g/x;

    invoke-direct {v2, p0}, Lcom/tweber/stickfighter/g/x;-><init>(Lcom/tweber/stickfighter/g/w;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const v0, 0x7f0c00c1

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/tweber/stickfighter/g/y;

    invoke-direct {v2, p0}, Lcom/tweber/stickfighter/g/y;-><init>(Lcom/tweber/stickfighter/g/w;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0c00c3

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/tweber/stickfighter/g/z;

    invoke-direct {v2, p0}, Lcom/tweber/stickfighter/g/z;-><init>(Lcom/tweber/stickfighter/g/w;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v1
.end method
