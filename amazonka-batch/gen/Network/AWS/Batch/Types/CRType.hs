{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Batch.Types.CRType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Batch.Types.CRType
  ( CRType
      ( ..,
        EC2,
        Fargate,
        FargateSpot,
        Spot
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data CRType = CRType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern EC2 :: CRType
pattern EC2 = CRType' "EC2"

pattern Fargate :: CRType
pattern Fargate = CRType' "FARGATE"

pattern FargateSpot :: CRType
pattern FargateSpot = CRType' "FARGATE_SPOT"

pattern Spot :: CRType
pattern Spot = CRType' "SPOT"

{-# COMPLETE
  EC2,
  Fargate,
  FargateSpot,
  Spot,
  CRType'
  #-}

instance FromText CRType where
  parser = (CRType' . mk) <$> takeText

instance ToText CRType where
  toText (CRType' ci) = original ci

instance Hashable CRType

instance NFData CRType

instance ToByteString CRType

instance ToQuery CRType

instance ToHeader CRType

instance ToJSON CRType where
  toJSON = toJSONText

instance FromJSON CRType where
  parseJSON = parseJSONText "CRType"
