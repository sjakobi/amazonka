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
-- Module      : Network.AWS.CertificateManager.Types.DomainStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CertificateManager.Types.DomainStatus
  ( DomainStatus
      ( ..,
        DomainStatusFAILED,
        DomainStatusPENDINGVALIDATION,
        DomainStatusSUCCESS
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype DomainStatus = DomainStatus'
  { fromDomainStatus ::
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

pattern DomainStatusFAILED :: DomainStatus
pattern DomainStatusFAILED = DomainStatus' "FAILED"

pattern DomainStatusPENDINGVALIDATION :: DomainStatus
pattern DomainStatusPENDINGVALIDATION = DomainStatus' "PENDING_VALIDATION"

pattern DomainStatusSUCCESS :: DomainStatus
pattern DomainStatusSUCCESS = DomainStatus' "SUCCESS"

{-# COMPLETE
  DomainStatusFAILED,
  DomainStatusPENDINGVALIDATION,
  DomainStatusSUCCESS,
  DomainStatus'
  #-}

instance Prelude.FromText DomainStatus where
  parser = DomainStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText DomainStatus where
  toText (DomainStatus' x) = x

instance Prelude.Hashable DomainStatus

instance Prelude.NFData DomainStatus

instance Prelude.ToByteString DomainStatus

instance Prelude.ToQuery DomainStatus

instance Prelude.ToHeader DomainStatus

instance Prelude.FromJSON DomainStatus where
  parseJSON = Prelude.parseJSONText "DomainStatus"
