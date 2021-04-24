{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lambda.Types.InvocationType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lambda.Types.InvocationType
  ( InvocationType
      ( ..,
        DryRun,
        Event,
        RequestResponse
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data InvocationType = InvocationType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern DryRun :: InvocationType
pattern DryRun = InvocationType' "DryRun"

pattern Event :: InvocationType
pattern Event = InvocationType' "Event"

pattern RequestResponse :: InvocationType
pattern RequestResponse = InvocationType' "RequestResponse"

{-# COMPLETE
  DryRun,
  Event,
  RequestResponse,
  InvocationType'
  #-}

instance FromText InvocationType where
  parser = (InvocationType' . mk) <$> takeText

instance ToText InvocationType where
  toText (InvocationType' ci) = original ci

instance Hashable InvocationType

instance NFData InvocationType

instance ToByteString InvocationType

instance ToQuery InvocationType

instance ToHeader InvocationType

instance ToJSON InvocationType where
  toJSON = toJSONText
