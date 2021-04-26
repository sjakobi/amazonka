{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.S3.Types.InventoryOptionalField
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.S3.Types.InventoryOptionalField
  ( InventoryOptionalField
      ( ..,
        InventoryOptionalFieldETag,
        InventoryOptionalFieldEncryptionStatus,
        InventoryOptionalFieldIntelligentTieringAccessTier,
        InventoryOptionalFieldIsMultipartUploaded,
        InventoryOptionalFieldLastModifiedDate,
        InventoryOptionalFieldObjectLockLegalHoldStatus,
        InventoryOptionalFieldObjectLockMode,
        InventoryOptionalFieldObjectLockRetainUntilDate,
        InventoryOptionalFieldReplicationStatus,
        InventoryOptionalFieldSize,
        InventoryOptionalFieldStorageClass
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude
import Network.AWS.S3.Internal

newtype InventoryOptionalField = InventoryOptionalField'
  { fromInventoryOptionalField ::
      Prelude.Text
  }
  deriving
    ( Prelude.Eq,
      Prelude.Ord,
      Prelude.Read,
      Prelude.Show,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic
    )

pattern InventoryOptionalFieldETag :: InventoryOptionalField
pattern InventoryOptionalFieldETag = InventoryOptionalField' "ETag"

pattern InventoryOptionalFieldEncryptionStatus :: InventoryOptionalField
pattern InventoryOptionalFieldEncryptionStatus = InventoryOptionalField' "EncryptionStatus"

pattern InventoryOptionalFieldIntelligentTieringAccessTier :: InventoryOptionalField
pattern InventoryOptionalFieldIntelligentTieringAccessTier = InventoryOptionalField' "IntelligentTieringAccessTier"

pattern InventoryOptionalFieldIsMultipartUploaded :: InventoryOptionalField
pattern InventoryOptionalFieldIsMultipartUploaded = InventoryOptionalField' "IsMultipartUploaded"

pattern InventoryOptionalFieldLastModifiedDate :: InventoryOptionalField
pattern InventoryOptionalFieldLastModifiedDate = InventoryOptionalField' "LastModifiedDate"

pattern InventoryOptionalFieldObjectLockLegalHoldStatus :: InventoryOptionalField
pattern InventoryOptionalFieldObjectLockLegalHoldStatus = InventoryOptionalField' "ObjectLockLegalHoldStatus"

pattern InventoryOptionalFieldObjectLockMode :: InventoryOptionalField
pattern InventoryOptionalFieldObjectLockMode = InventoryOptionalField' "ObjectLockMode"

pattern InventoryOptionalFieldObjectLockRetainUntilDate :: InventoryOptionalField
pattern InventoryOptionalFieldObjectLockRetainUntilDate = InventoryOptionalField' "ObjectLockRetainUntilDate"

pattern InventoryOptionalFieldReplicationStatus :: InventoryOptionalField
pattern InventoryOptionalFieldReplicationStatus = InventoryOptionalField' "ReplicationStatus"

pattern InventoryOptionalFieldSize :: InventoryOptionalField
pattern InventoryOptionalFieldSize = InventoryOptionalField' "Size"

pattern InventoryOptionalFieldStorageClass :: InventoryOptionalField
pattern InventoryOptionalFieldStorageClass = InventoryOptionalField' "StorageClass"

{-# COMPLETE
  InventoryOptionalFieldETag,
  InventoryOptionalFieldEncryptionStatus,
  InventoryOptionalFieldIntelligentTieringAccessTier,
  InventoryOptionalFieldIsMultipartUploaded,
  InventoryOptionalFieldLastModifiedDate,
  InventoryOptionalFieldObjectLockLegalHoldStatus,
  InventoryOptionalFieldObjectLockMode,
  InventoryOptionalFieldObjectLockRetainUntilDate,
  InventoryOptionalFieldReplicationStatus,
  InventoryOptionalFieldSize,
  InventoryOptionalFieldStorageClass,
  InventoryOptionalField'
  #-}

instance Prelude.FromText InventoryOptionalField where
  parser = InventoryOptionalField' Prelude.<$> Prelude.takeText

instance Prelude.ToText InventoryOptionalField where
  toText (InventoryOptionalField' x) = x

instance Prelude.Hashable InventoryOptionalField

instance Prelude.NFData InventoryOptionalField

instance Prelude.ToByteString InventoryOptionalField

instance Prelude.ToQuery InventoryOptionalField

instance Prelude.ToHeader InventoryOptionalField

instance Prelude.FromXML InventoryOptionalField where
  parseXML = Prelude.parseXMLText "InventoryOptionalField"

instance Prelude.ToXML InventoryOptionalField where
  toXML = Prelude.toXMLText
