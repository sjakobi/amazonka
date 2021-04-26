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
-- Module      : Network.AWS.GuardDuty.Types.PublishingStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.GuardDuty.Types.PublishingStatus
  ( PublishingStatus
      ( ..,
        PublishingStatusPENDINGVERIFICATION,
        PublishingStatusPUBLISHING,
        PublishingStatusSTOPPED,
        PublishingStatusUNABLETOPUBLISHFIXDESTINATIONPROPERTY
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype PublishingStatus = PublishingStatus'
  { fromPublishingStatus ::
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

pattern PublishingStatusPENDINGVERIFICATION :: PublishingStatus
pattern PublishingStatusPENDINGVERIFICATION = PublishingStatus' "PENDING_VERIFICATION"

pattern PublishingStatusPUBLISHING :: PublishingStatus
pattern PublishingStatusPUBLISHING = PublishingStatus' "PUBLISHING"

pattern PublishingStatusSTOPPED :: PublishingStatus
pattern PublishingStatusSTOPPED = PublishingStatus' "STOPPED"

pattern PublishingStatusUNABLETOPUBLISHFIXDESTINATIONPROPERTY :: PublishingStatus
pattern PublishingStatusUNABLETOPUBLISHFIXDESTINATIONPROPERTY = PublishingStatus' "UNABLE_TO_PUBLISH_FIX_DESTINATION_PROPERTY"

{-# COMPLETE
  PublishingStatusPENDINGVERIFICATION,
  PublishingStatusPUBLISHING,
  PublishingStatusSTOPPED,
  PublishingStatusUNABLETOPUBLISHFIXDESTINATIONPROPERTY,
  PublishingStatus'
  #-}

instance Prelude.FromText PublishingStatus where
  parser = PublishingStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText PublishingStatus where
  toText (PublishingStatus' x) = x

instance Prelude.Hashable PublishingStatus

instance Prelude.NFData PublishingStatus

instance Prelude.ToByteString PublishingStatus

instance Prelude.ToQuery PublishingStatus

instance Prelude.ToHeader PublishingStatus

instance Prelude.FromJSON PublishingStatus where
  parseJSON = Prelude.parseJSONText "PublishingStatus"
