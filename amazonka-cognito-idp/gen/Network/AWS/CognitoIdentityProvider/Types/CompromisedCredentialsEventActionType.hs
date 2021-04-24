{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CognitoIdentityProvider.Types.CompromisedCredentialsEventActionType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CognitoIdentityProvider.Types.CompromisedCredentialsEventActionType
  ( CompromisedCredentialsEventActionType
      ( ..,
        CCEATBlock,
        CCEATNoAction
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data CompromisedCredentialsEventActionType
  = CompromisedCredentialsEventActionType'
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

pattern CCEATBlock :: CompromisedCredentialsEventActionType
pattern CCEATBlock = CompromisedCredentialsEventActionType' "BLOCK"

pattern CCEATNoAction :: CompromisedCredentialsEventActionType
pattern CCEATNoAction = CompromisedCredentialsEventActionType' "NO_ACTION"

{-# COMPLETE
  CCEATBlock,
  CCEATNoAction,
  CompromisedCredentialsEventActionType'
  #-}

instance FromText CompromisedCredentialsEventActionType where
  parser = (CompromisedCredentialsEventActionType' . mk) <$> takeText

instance ToText CompromisedCredentialsEventActionType where
  toText (CompromisedCredentialsEventActionType' ci) = original ci

instance Hashable CompromisedCredentialsEventActionType

instance NFData CompromisedCredentialsEventActionType

instance ToByteString CompromisedCredentialsEventActionType

instance ToQuery CompromisedCredentialsEventActionType

instance ToHeader CompromisedCredentialsEventActionType

instance ToJSON CompromisedCredentialsEventActionType where
  toJSON = toJSONText

instance FromJSON CompromisedCredentialsEventActionType where
  parseJSON = parseJSONText "CompromisedCredentialsEventActionType"
