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
-- Module      : Network.AWS.Lightsail.Types.RenewalStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lightsail.Types.RenewalStatus
  ( RenewalStatus
      ( ..,
        RenewalStatusFailed,
        RenewalStatusPendingAutoRenewal,
        RenewalStatusPendingValidation,
        RenewalStatusSuccess
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype RenewalStatus = RenewalStatus'
  { fromRenewalStatus ::
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

pattern RenewalStatusFailed :: RenewalStatus
pattern RenewalStatusFailed = RenewalStatus' "Failed"

pattern RenewalStatusPendingAutoRenewal :: RenewalStatus
pattern RenewalStatusPendingAutoRenewal = RenewalStatus' "PendingAutoRenewal"

pattern RenewalStatusPendingValidation :: RenewalStatus
pattern RenewalStatusPendingValidation = RenewalStatus' "PendingValidation"

pattern RenewalStatusSuccess :: RenewalStatus
pattern RenewalStatusSuccess = RenewalStatus' "Success"

{-# COMPLETE
  RenewalStatusFailed,
  RenewalStatusPendingAutoRenewal,
  RenewalStatusPendingValidation,
  RenewalStatusSuccess,
  RenewalStatus'
  #-}

instance Prelude.FromText RenewalStatus where
  parser = RenewalStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText RenewalStatus where
  toText (RenewalStatus' x) = x

instance Prelude.Hashable RenewalStatus

instance Prelude.NFData RenewalStatus

instance Prelude.ToByteString RenewalStatus

instance Prelude.ToQuery RenewalStatus

instance Prelude.ToHeader RenewalStatus

instance Prelude.FromJSON RenewalStatus where
  parseJSON = Prelude.parseJSONText "RenewalStatus"
