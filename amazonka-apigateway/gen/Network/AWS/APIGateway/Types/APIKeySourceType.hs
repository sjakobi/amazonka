{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.APIGateway.Types.APIKeySourceType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.APIGateway.Types.APIKeySourceType
  ( APIKeySourceType
      ( ..,
        Authorizer,
        Header
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data APIKeySourceType = APIKeySourceType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Authorizer :: APIKeySourceType
pattern Authorizer = APIKeySourceType' "AUTHORIZER"

pattern Header :: APIKeySourceType
pattern Header = APIKeySourceType' "HEADER"

{-# COMPLETE
  Authorizer,
  Header,
  APIKeySourceType'
  #-}

instance FromText APIKeySourceType where
  parser = (APIKeySourceType' . mk) <$> takeText

instance ToText APIKeySourceType where
  toText (APIKeySourceType' ci) = original ci

instance Hashable APIKeySourceType

instance NFData APIKeySourceType

instance ToByteString APIKeySourceType

instance ToQuery APIKeySourceType

instance ToHeader APIKeySourceType

instance ToJSON APIKeySourceType where
  toJSON = toJSONText

instance FromJSON APIKeySourceType where
  parseJSON = parseJSONText "APIKeySourceType"
