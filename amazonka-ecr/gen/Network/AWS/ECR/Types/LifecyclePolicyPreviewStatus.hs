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
-- Module      : Network.AWS.ECR.Types.LifecyclePolicyPreviewStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ECR.Types.LifecyclePolicyPreviewStatus
  ( LifecyclePolicyPreviewStatus
      ( ..,
        LifecyclePolicyPreviewStatusCOMPLETE,
        LifecyclePolicyPreviewStatusEXPIRED,
        LifecyclePolicyPreviewStatusFAILED,
        LifecyclePolicyPreviewStatusINPROGRESS
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype LifecyclePolicyPreviewStatus = LifecyclePolicyPreviewStatus'
  { fromLifecyclePolicyPreviewStatus ::
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

pattern LifecyclePolicyPreviewStatusCOMPLETE :: LifecyclePolicyPreviewStatus
pattern LifecyclePolicyPreviewStatusCOMPLETE = LifecyclePolicyPreviewStatus' "COMPLETE"

pattern LifecyclePolicyPreviewStatusEXPIRED :: LifecyclePolicyPreviewStatus
pattern LifecyclePolicyPreviewStatusEXPIRED = LifecyclePolicyPreviewStatus' "EXPIRED"

pattern LifecyclePolicyPreviewStatusFAILED :: LifecyclePolicyPreviewStatus
pattern LifecyclePolicyPreviewStatusFAILED = LifecyclePolicyPreviewStatus' "FAILED"

pattern LifecyclePolicyPreviewStatusINPROGRESS :: LifecyclePolicyPreviewStatus
pattern LifecyclePolicyPreviewStatusINPROGRESS = LifecyclePolicyPreviewStatus' "IN_PROGRESS"

{-# COMPLETE
  LifecyclePolicyPreviewStatusCOMPLETE,
  LifecyclePolicyPreviewStatusEXPIRED,
  LifecyclePolicyPreviewStatusFAILED,
  LifecyclePolicyPreviewStatusINPROGRESS,
  LifecyclePolicyPreviewStatus'
  #-}

instance Prelude.FromText LifecyclePolicyPreviewStatus where
  parser = LifecyclePolicyPreviewStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText LifecyclePolicyPreviewStatus where
  toText (LifecyclePolicyPreviewStatus' x) = x

instance Prelude.Hashable LifecyclePolicyPreviewStatus

instance Prelude.NFData LifecyclePolicyPreviewStatus

instance Prelude.ToByteString LifecyclePolicyPreviewStatus

instance Prelude.ToQuery LifecyclePolicyPreviewStatus

instance Prelude.ToHeader LifecyclePolicyPreviewStatus

instance Prelude.FromJSON LifecyclePolicyPreviewStatus where
  parseJSON = Prelude.parseJSONText "LifecyclePolicyPreviewStatus"
