{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.ElasticGpuState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.ElasticGpuState
  ( ElasticGpuState
      ( ..,
        Attached
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data ElasticGpuState = ElasticGpuState' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Attached :: ElasticGpuState
pattern Attached = ElasticGpuState' "ATTACHED"

{-# COMPLETE
  Attached,
  ElasticGpuState'
  #-}

instance FromText ElasticGpuState where
  parser = (ElasticGpuState' . mk) <$> takeText

instance ToText ElasticGpuState where
  toText (ElasticGpuState' ci) = original ci

instance Hashable ElasticGpuState

instance NFData ElasticGpuState

instance ToByteString ElasticGpuState

instance ToQuery ElasticGpuState

instance ToHeader ElasticGpuState

instance FromXML ElasticGpuState where
  parseXML = parseXMLText "ElasticGpuState"
