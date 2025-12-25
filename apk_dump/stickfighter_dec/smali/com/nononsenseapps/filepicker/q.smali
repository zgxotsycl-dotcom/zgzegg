.class public abstract Lcom/nononsenseapps/filepicker/q;
.super Landroid/support/v4/app/aa;


# instance fields
.field private a:Lcom/nononsenseapps/filepicker/v;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/app/aa;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nononsenseapps/filepicker/q;->a:Lcom/nononsenseapps/filepicker/v;

    return-void
.end method

.method static synthetic a(Lcom/nononsenseapps/filepicker/q;)Lcom/nononsenseapps/filepicker/v;
    .locals 1

    iget-object v0, p0, Lcom/nononsenseapps/filepicker/q;->a:Lcom/nononsenseapps/filepicker/v;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/nononsenseapps/filepicker/v;)V
    .locals 0

    iput-object p1, p0, Lcom/nononsenseapps/filepicker/q;->a:Lcom/nononsenseapps/filepicker/v;

    return-void
.end method

.method protected abstract a(Ljava/lang/String;)Z
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v4/app/aa;->onAttach(Landroid/app/Activity;)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/nononsenseapps/filepicker/q;->getActivity()Landroid/support/v4/app/ae;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/nononsenseapps/filepicker/y;->dialog_folder_name:I

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setView(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/nononsenseapps/filepicker/aa;->new_folder:I

    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    new-instance v1, Lcom/nononsenseapps/filepicker/r;

    invoke-direct {v1, p0}, Lcom/nononsenseapps/filepicker/r;-><init>(Lcom/nononsenseapps/filepicker/q;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    return-object v0
.end method
