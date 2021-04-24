{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.EbuTtDDestinationStyleControl
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.EbuTtDDestinationStyleControl
  ( EbuTtDDestinationStyleControl
      ( ..,
        Exclude,
        Include
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Ebu Tt DDestination Style Control
data EbuTtDDestinationStyleControl
  = EbuTtDDestinationStyleControl'
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

pattern Exclude :: EbuTtDDestinationStyleControl
pattern Exclude = EbuTtDDestinationStyleControl' "EXCLUDE"

pattern Include :: EbuTtDDestinationStyleControl
pattern Include = EbuTtDDestinationStyleControl' "INCLUDE"

{-# COMPLETE
  Exclude,
  Include,
  EbuTtDDestinationStyleControl'
  #-}

instance FromText EbuTtDDestinationStyleControl where
  parser = (EbuTtDDestinationStyleControl' . mk) <$> takeText

instance ToText EbuTtDDestinationStyleControl where
  toText (EbuTtDDestinationStyleControl' ci) = original ci

instance Hashable EbuTtDDestinationStyleControl

instance NFData EbuTtDDestinationStyleControl

instance ToByteString EbuTtDDestinationStyleControl

instance ToQuery EbuTtDDestinationStyleControl

instance ToHeader EbuTtDDestinationStyleControl

instance ToJSON EbuTtDDestinationStyleControl where
  toJSON = toJSONText

instance FromJSON EbuTtDDestinationStyleControl where
  parseJSON = parseJSONText "EbuTtDDestinationStyleControl"
