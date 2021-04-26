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
-- Module      : Network.AWS.CertificateManager.Types.RenewalStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CertificateManager.Types.RenewalStatus
  ( RenewalStatus
      ( ..,
        RenewalStatusFAILED,
        RenewalStatusPENDINGAUTORENEWAL,
        RenewalStatusPENDINGVALIDATION,
        RenewalStatusSUCCESS
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

pattern RenewalStatusFAILED :: RenewalStatus
pattern RenewalStatusFAILED = RenewalStatus' "FAILED"

pattern RenewalStatusPENDINGAUTORENEWAL :: RenewalStatus
pattern RenewalStatusPENDINGAUTORENEWAL = RenewalStatus' "PENDING_AUTO_RENEWAL"

pattern RenewalStatusPENDINGVALIDATION :: RenewalStatus
pattern RenewalStatusPENDINGVALIDATION = RenewalStatus' "PENDING_VALIDATION"

pattern RenewalStatusSUCCESS :: RenewalStatus
pattern RenewalStatusSUCCESS = RenewalStatus' "SUCCESS"

{-# COMPLETE
  RenewalStatusFAILED,
  RenewalStatusPENDINGAUTORENEWAL,
  RenewalStatusPENDINGVALIDATION,
  RenewalStatusSUCCESS,
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
