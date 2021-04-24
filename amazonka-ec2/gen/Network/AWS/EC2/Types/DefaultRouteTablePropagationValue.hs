{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.DefaultRouteTablePropagationValue
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.DefaultRouteTablePropagationValue
  ( DefaultRouteTablePropagationValue
      ( ..,
        DRTPVDisable,
        DRTPVEnable
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data DefaultRouteTablePropagationValue
  = DefaultRouteTablePropagationValue'
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

pattern DRTPVDisable :: DefaultRouteTablePropagationValue
pattern DRTPVDisable = DefaultRouteTablePropagationValue' "disable"

pattern DRTPVEnable :: DefaultRouteTablePropagationValue
pattern DRTPVEnable = DefaultRouteTablePropagationValue' "enable"

{-# COMPLETE
  DRTPVDisable,
  DRTPVEnable,
  DefaultRouteTablePropagationValue'
  #-}

instance FromText DefaultRouteTablePropagationValue where
  parser = (DefaultRouteTablePropagationValue' . mk) <$> takeText

instance ToText DefaultRouteTablePropagationValue where
  toText (DefaultRouteTablePropagationValue' ci) = original ci

instance Hashable DefaultRouteTablePropagationValue

instance NFData DefaultRouteTablePropagationValue

instance ToByteString DefaultRouteTablePropagationValue

instance ToQuery DefaultRouteTablePropagationValue

instance ToHeader DefaultRouteTablePropagationValue

instance FromXML DefaultRouteTablePropagationValue where
  parseXML = parseXMLText "DefaultRouteTablePropagationValue"
