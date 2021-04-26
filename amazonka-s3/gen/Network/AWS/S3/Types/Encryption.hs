{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.S3.Types.Encryption
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.S3.Types.Encryption where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.S3.Internal
import Network.AWS.S3.Types.ServerSideEncryption

-- | Contains the type of server-side encryption used.
--
-- /See:/ 'newEncryption' smart constructor.
data Encryption = Encryption'
  { -- | If the encryption type is @aws:kms@, this optional value specifies the
    -- ID of the symmetric customer managed AWS KMS CMK to use for encryption
    -- of job results. Amazon S3 only supports symmetric CMKs. For more
    -- information, see
    -- <https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html Using Symmetric and Asymmetric Keys>
    -- in the /AWS Key Management Service Developer Guide/.
    kMSKeyId :: Prelude.Maybe (Prelude.Sensitive Prelude.Text),
    -- | If the encryption type is @aws:kms@, this optional value can be used to
    -- specify the encryption context for the restore results.
    kMSContext :: Prelude.Maybe Prelude.Text,
    -- | The server-side encryption algorithm used when storing job results in
    -- Amazon S3 (for example, AES256, aws:kms).
    encryptionType :: ServerSideEncryption
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'Encryption' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'kMSKeyId', 'encryption_kMSKeyId' - If the encryption type is @aws:kms@, this optional value specifies the
-- ID of the symmetric customer managed AWS KMS CMK to use for encryption
-- of job results. Amazon S3 only supports symmetric CMKs. For more
-- information, see
-- <https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html Using Symmetric and Asymmetric Keys>
-- in the /AWS Key Management Service Developer Guide/.
--
-- 'kMSContext', 'encryption_kMSContext' - If the encryption type is @aws:kms@, this optional value can be used to
-- specify the encryption context for the restore results.
--
-- 'encryptionType', 'encryption_encryptionType' - The server-side encryption algorithm used when storing job results in
-- Amazon S3 (for example, AES256, aws:kms).
newEncryption ::
  -- | 'encryptionType'
  ServerSideEncryption ->
  Encryption
newEncryption pEncryptionType_ =
  Encryption'
    { kMSKeyId = Prelude.Nothing,
      kMSContext = Prelude.Nothing,
      encryptionType = pEncryptionType_
    }

-- | If the encryption type is @aws:kms@, this optional value specifies the
-- ID of the symmetric customer managed AWS KMS CMK to use for encryption
-- of job results. Amazon S3 only supports symmetric CMKs. For more
-- information, see
-- <https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html Using Symmetric and Asymmetric Keys>
-- in the /AWS Key Management Service Developer Guide/.
encryption_kMSKeyId :: Lens.Lens' Encryption (Prelude.Maybe Prelude.Text)
encryption_kMSKeyId = Lens.lens (\Encryption' {kMSKeyId} -> kMSKeyId) (\s@Encryption' {} a -> s {kMSKeyId = a} :: Encryption) Prelude.. Lens.mapping Prelude._Sensitive

-- | If the encryption type is @aws:kms@, this optional value can be used to
-- specify the encryption context for the restore results.
encryption_kMSContext :: Lens.Lens' Encryption (Prelude.Maybe Prelude.Text)
encryption_kMSContext = Lens.lens (\Encryption' {kMSContext} -> kMSContext) (\s@Encryption' {} a -> s {kMSContext = a} :: Encryption)

-- | The server-side encryption algorithm used when storing job results in
-- Amazon S3 (for example, AES256, aws:kms).
encryption_encryptionType :: Lens.Lens' Encryption ServerSideEncryption
encryption_encryptionType = Lens.lens (\Encryption' {encryptionType} -> encryptionType) (\s@Encryption' {} a -> s {encryptionType = a} :: Encryption)

instance Prelude.Hashable Encryption

instance Prelude.NFData Encryption

instance Prelude.ToXML Encryption where
  toXML Encryption' {..} =
    Prelude.mconcat
      [ "KMSKeyId" Prelude.@= kMSKeyId,
        "KMSContext" Prelude.@= kMSContext,
        "EncryptionType" Prelude.@= encryptionType
      ]
