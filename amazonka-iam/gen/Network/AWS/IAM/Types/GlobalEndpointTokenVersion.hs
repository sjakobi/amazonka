{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IAM.Types.GlobalEndpointTokenVersion
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IAM.Types.GlobalEndpointTokenVersion
  ( GlobalEndpointTokenVersion
      ( ..,
        V1Token,
        V2Token
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data GlobalEndpointTokenVersion
  = GlobalEndpointTokenVersion'
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

pattern V1Token :: GlobalEndpointTokenVersion
pattern V1Token = GlobalEndpointTokenVersion' "v1Token"

pattern V2Token :: GlobalEndpointTokenVersion
pattern V2Token = GlobalEndpointTokenVersion' "v2Token"

{-# COMPLETE
  V1Token,
  V2Token,
  GlobalEndpointTokenVersion'
  #-}

instance FromText GlobalEndpointTokenVersion where
  parser = (GlobalEndpointTokenVersion' . mk) <$> takeText

instance ToText GlobalEndpointTokenVersion where
  toText (GlobalEndpointTokenVersion' ci) = original ci

instance Hashable GlobalEndpointTokenVersion

instance NFData GlobalEndpointTokenVersion

instance ToByteString GlobalEndpointTokenVersion

instance ToQuery GlobalEndpointTokenVersion

instance ToHeader GlobalEndpointTokenVersion
