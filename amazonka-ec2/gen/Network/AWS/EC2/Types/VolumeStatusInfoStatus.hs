{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.VolumeStatusInfoStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.VolumeStatusInfoStatus
  ( VolumeStatusInfoStatus
      ( ..,
        VSISImpaired,
        VSISInsufficientData,
        VSISOK
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data VolumeStatusInfoStatus
  = VolumeStatusInfoStatus'
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

pattern VSISImpaired :: VolumeStatusInfoStatus
pattern VSISImpaired = VolumeStatusInfoStatus' "impaired"

pattern VSISInsufficientData :: VolumeStatusInfoStatus
pattern VSISInsufficientData = VolumeStatusInfoStatus' "insufficient-data"

pattern VSISOK :: VolumeStatusInfoStatus
pattern VSISOK = VolumeStatusInfoStatus' "ok"

{-# COMPLETE
  VSISImpaired,
  VSISInsufficientData,
  VSISOK,
  VolumeStatusInfoStatus'
  #-}

instance FromText VolumeStatusInfoStatus where
  parser = (VolumeStatusInfoStatus' . mk) <$> takeText

instance ToText VolumeStatusInfoStatus where
  toText (VolumeStatusInfoStatus' ci) = original ci

instance Hashable VolumeStatusInfoStatus

instance NFData VolumeStatusInfoStatus

instance ToByteString VolumeStatusInfoStatus

instance ToQuery VolumeStatusInfoStatus

instance ToHeader VolumeStatusInfoStatus

instance FromXML VolumeStatusInfoStatus where
  parseXML = parseXMLText "VolumeStatusInfoStatus"
