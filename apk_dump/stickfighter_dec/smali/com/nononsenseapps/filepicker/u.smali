.class Lcom/nononsenseapps/filepicker/u;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Landroid/widget/Button;

.field final synthetic b:Lcom/nononsenseapps/filepicker/r;


# direct methods
.method constructor <init>(Lcom/nononsenseapps/filepicker/r;Landroid/widget/Button;)V
    .locals 0

    iput-object p1, p0, Lcom/nononsenseapps/filepicker/u;->b:Lcom/nononsenseapps/filepicker/r;

    iput-object p2, p0, Lcom/nononsenseapps/filepicker/u;->a:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    iget-object v0, p0, Lcom/nononsenseapps/filepicker/u;->a:Landroid/widget/Button;

    iget-object v1, p0, Lcom/nononsenseapps/filepicker/u;->b:Lcom/nononsenseapps/filepicker/r;

    iget-object v1, v1, Lcom/nononsenseapps/filepicker/r;->a:Lcom/nononsenseapps/filepicker/q;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nononsenseapps/filepicker/q;->a(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
