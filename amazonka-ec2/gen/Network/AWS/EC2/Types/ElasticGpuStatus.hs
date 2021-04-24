{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.ElasticGpuStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.ElasticGpuStatus
  ( ElasticGpuStatus
      ( ..,
        Impaired,
        OK
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data ElasticGpuStatus = ElasticGpuStatus' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Impaired :: ElasticGpuStatus
pattern Impaired = ElasticGpuStatus' "IMPAIRED"

pattern OK :: ElasticGpuStatus
pattern OK = ElasticGpuStatus' "OK"

{-# COMPLETE
  Impaired,
  OK,
  ElasticGpuStatus'
  #-}

instance FromText ElasticGpuStatus where
  parser = (ElasticGpuStatus' . mk) <$> takeText

instance ToText ElasticGpuStatus where
  toText (ElasticGpuStatus' ci) = original ci

instance Hashable ElasticGpuStatus

instance NFData ElasticGpuStatus

instance ToByteString ElasticGpuStatus

instance ToQuery ElasticGpuStatus

instance ToHeader ElasticGpuStatus

instance FromXML ElasticGpuStatus where
  parseXML = parseXMLText "ElasticGpuStatus"
