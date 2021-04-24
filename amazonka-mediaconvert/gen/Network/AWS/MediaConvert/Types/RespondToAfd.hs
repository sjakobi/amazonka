{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.RespondToAfd
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.RespondToAfd
  ( RespondToAfd
      ( ..,
        RTANone,
        RTAPassthrough,
        RTARespond
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | Use Respond to AFD (RespondToAfd) to specify how the service changes the video itself in response to AFD values in the input. * Choose Respond to clip the input video frame according to the AFD value, input display aspect ratio, and output display aspect ratio. * Choose Passthrough to include the input AFD values. Do not choose this when AfdSignaling is set to (NONE). A preferred implementation of this workflow is to set RespondToAfd to (NONE) and set AfdSignaling to (AUTO). * Choose None to remove all input AFD values from this output.
data RespondToAfd = RespondToAfd' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern RTANone :: RespondToAfd
pattern RTANone = RespondToAfd' "NONE"

pattern RTAPassthrough :: RespondToAfd
pattern RTAPassthrough = RespondToAfd' "PASSTHROUGH"

pattern RTARespond :: RespondToAfd
pattern RTARespond = RespondToAfd' "RESPOND"

{-# COMPLETE
  RTANone,
  RTAPassthrough,
  RTARespond,
  RespondToAfd'
  #-}

instance FromText RespondToAfd where
  parser = (RespondToAfd' . mk) <$> takeText

instance ToText RespondToAfd where
  toText (RespondToAfd' ci) = original ci

instance Hashable RespondToAfd

instance NFData RespondToAfd

instance ToByteString RespondToAfd

instance ToQuery RespondToAfd

instance ToHeader RespondToAfd

instance ToJSON RespondToAfd where
  toJSON = toJSONText

instance FromJSON RespondToAfd where
  parseJSON = parseJSONText "RespondToAfd"
