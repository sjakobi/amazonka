{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.TtmlDestinationStyleControl
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.TtmlDestinationStyleControl
  ( TtmlDestinationStyleControl
      ( ..,
        TDSCPassthrough,
        TDSCUseConfigured
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Ttml Destination Style Control
data TtmlDestinationStyleControl
  = TtmlDestinationStyleControl'
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

pattern TDSCPassthrough :: TtmlDestinationStyleControl
pattern TDSCPassthrough = TtmlDestinationStyleControl' "PASSTHROUGH"

pattern TDSCUseConfigured :: TtmlDestinationStyleControl
pattern TDSCUseConfigured = TtmlDestinationStyleControl' "USE_CONFIGURED"

{-# COMPLETE
  TDSCPassthrough,
  TDSCUseConfigured,
  TtmlDestinationStyleControl'
  #-}

instance FromText TtmlDestinationStyleControl where
  parser = (TtmlDestinationStyleControl' . mk) <$> takeText

instance ToText TtmlDestinationStyleControl where
  toText (TtmlDestinationStyleControl' ci) = original ci

instance Hashable TtmlDestinationStyleControl

instance NFData TtmlDestinationStyleControl

instance ToByteString TtmlDestinationStyleControl

instance ToQuery TtmlDestinationStyleControl

instance ToHeader TtmlDestinationStyleControl

instance ToJSON TtmlDestinationStyleControl where
  toJSON = toJSONText

instance FromJSON TtmlDestinationStyleControl where
  parseJSON = parseJSONText "TtmlDestinationStyleControl"
