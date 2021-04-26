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
        InventoryOptionalFieldFieldETag,
        InventoryOptionalFieldFieldEncryptionStatus,
        InventoryOptionalFieldFieldIntelligentTieringAccessTier,
        InventoryOptionalFieldFieldIsMultipartUploaded,
        InventoryOptionalFieldFieldLastModifiedDate,
        InventoryOptionalFieldFieldObjectLockLegalHoldStatus,
        InventoryOptionalFieldFieldObjectLockMode,
        InventoryOptionalFieldFieldObjectLockRetainUntilDate,
        InventoryOptionalFieldFieldReplicationStatus,
        InventoryOptionalFieldFieldSize,
        InventoryOptionalFieldFieldStorageClass
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

pattern InventoryOptionalFieldFieldETag :: InventoryOptionalField
pattern InventoryOptionalFieldFieldETag = InventoryOptionalField' "ETag"

pattern InventoryOptionalFieldFieldEncryptionStatus :: InventoryOptionalField
pattern InventoryOptionalFieldFieldEncryptionStatus = InventoryOptionalField' "EncryptionStatus"

pattern InventoryOptionalFieldFieldIntelligentTieringAccessTier :: InventoryOptionalField
pattern InventoryOptionalFieldFieldIntelligentTieringAccessTier = InventoryOptionalField' "IntelligentTieringAccessTier"

pattern InventoryOptionalFieldFieldIsMultipartUploaded :: InventoryOptionalField
pattern InventoryOptionalFieldFieldIsMultipartUploaded = InventoryOptionalField' "IsMultipartUploaded"

pattern InventoryOptionalFieldFieldLastModifiedDate :: InventoryOptionalField
pattern InventoryOptionalFieldFieldLastModifiedDate = InventoryOptionalField' "LastModifiedDate"

pattern InventoryOptionalFieldFieldObjectLockLegalHoldStatus :: InventoryOptionalField
pattern InventoryOptionalFieldFieldObjectLockLegalHoldStatus = InventoryOptionalField' "ObjectLockLegalHoldStatus"

pattern InventoryOptionalFieldFieldObjectLockMode :: InventoryOptionalField
pattern InventoryOptionalFieldFieldObjectLockMode = InventoryOptionalField' "ObjectLockMode"

pattern InventoryOptionalFieldFieldObjectLockRetainUntilDate :: InventoryOptionalField
pattern InventoryOptionalFieldFieldObjectLockRetainUntilDate = InventoryOptionalField' "ObjectLockRetainUntilDate"

pattern InventoryOptionalFieldFieldReplicationStatus :: InventoryOptionalField
pattern InventoryOptionalFieldFieldReplicationStatus = InventoryOptionalField' "ReplicationStatus"

pattern InventoryOptionalFieldFieldSize :: InventoryOptionalField
pattern InventoryOptionalFieldFieldSize = InventoryOptionalField' "Size"

pattern InventoryOptionalFieldFieldStorageClass :: InventoryOptionalField
pattern InventoryOptionalFieldFieldStorageClass = InventoryOptionalField' "StorageClass"

{-# COMPLETE
  InventoryOptionalFieldFieldETag,
  InventoryOptionalFieldFieldEncryptionStatus,
  InventoryOptionalFieldFieldIntelligentTieringAccessTier,
  InventoryOptionalFieldFieldIsMultipartUploaded,
  InventoryOptionalFieldFieldLastModifiedDate,
  InventoryOptionalFieldFieldObjectLockLegalHoldStatus,
  InventoryOptionalFieldFieldObjectLockMode,
  InventoryOptionalFieldFieldObjectLockRetainUntilDate,
  InventoryOptionalFieldFieldReplicationStatus,
  InventoryOptionalFieldFieldSize,
  InventoryOptionalFieldFieldStorageClass,
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
