{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AlexaBusiness.Types.SipType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AlexaBusiness.Types.SipType
  ( SipType
      ( ..,
        STWork
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data SipType = SipType' (CI Text)
  deriving (Eq, Ord, Show, Data, Typeable, Generic)

pattern STWork :: SipType
pattern STWork = SipType' "WORK"

{-# COMPLETE
  STWork,
  SipType'
  #-}

instance FromText SipType where
  parser = (SipType' . mk) <$> takeText

instance ToText SipType where
  toText (SipType' ci) = original ci

instance Hashable SipType

instance NFData SipType

instance ToByteString SipType

instance ToQuery SipType

instance ToHeader SipType

instance ToJSON SipType where
  toJSON = toJSONText

instance FromJSON SipType where
  parseJSON = parseJSONText "SipType"
