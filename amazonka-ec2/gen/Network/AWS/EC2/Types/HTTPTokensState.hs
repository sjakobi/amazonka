{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.HTTPTokensState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.HTTPTokensState
  ( HTTPTokensState
      ( ..,
        HTTPTSOptional,
        HTTPTSRequired
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data HTTPTokensState = HTTPTokensState' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern HTTPTSOptional :: HTTPTokensState
pattern HTTPTSOptional = HTTPTokensState' "optional"

pattern HTTPTSRequired :: HTTPTokensState
pattern HTTPTSRequired = HTTPTokensState' "required"

{-# COMPLETE
  HTTPTSOptional,
  HTTPTSRequired,
  HTTPTokensState'
  #-}

instance FromText HTTPTokensState where
  parser = (HTTPTokensState' . mk) <$> takeText

instance ToText HTTPTokensState where
  toText (HTTPTokensState' ci) = original ci

instance Hashable HTTPTokensState

instance NFData HTTPTokensState

instance ToByteString HTTPTokensState

instance ToQuery HTTPTokensState

instance ToHeader HTTPTokensState

instance FromXML HTTPTokensState where
  parseXML = parseXMLText "HTTPTokensState"
