{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CognitoIdentityProvider.Types.EventResponseType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CognitoIdentityProvider.Types.EventResponseType
  ( EventResponseType
      ( ..,
        ERTFailure,
        ERTSuccess
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data EventResponseType = EventResponseType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern ERTFailure :: EventResponseType
pattern ERTFailure = EventResponseType' "Failure"

pattern ERTSuccess :: EventResponseType
pattern ERTSuccess = EventResponseType' "Success"

{-# COMPLETE
  ERTFailure,
  ERTSuccess,
  EventResponseType'
  #-}

instance FromText EventResponseType where
  parser = (EventResponseType' . mk) <$> takeText

instance ToText EventResponseType where
  toText (EventResponseType' ci) = original ci

instance Hashable EventResponseType

instance NFData EventResponseType

instance ToByteString EventResponseType

instance ToQuery EventResponseType

instance ToHeader EventResponseType

instance FromJSON EventResponseType where
  parseJSON = parseJSONText "EventResponseType"
