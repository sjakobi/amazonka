{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.StaticSourcesSupportValue
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.StaticSourcesSupportValue
  ( StaticSourcesSupportValue
      ( ..,
        SSSVDisable,
        SSSVEnable
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data StaticSourcesSupportValue
  = StaticSourcesSupportValue'
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

pattern SSSVDisable :: StaticSourcesSupportValue
pattern SSSVDisable = StaticSourcesSupportValue' "disable"

pattern SSSVEnable :: StaticSourcesSupportValue
pattern SSSVEnable = StaticSourcesSupportValue' "enable"

{-# COMPLETE
  SSSVDisable,
  SSSVEnable,
  StaticSourcesSupportValue'
  #-}

instance FromText StaticSourcesSupportValue where
  parser = (StaticSourcesSupportValue' . mk) <$> takeText

instance ToText StaticSourcesSupportValue where
  toText (StaticSourcesSupportValue' ci) = original ci

instance Hashable StaticSourcesSupportValue

instance NFData StaticSourcesSupportValue

instance ToByteString StaticSourcesSupportValue

instance ToQuery StaticSourcesSupportValue

instance ToHeader StaticSourcesSupportValue

instance FromXML StaticSourcesSupportValue where
  parseXML = parseXMLText "StaticSourcesSupportValue"
