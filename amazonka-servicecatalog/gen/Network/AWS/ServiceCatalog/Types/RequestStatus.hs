{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        Available,
        Creating,
        Failed
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data RequestStatus = RequestStatus' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Available :: RequestStatus
pattern Available = RequestStatus' "AVAILABLE"

pattern Creating :: RequestStatus
pattern Creating = RequestStatus' "CREATING"

pattern Failed :: RequestStatus
pattern Failed = RequestStatus' "FAILED"

{-# COMPLETE
  Available,
  Creating,
  Failed,
  RequestStatus'
  #-}

instance FromText RequestStatus where
  parser = (RequestStatus' . mk) <$> takeText

instance ToText RequestStatus where
  toText (RequestStatus' ci) = original ci

instance Hashable RequestStatus

instance NFData RequestStatus

instance ToByteString RequestStatus

instance ToQuery RequestStatus

instance ToHeader RequestStatus

instance FromJSON RequestStatus where
  parseJSON = parseJSONText "RequestStatus"
