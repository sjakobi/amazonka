{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CognitoIdentityProvider.Types.EventFilterType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CognitoIdentityProvider.Types.EventFilterType
  ( EventFilterType
      ( ..,
        EFTPasswordChange,
        EFTSignIn,
        EFTSignUp
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data EventFilterType = EventFilterType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern EFTPasswordChange :: EventFilterType
pattern EFTPasswordChange = EventFilterType' "PASSWORD_CHANGE"

pattern EFTSignIn :: EventFilterType
pattern EFTSignIn = EventFilterType' "SIGN_IN"

pattern EFTSignUp :: EventFilterType
pattern EFTSignUp = EventFilterType' "SIGN_UP"

{-# COMPLETE
  EFTPasswordChange,
  EFTSignIn,
  EFTSignUp,
  EventFilterType'
  #-}

instance FromText EventFilterType where
  parser = (EventFilterType' . mk) <$> takeText

instance ToText EventFilterType where
  toText (EventFilterType' ci) = original ci

instance Hashable EventFilterType

instance NFData EventFilterType

instance ToByteString EventFilterType

instance ToQuery EventFilterType

instance ToHeader EventFilterType

instance ToJSON EventFilterType where
  toJSON = toJSONText

instance FromJSON EventFilterType where
  parseJSON = parseJSONText "EventFilterType"
