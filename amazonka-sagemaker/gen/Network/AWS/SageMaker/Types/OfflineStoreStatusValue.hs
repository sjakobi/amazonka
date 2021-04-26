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
-- Module      : Network.AWS.SageMaker.Types.OfflineStoreStatusValue
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.OfflineStoreStatusValue
  ( OfflineStoreStatusValue
      ( ..,
        OfflineStoreStatusValueActive,
        OfflineStoreStatusValueBlocked,
        OfflineStoreStatusValueDisabled
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype OfflineStoreStatusValue = OfflineStoreStatusValue'
  { fromOfflineStoreStatusValue ::
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

pattern OfflineStoreStatusValueActive :: OfflineStoreStatusValue
pattern OfflineStoreStatusValueActive = OfflineStoreStatusValue' "Active"

pattern OfflineStoreStatusValueBlocked :: OfflineStoreStatusValue
pattern OfflineStoreStatusValueBlocked = OfflineStoreStatusValue' "Blocked"

pattern OfflineStoreStatusValueDisabled :: OfflineStoreStatusValue
pattern OfflineStoreStatusValueDisabled = OfflineStoreStatusValue' "Disabled"

{-# COMPLETE
  OfflineStoreStatusValueActive,
  OfflineStoreStatusValueBlocked,
  OfflineStoreStatusValueDisabled,
  OfflineStoreStatusValue'
  #-}

instance Prelude.FromText OfflineStoreStatusValue where
  parser = OfflineStoreStatusValue' Prelude.<$> Prelude.takeText

instance Prelude.ToText OfflineStoreStatusValue where
  toText (OfflineStoreStatusValue' x) = x

instance Prelude.Hashable OfflineStoreStatusValue

instance Prelude.NFData OfflineStoreStatusValue

instance Prelude.ToByteString OfflineStoreStatusValue

instance Prelude.ToQuery OfflineStoreStatusValue

instance Prelude.ToHeader OfflineStoreStatusValue

instance Prelude.ToJSON OfflineStoreStatusValue where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON OfflineStoreStatusValue where
  parseJSON = Prelude.parseJSONText "OfflineStoreStatusValue"
