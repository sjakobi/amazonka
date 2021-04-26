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
-- Module      : Network.AWS.ServiceCatalog.Types.CopyProductStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ServiceCatalog.Types.CopyProductStatus
  ( CopyProductStatus
      ( ..,
        CopyProductStatusFAILED,
        CopyProductStatusINPROGRESS,
        CopyProductStatusSUCCEEDED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype CopyProductStatus = CopyProductStatus'
  { fromCopyProductStatus ::
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

pattern CopyProductStatusFAILED :: CopyProductStatus
pattern CopyProductStatusFAILED = CopyProductStatus' "FAILED"

pattern CopyProductStatusINPROGRESS :: CopyProductStatus
pattern CopyProductStatusINPROGRESS = CopyProductStatus' "IN_PROGRESS"

pattern CopyProductStatusSUCCEEDED :: CopyProductStatus
pattern CopyProductStatusSUCCEEDED = CopyProductStatus' "SUCCEEDED"

{-# COMPLETE
  CopyProductStatusFAILED,
  CopyProductStatusINPROGRESS,
  CopyProductStatusSUCCEEDED,
  CopyProductStatus'
  #-}

instance Prelude.FromText CopyProductStatus where
  parser = CopyProductStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText CopyProductStatus where
  toText (CopyProductStatus' x) = x

instance Prelude.Hashable CopyProductStatus

instance Prelude.NFData CopyProductStatus

instance Prelude.ToByteString CopyProductStatus

instance Prelude.ToQuery CopyProductStatus

instance Prelude.ToHeader CopyProductStatus

instance Prelude.FromJSON CopyProductStatus where
  parseJSON = Prelude.parseJSONText "CopyProductStatus"
