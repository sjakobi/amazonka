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
-- Module      : Network.AWS.IoT.Types.OTAUpdateStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.OTAUpdateStatus
  ( OTAUpdateStatus
      ( ..,
        OTAUpdateStatusCREATECOMPLETE,
        OTAUpdateStatusCREATEFAILED,
        OTAUpdateStatusCREATEINPROGRESS,
        OTAUpdateStatusCREATEPENDING
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype OTAUpdateStatus = OTAUpdateStatus'
  { fromOTAUpdateStatus ::
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

pattern OTAUpdateStatusCREATECOMPLETE :: OTAUpdateStatus
pattern OTAUpdateStatusCREATECOMPLETE = OTAUpdateStatus' "CREATE_COMPLETE"

pattern OTAUpdateStatusCREATEFAILED :: OTAUpdateStatus
pattern OTAUpdateStatusCREATEFAILED = OTAUpdateStatus' "CREATE_FAILED"

pattern OTAUpdateStatusCREATEINPROGRESS :: OTAUpdateStatus
pattern OTAUpdateStatusCREATEINPROGRESS = OTAUpdateStatus' "CREATE_IN_PROGRESS"

pattern OTAUpdateStatusCREATEPENDING :: OTAUpdateStatus
pattern OTAUpdateStatusCREATEPENDING = OTAUpdateStatus' "CREATE_PENDING"

{-# COMPLETE
  OTAUpdateStatusCREATECOMPLETE,
  OTAUpdateStatusCREATEFAILED,
  OTAUpdateStatusCREATEINPROGRESS,
  OTAUpdateStatusCREATEPENDING,
  OTAUpdateStatus'
  #-}

instance Prelude.FromText OTAUpdateStatus where
  parser = OTAUpdateStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText OTAUpdateStatus where
  toText (OTAUpdateStatus' x) = x

instance Prelude.Hashable OTAUpdateStatus

instance Prelude.NFData OTAUpdateStatus

instance Prelude.ToByteString OTAUpdateStatus

instance Prelude.ToQuery OTAUpdateStatus

instance Prelude.ToHeader OTAUpdateStatus

instance Prelude.ToJSON OTAUpdateStatus where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON OTAUpdateStatus where
  parseJSON = Prelude.parseJSONText "OTAUpdateStatus"
