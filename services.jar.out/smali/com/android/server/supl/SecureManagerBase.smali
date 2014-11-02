.class public abstract Lcom/android/server/supl/SecureManagerBase;
.super Ljava/lang/Object;
.source "SecureManagerBase.java"


# static fields
.field public static final CERTIFICATE_TYPE_X509:Ljava/lang/String; = "X509"

.field private static final DEFAULT_PASSWORD:Ljava/lang/String; = "123456"

.field public static final SSL_STORAGE_TYPE_BKS:Ljava/lang/String; = "BKS"


# instance fields
.field private ksKeysAndCert:Ljava/security/KeyStore;

.field private storePath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object v0, p0, Lcom/android/server/supl/SecureManagerBase;->storePath:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/android/server/supl/SecureManagerBase;->ksKeysAndCert:Ljava/security/KeyStore;

    .line 25
    return-void
.end method


# virtual methods
.method public Init(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "Path"
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36
    const-string v1, "CNet"

    const-string v2, "===>>> Inside SecureManagerBase Init <<==="

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    if-eqz p1, :cond_0

    .line 38
    iput-object p1, p0, Lcom/android/server/supl/SecureManagerBase;->storePath:Ljava/lang/String;

    .line 39
    const-string v1, "CNet"

    const-string v2, "===>>> SMB: Path is NOT NULL <<==="

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    :cond_0
    if-nez p2, :cond_1

    .line 43
    const-string v1, "CNet"

    const-string v2, "===>>> SMB: Password is NULL <<==="

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    const-string v1, "123456"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 51
    .local v0, passphrase:[C
    :goto_0
    const-string v1, "CNet"

    const-string v2, "===>>> SMB: Getting KeyStore Instance <<==="

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    const-string v1, "BKS"

    invoke-static {v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/supl/SecureManagerBase;->ksKeysAndCert:Ljava/security/KeyStore;

    .line 53
    const-string v1, "CNet"

    const-string v2, "===>>> SMB: Loading Instance <<==="

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iget-object v1, p0, Lcom/android/server/supl/SecureManagerBase;->ksKeysAndCert:Ljava/security/KeyStore;

    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/android/server/supl/SecureManagerBase;->storePath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v0}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 55
    const-string v1, "CNet"

    const-string v2, "===>>> SMB: Calling initManagerFactory <<==="

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iget-object v1, p0, Lcom/android/server/supl/SecureManagerBase;->ksKeysAndCert:Ljava/security/KeyStore;

    invoke-virtual {p0, v1, v0}, Lcom/android/server/supl/SecureManagerBase;->initManagerFactory(Ljava/security/KeyStore;[C)V

    .line 57
    return-void

    .line 47
    .end local v0           #passphrase:[C
    :cond_1
    const-string v1, "CNet"

    const-string v2, "===>>> SMB: Password is NOT NULL <<==="

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .restart local v0       #passphrase:[C
    goto :goto_0
.end method

.method protected abstract initManagerFactory(Ljava/security/KeyStore;[C)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation
.end method
