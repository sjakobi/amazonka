{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.ReplacementStrategy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.ReplacementStrategy
  ( ReplacementStrategy
      ( ..,
        Launch
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data ReplacementStrategy
  = ReplacementStrategy'
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

pattern Launch :: ReplacementStrategy
pattern Launch = ReplacementStrategy' "launch"

{-# COMPLETE
  Launch,
  ReplacementStrategy'
  #-}

instance FromText ReplacementStrategy where
  parser = (ReplacementStrategy' . mk) <$> takeText

instance ToText ReplacementStrategy where
  toText (ReplacementStrategy' ci) = original ci

instance Hashable ReplacementStrategy

instance NFData ReplacementStrategy

instance ToByteString ReplacementStrategy

instance ToQuery ReplacementStrategy

instance ToHeader ReplacementStrategy

instance FromXML ReplacementStrategy where
  parseXML = parseXMLText "ReplacementStrategy"
