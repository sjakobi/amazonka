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
-- Module      : Network.AWS.ServiceCatalog.Types.RequestStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ServiceCatalog.Types.RequestStatus
  ( RequestStatus
      ( ..,
        RequestStatusAVAILABLE,
        RequestStatusCREATING,
        RequestStatusFAILED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype RequestStatus = RequestStatus'
  { fromRequestStatus ::
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

pattern RequestStatusAVAILABLE :: RequestStatus
pattern RequestStatusAVAILABLE = RequestStatus' "AVAILABLE"

pattern RequestStatusCREATING :: RequestStatus
pattern RequestStatusCREATING = RequestStatus' "CREATING"

pattern RequestStatusFAILED :: RequestStatus
pattern RequestStatusFAILED = RequestStatus' "FAILED"

{-# COMPLETE
  RequestStatusAVAILABLE,
  RequestStatusCREATING,
  RequestStatusFAILED,
  RequestStatus'
  #-}

instance Prelude.FromText RequestStatus where
  parser = RequestStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText RequestStatus where
  toText (RequestStatus' x) = x

instance Prelude.Hashable RequestStatus

instance Prelude.NFData RequestStatus

instance Prelude.ToByteString RequestStatus

instance Prelude.ToQuery RequestStatus

instance Prelude.ToHeader RequestStatus

instance Prelude.FromJSON RequestStatus where
  parseJSON = Prelude.parseJSONText "RequestStatus"
