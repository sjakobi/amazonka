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
-- Module      : Network.AWS.Organizations.Types.PolicyTypeStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Organizations.Types.PolicyTypeStatus
  ( PolicyTypeStatus
      ( ..,
        PolicyTypeStatusENABLED,
        PolicyTypeStatusPENDINGDISABLE,
        PolicyTypeStatusPENDINGENABLE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype PolicyTypeStatus = PolicyTypeStatus'
  { fromPolicyTypeStatus ::
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

pattern PolicyTypeStatusENABLED :: PolicyTypeStatus
pattern PolicyTypeStatusENABLED = PolicyTypeStatus' "ENABLED"

pattern PolicyTypeStatusPENDINGDISABLE :: PolicyTypeStatus
pattern PolicyTypeStatusPENDINGDISABLE = PolicyTypeStatus' "PENDING_DISABLE"

pattern PolicyTypeStatusPENDINGENABLE :: PolicyTypeStatus
pattern PolicyTypeStatusPENDINGENABLE = PolicyTypeStatus' "PENDING_ENABLE"

{-# COMPLETE
  PolicyTypeStatusENABLED,
  PolicyTypeStatusPENDINGDISABLE,
  PolicyTypeStatusPENDINGENABLE,
  PolicyTypeStatus'
  #-}

instance Prelude.FromText PolicyTypeStatus where
  parser = PolicyTypeStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText PolicyTypeStatus where
  toText (PolicyTypeStatus' x) = x

instance Prelude.Hashable PolicyTypeStatus

instance Prelude.NFData PolicyTypeStatus

instance Prelude.ToByteString PolicyTypeStatus

instance Prelude.ToQuery PolicyTypeStatus

instance Prelude.ToHeader PolicyTypeStatus

instance Prelude.FromJSON PolicyTypeStatus where
  parseJSON = Prelude.parseJSONText "PolicyTypeStatus"
