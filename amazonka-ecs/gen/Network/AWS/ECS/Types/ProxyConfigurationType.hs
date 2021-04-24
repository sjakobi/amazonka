{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ECS.Types.ProxyConfigurationType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ECS.Types.ProxyConfigurationType
  ( ProxyConfigurationType
      ( ..,
        Appmesh
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ProxyConfigurationType
  = ProxyConfigurationType'
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

pattern Appmesh :: ProxyConfigurationType
pattern Appmesh = ProxyConfigurationType' "APPMESH"

{-# COMPLETE
  Appmesh,
  ProxyConfigurationType'
  #-}

instance FromText ProxyConfigurationType where
  parser = (ProxyConfigurationType' . mk) <$> takeText

instance ToText ProxyConfigurationType where
  toText (ProxyConfigurationType' ci) = original ci

instance Hashable ProxyConfigurationType

instance NFData ProxyConfigurationType

instance ToByteString ProxyConfigurationType

instance ToQuery ProxyConfigurationType

instance ToHeader ProxyConfigurationType

instance ToJSON ProxyConfigurationType where
  toJSON = toJSONText

instance FromJSON ProxyConfigurationType where
  parseJSON = parseJSONText "ProxyConfigurationType"
