{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.Eac3LfeControl
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.Eac3LfeControl
  ( Eac3LfeControl
      ( ..,
        Lfe,
        NoLfe
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Eac3 Lfe Control
data Eac3LfeControl = Eac3LfeControl' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Lfe :: Eac3LfeControl
pattern Lfe = Eac3LfeControl' "LFE"

pattern NoLfe :: Eac3LfeControl
pattern NoLfe = Eac3LfeControl' "NO_LFE"

{-# COMPLETE
  Lfe,
  NoLfe,
  Eac3LfeControl'
  #-}

instance FromText Eac3LfeControl where
  parser = (Eac3LfeControl' . mk) <$> takeText

instance ToText Eac3LfeControl where
  toText (Eac3LfeControl' ci) = original ci

instance Hashable Eac3LfeControl

instance NFData Eac3LfeControl

instance ToByteString Eac3LfeControl

instance ToQuery Eac3LfeControl

instance ToHeader Eac3LfeControl

instance ToJSON Eac3LfeControl where
  toJSON = toJSONText

instance FromJSON Eac3LfeControl where
  parseJSON = parseJSONText "Eac3LfeControl"
