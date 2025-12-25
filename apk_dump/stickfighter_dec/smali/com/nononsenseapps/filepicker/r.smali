.class Lcom/nononsenseapps/filepicker/r;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field final synthetic a:Lcom/nononsenseapps/filepicker/q;


# direct methods
.method constructor <init>(Lcom/nononsenseapps/filepicker/q;)V
    .locals 0

    iput-object p1, p0, Lcom/nononsenseapps/filepicker/r;->a:Lcom/nononsenseapps/filepicker/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 3

    check-cast p1, Landroid/support/v7/app/AlertDialog;

    sget v0, Lcom/nononsenseapps/filepicker/x;->edit_text:I

    invoke-virtual {p1, v0}, Landroid/support/v7/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const/4 v1, -0x2

    invoke-virtual {p1, v1}, Landroid/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    new-instance v2, Lcom/nononsenseapps/filepicker/s;

    invoke-direct {v2, p0, p1}, Lcom/nononsenseapps/filepicker/s;-><init>(Lcom/nononsenseapps/filepicker/r;Landroid/support/v7/app/AlertDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Landroid/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    new-instance v2, Lcom/nononsenseapps/filepicker/t;

    invoke-direct {v2, p0, v0, p1}, Lcom/nononsenseapps/filepicker/t;-><init>(Lcom/nononsenseapps/filepicker/r;Landroid/widget/EditText;Landroid/support/v7/app/AlertDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Lcom/nononsenseapps/filepicker/u;

    invoke-direct {v2, p0, v1}, Lcom/nononsenseapps/filepicker/u;-><init>(Lcom/nononsenseapps/filepicker/r;Landroid/widget/Button;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method
