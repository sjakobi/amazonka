{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodePipeline.Types.StageTransitionType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodePipeline.Types.StageTransitionType
  ( StageTransitionType
      ( ..,
        Inbound,
        Outbound
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data StageTransitionType
  = StageTransitionType'
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

pattern Inbound :: StageTransitionType
pattern Inbound = StageTransitionType' "Inbound"

pattern Outbound :: StageTransitionType
pattern Outbound = StageTransitionType' "Outbound"

{-# COMPLETE
  Inbound,
  Outbound,
  StageTransitionType'
  #-}

instance FromText StageTransitionType where
  parser = (StageTransitionType' . mk) <$> takeText

instance ToText StageTransitionType where
  toText (StageTransitionType' ci) = original ci

instance Hashable StageTransitionType

instance NFData StageTransitionType

instance ToByteString StageTransitionType

instance ToQuery StageTransitionType

instance ToHeader StageTransitionType

instance ToJSON StageTransitionType where
  toJSON = toJSONText
