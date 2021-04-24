{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CognitoIdentityProvider.Types.EmailSendingAccountType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CognitoIdentityProvider.Types.EmailSendingAccountType
  ( EmailSendingAccountType
      ( ..,
        CognitoDefault,
        Developer
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data EmailSendingAccountType
  = EmailSendingAccountType'
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

pattern CognitoDefault :: EmailSendingAccountType
pattern CognitoDefault = EmailSendingAccountType' "COGNITO_DEFAULT"

pattern Developer :: EmailSendingAccountType
pattern Developer = EmailSendingAccountType' "DEVELOPER"

{-# COMPLETE
  CognitoDefault,
  Developer,
  EmailSendingAccountType'
  #-}

instance FromText EmailSendingAccountType where
  parser = (EmailSendingAccountType' . mk) <$> takeText

instance ToText EmailSendingAccountType where
  toText (EmailSendingAccountType' ci) = original ci

instance Hashable EmailSendingAccountType

instance NFData EmailSendingAccountType

instance ToByteString EmailSendingAccountType

instance ToQuery EmailSendingAccountType

instance ToHeader EmailSendingAccountType

instance ToJSON EmailSendingAccountType where
  toJSON = toJSONText

instance FromJSON EmailSendingAccountType where
  parseJSON = parseJSONText "EmailSendingAccountType"
