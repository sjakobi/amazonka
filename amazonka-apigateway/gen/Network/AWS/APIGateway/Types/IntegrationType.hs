{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.APIGateway.Types.IntegrationType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.APIGateway.Types.IntegrationType
  ( IntegrationType
      ( ..,
        AWS,
        AWSProxy,
        HTTP,
        HTTPProxy,
        Mock
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | The integration type. The valid value is @HTTP@ for integrating an API method with an HTTP backend; @AWS@ with any AWS service endpoints; @MOCK@ for testing without actually invoking the backend; @HTTP_PROXY@ for integrating with the HTTP proxy integration; @AWS_PROXY@ for integrating with the Lambda proxy integration.
data IntegrationType = IntegrationType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern AWS :: IntegrationType
pattern AWS = IntegrationType' "AWS"

pattern AWSProxy :: IntegrationType
pattern AWSProxy = IntegrationType' "AWS_PROXY"

pattern HTTP :: IntegrationType
pattern HTTP = IntegrationType' "HTTP"

pattern HTTPProxy :: IntegrationType
pattern HTTPProxy = IntegrationType' "HTTP_PROXY"

pattern Mock :: IntegrationType
pattern Mock = IntegrationType' "MOCK"

{-# COMPLETE
  AWS,
  AWSProxy,
  HTTP,
  HTTPProxy,
  Mock,
  IntegrationType'
  #-}

instance FromText IntegrationType where
  parser = (IntegrationType' . mk) <$> takeText

instance ToText IntegrationType where
  toText (IntegrationType' ci) = original ci

instance Hashable IntegrationType

instance NFData IntegrationType

instance ToByteString IntegrationType

instance ToQuery IntegrationType

instance ToHeader IntegrationType

instance ToJSON IntegrationType where
  toJSON = toJSONText

instance FromJSON IntegrationType where
  parseJSON = parseJSONText "IntegrationType"
