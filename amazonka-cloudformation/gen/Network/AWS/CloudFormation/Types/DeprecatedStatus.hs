{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudFormation.Types.DeprecatedStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudFormation.Types.DeprecatedStatus
  ( DeprecatedStatus
      ( ..,
        Deprecated,
        Live
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data DeprecatedStatus = DeprecatedStatus' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Deprecated :: DeprecatedStatus
pattern Deprecated = DeprecatedStatus' "DEPRECATED"

pattern Live :: DeprecatedStatus
pattern Live = DeprecatedStatus' "LIVE"

{-# COMPLETE
  Deprecated,
  Live,
  DeprecatedStatus'
  #-}

instance FromText DeprecatedStatus where
  parser = (DeprecatedStatus' . mk) <$> takeText

instance ToText DeprecatedStatus where
  toText (DeprecatedStatus' ci) = original ci

instance Hashable DeprecatedStatus

instance NFData DeprecatedStatus

instance ToByteString DeprecatedStatus

instance ToQuery DeprecatedStatus

instance ToHeader DeprecatedStatus

instance FromXML DeprecatedStatus where
  parseXML = parseXMLText "DeprecatedStatus"
