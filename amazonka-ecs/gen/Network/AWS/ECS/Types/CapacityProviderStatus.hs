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
-- Module      : Network.AWS.ECS.Types.CapacityProviderStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ECS.Types.CapacityProviderStatus
  ( CapacityProviderStatus
      ( ..,
        CapacityProviderStatusACTIVE,
        CapacityProviderStatusINACTIVE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype CapacityProviderStatus = CapacityProviderStatus'
  { fromCapacityProviderStatus ::
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

pattern CapacityProviderStatusACTIVE :: CapacityProviderStatus
pattern CapacityProviderStatusACTIVE = CapacityProviderStatus' "ACTIVE"

pattern CapacityProviderStatusINACTIVE :: CapacityProviderStatus
pattern CapacityProviderStatusINACTIVE = CapacityProviderStatus' "INACTIVE"

{-# COMPLETE
  CapacityProviderStatusACTIVE,
  CapacityProviderStatusINACTIVE,
  CapacityProviderStatus'
  #-}

instance Prelude.FromText CapacityProviderStatus where
  parser = CapacityProviderStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText CapacityProviderStatus where
  toText (CapacityProviderStatus' x) = x

instance Prelude.Hashable CapacityProviderStatus

instance Prelude.NFData CapacityProviderStatus

instance Prelude.ToByteString CapacityProviderStatus

instance Prelude.ToQuery CapacityProviderStatus

instance Prelude.ToHeader CapacityProviderStatus

instance Prelude.FromJSON CapacityProviderStatus where
  parseJSON = Prelude.parseJSONText "CapacityProviderStatus"
