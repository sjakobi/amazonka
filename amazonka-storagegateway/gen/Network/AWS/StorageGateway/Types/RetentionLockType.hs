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
-- Module      : Network.AWS.StorageGateway.Types.RetentionLockType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.StorageGateway.Types.RetentionLockType
  ( RetentionLockType
      ( ..,
        RetentionLockTypeCOMPLIANCE,
        RetentionLockTypeGOVERNANCE,
        RetentionLockTypeNONE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype RetentionLockType = RetentionLockType'
  { fromRetentionLockType ::
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

pattern RetentionLockTypeCOMPLIANCE :: RetentionLockType
pattern RetentionLockTypeCOMPLIANCE = RetentionLockType' "COMPLIANCE"

pattern RetentionLockTypeGOVERNANCE :: RetentionLockType
pattern RetentionLockTypeGOVERNANCE = RetentionLockType' "GOVERNANCE"

pattern RetentionLockTypeNONE :: RetentionLockType
pattern RetentionLockTypeNONE = RetentionLockType' "NONE"

{-# COMPLETE
  RetentionLockTypeCOMPLIANCE,
  RetentionLockTypeGOVERNANCE,
  RetentionLockTypeNONE,
  RetentionLockType'
  #-}

instance Prelude.FromText RetentionLockType where
  parser = RetentionLockType' Prelude.<$> Prelude.takeText

instance Prelude.ToText RetentionLockType where
  toText (RetentionLockType' x) = x

instance Prelude.Hashable RetentionLockType

instance Prelude.NFData RetentionLockType

instance Prelude.ToByteString RetentionLockType

instance Prelude.ToQuery RetentionLockType

instance Prelude.ToHeader RetentionLockType

instance Prelude.ToJSON RetentionLockType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON RetentionLockType where
  parseJSON = Prelude.parseJSONText "RetentionLockType"
