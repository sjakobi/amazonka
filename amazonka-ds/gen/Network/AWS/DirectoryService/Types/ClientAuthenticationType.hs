{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DirectoryService.Types.ClientAuthenticationType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DirectoryService.Types.ClientAuthenticationType
  ( ClientAuthenticationType
      ( ..,
        SmartCard
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ClientAuthenticationType
  = ClientAuthenticationType'
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

pattern SmartCard :: ClientAuthenticationType
pattern SmartCard = ClientAuthenticationType' "SmartCard"

{-# COMPLETE
  SmartCard,
  ClientAuthenticationType'
  #-}

instance FromText ClientAuthenticationType where
  parser = (ClientAuthenticationType' . mk) <$> takeText

instance ToText ClientAuthenticationType where
  toText (ClientAuthenticationType' ci) = original ci

instance Hashable ClientAuthenticationType

instance NFData ClientAuthenticationType

instance ToByteString ClientAuthenticationType

instance ToQuery ClientAuthenticationType

instance ToHeader ClientAuthenticationType

instance ToJSON ClientAuthenticationType where
  toJSON = toJSONText
