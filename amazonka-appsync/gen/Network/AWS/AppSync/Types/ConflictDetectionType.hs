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
-- Module      : Network.AWS.AppSync.Types.ConflictDetectionType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppSync.Types.ConflictDetectionType
  ( ConflictDetectionType
      ( ..,
        ConflictDetectionTypeNONE,
        ConflictDetectionTypeVERSION
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ConflictDetectionType = ConflictDetectionType'
  { fromConflictDetectionType ::
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

pattern ConflictDetectionTypeNONE :: ConflictDetectionType
pattern ConflictDetectionTypeNONE = ConflictDetectionType' "NONE"

pattern ConflictDetectionTypeVERSION :: ConflictDetectionType
pattern ConflictDetectionTypeVERSION = ConflictDetectionType' "VERSION"

{-# COMPLETE
  ConflictDetectionTypeNONE,
  ConflictDetectionTypeVERSION,
  ConflictDetectionType'
  #-}

instance Prelude.FromText ConflictDetectionType where
  parser = ConflictDetectionType' Prelude.<$> Prelude.takeText

instance Prelude.ToText ConflictDetectionType where
  toText (ConflictDetectionType' x) = x

instance Prelude.Hashable ConflictDetectionType

instance Prelude.NFData ConflictDetectionType

instance Prelude.ToByteString ConflictDetectionType

instance Prelude.ToQuery ConflictDetectionType

instance Prelude.ToHeader ConflictDetectionType

instance Prelude.ToJSON ConflictDetectionType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ConflictDetectionType where
  parseJSON = Prelude.parseJSONText "ConflictDetectionType"
