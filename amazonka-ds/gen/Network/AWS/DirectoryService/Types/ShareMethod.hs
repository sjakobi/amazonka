{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DirectoryService.Types.ShareMethod
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DirectoryService.Types.ShareMethod
  ( ShareMethod
      ( ..,
        Handshake,
        Organizations
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ShareMethod = ShareMethod' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Handshake :: ShareMethod
pattern Handshake = ShareMethod' "HANDSHAKE"

pattern Organizations :: ShareMethod
pattern Organizations = ShareMethod' "ORGANIZATIONS"

{-# COMPLETE
  Handshake,
  Organizations,
  ShareMethod'
  #-}

instance FromText ShareMethod where
  parser = (ShareMethod' . mk) <$> takeText

instance ToText ShareMethod where
  toText (ShareMethod' ci) = original ci

instance Hashable ShareMethod

instance NFData ShareMethod

instance ToByteString ShareMethod

instance ToQuery ShareMethod

instance ToHeader ShareMethod

instance ToJSON ShareMethod where
  toJSON = toJSONText

instance FromJSON ShareMethod where
  parseJSON = parseJSONText "ShareMethod"
