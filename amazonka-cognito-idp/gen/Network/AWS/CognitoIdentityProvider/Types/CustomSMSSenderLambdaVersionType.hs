{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CognitoIdentityProvider.Types.CustomSMSSenderLambdaVersionType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CognitoIdentityProvider.Types.CustomSMSSenderLambdaVersionType
  ( CustomSMSSenderLambdaVersionType
      ( ..,
        CSMSSLVTV10
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data CustomSMSSenderLambdaVersionType
  = CustomSMSSenderLambdaVersionType'
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

pattern CSMSSLVTV10 :: CustomSMSSenderLambdaVersionType
pattern CSMSSLVTV10 = CustomSMSSenderLambdaVersionType' "V1_0"

{-# COMPLETE
  CSMSSLVTV10,
  CustomSMSSenderLambdaVersionType'
  #-}

instance FromText CustomSMSSenderLambdaVersionType where
  parser = (CustomSMSSenderLambdaVersionType' . mk) <$> takeText

instance ToText CustomSMSSenderLambdaVersionType where
  toText (CustomSMSSenderLambdaVersionType' ci) = original ci

instance Hashable CustomSMSSenderLambdaVersionType

instance NFData CustomSMSSenderLambdaVersionType

instance ToByteString CustomSMSSenderLambdaVersionType

instance ToQuery CustomSMSSenderLambdaVersionType

instance ToHeader CustomSMSSenderLambdaVersionType

instance ToJSON CustomSMSSenderLambdaVersionType where
  toJSON = toJSONText

instance FromJSON CustomSMSSenderLambdaVersionType where
  parseJSON = parseJSONText "CustomSMSSenderLambdaVersionType"
