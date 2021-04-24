{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Transcribe.Types.OutputLocationType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Transcribe.Types.OutputLocationType
  ( OutputLocationType
      ( ..,
        CustomerBucket,
        ServiceBucket
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data OutputLocationType
  = OutputLocationType'
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

pattern CustomerBucket :: OutputLocationType
pattern CustomerBucket = OutputLocationType' "CUSTOMER_BUCKET"

pattern ServiceBucket :: OutputLocationType
pattern ServiceBucket = OutputLocationType' "SERVICE_BUCKET"

{-# COMPLETE
  CustomerBucket,
  ServiceBucket,
  OutputLocationType'
  #-}

instance FromText OutputLocationType where
  parser = (OutputLocationType' . mk) <$> takeText

instance ToText OutputLocationType where
  toText (OutputLocationType' ci) = original ci

instance Hashable OutputLocationType

instance NFData OutputLocationType

instance ToByteString OutputLocationType

instance ToQuery OutputLocationType

instance ToHeader OutputLocationType

instance FromJSON OutputLocationType where
  parseJSON = parseJSONText "OutputLocationType"
