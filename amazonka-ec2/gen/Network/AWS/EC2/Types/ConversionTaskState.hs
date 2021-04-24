{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.ConversionTaskState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.ConversionTaskState
  ( ConversionTaskState
      ( ..,
        Active,
        Cancelled,
        Cancelling,
        Completed
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data ConversionTaskState
  = ConversionTaskState'
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

pattern Active :: ConversionTaskState
pattern Active = ConversionTaskState' "active"

pattern Cancelled :: ConversionTaskState
pattern Cancelled = ConversionTaskState' "cancelled"

pattern Cancelling :: ConversionTaskState
pattern Cancelling = ConversionTaskState' "cancelling"

pattern Completed :: ConversionTaskState
pattern Completed = ConversionTaskState' "completed"

{-# COMPLETE
  Active,
  Cancelled,
  Cancelling,
  Completed,
  ConversionTaskState'
  #-}

instance FromText ConversionTaskState where
  parser = (ConversionTaskState' . mk) <$> takeText

instance ToText ConversionTaskState where
  toText (ConversionTaskState' ci) = original ci

instance Hashable ConversionTaskState

instance NFData ConversionTaskState

instance ToByteString ConversionTaskState

instance ToQuery ConversionTaskState

instance ToHeader ConversionTaskState

instance FromXML ConversionTaskState where
  parseXML = parseXMLText "ConversionTaskState"
