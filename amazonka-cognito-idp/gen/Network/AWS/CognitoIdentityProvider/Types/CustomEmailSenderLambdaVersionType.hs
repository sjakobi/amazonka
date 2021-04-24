{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CognitoIdentityProvider.Types.CustomEmailSenderLambdaVersionType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CognitoIdentityProvider.Types.CustomEmailSenderLambdaVersionType
  ( CustomEmailSenderLambdaVersionType
      ( ..,
        V10
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data CustomEmailSenderLambdaVersionType
  = CustomEmailSenderLambdaVersionType'
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

pattern V10 :: CustomEmailSenderLambdaVersionType
pattern V10 = CustomEmailSenderLambdaVersionType' "V1_0"

{-# COMPLETE
  V10,
  CustomEmailSenderLambdaVersionType'
  #-}

instance FromText CustomEmailSenderLambdaVersionType where
  parser = (CustomEmailSenderLambdaVersionType' . mk) <$> takeText

instance ToText CustomEmailSenderLambdaVersionType where
  toText (CustomEmailSenderLambdaVersionType' ci) = original ci

instance Hashable CustomEmailSenderLambdaVersionType

instance NFData CustomEmailSenderLambdaVersionType

instance ToByteString CustomEmailSenderLambdaVersionType

instance ToQuery CustomEmailSenderLambdaVersionType

instance ToHeader CustomEmailSenderLambdaVersionType

instance ToJSON CustomEmailSenderLambdaVersionType where
  toJSON = toJSONText

instance FromJSON CustomEmailSenderLambdaVersionType where
  parseJSON = parseJSONText "CustomEmailSenderLambdaVersionType"
