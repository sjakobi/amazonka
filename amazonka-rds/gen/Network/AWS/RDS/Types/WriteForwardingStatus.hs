{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.RDS.Types.WriteForwardingStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.RDS.Types.WriteForwardingStatus
  ( WriteForwardingStatus
      ( ..,
        WFSDisabled,
        WFSDisabling,
        WFSEnabled,
        WFSEnabling,
        WFSUnknown
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data WriteForwardingStatus
  = WriteForwardingStatus'
      ( CI
          Text
      )
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern WFSDisabled :: WriteForwardingStatus
pattern WFSDisabled = WriteForwardingStatus' "disabled"

pattern WFSDisabling :: WriteForwardingStatus
pattern WFSDisabling = WriteForwardingStatus' "disabling"

pattern WFSEnabled :: WriteForwardingStatus
pattern WFSEnabled = WriteForwardingStatus' "enabled"

pattern WFSEnabling :: WriteForwardingStatus
pattern WFSEnabling = WriteForwardingStatus' "enabling"

pattern WFSUnknown :: WriteForwardingStatus
pattern WFSUnknown = WriteForwardingStatus' "unknown"

{-# COMPLETE
  WFSDisabled,
  WFSDisabling,
  WFSEnabled,
  WFSEnabling,
  WFSUnknown,
  WriteForwardingStatus'
  #-}

instance FromText WriteForwardingStatus where
  parser = (WriteForwardingStatus' . mk) <$> takeText

instance ToText WriteForwardingStatus where
  toText (WriteForwardingStatus' ci) = original ci

instance Hashable WriteForwardingStatus

instance NFData WriteForwardingStatus

instance ToByteString WriteForwardingStatus

instance ToQuery WriteForwardingStatus

instance ToHeader WriteForwardingStatus

instance FromXML WriteForwardingStatus where
  parseXML = parseXMLText "WriteForwardingStatus"
