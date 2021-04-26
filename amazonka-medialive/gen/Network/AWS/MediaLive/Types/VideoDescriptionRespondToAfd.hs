{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaLive.Types.VideoDescriptionRespondToAfd
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.VideoDescriptionRespondToAfd
  ( VideoDescriptionRespondToAfd
      ( ..,
        VideoDescriptionRespondToAfdNONE,
        VideoDescriptionRespondToAfdPASSTHROUGH,
        VideoDescriptionRespondToAfdRESPOND
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Video Description Respond To Afd
newtype VideoDescriptionRespondToAfd = VideoDescriptionRespondToAfd'
  { fromVideoDescriptionRespondToAfd ::
      Prelude.Text
  }
  deriving
    ( Prelude.Eq,
      Prelude.Ord,
      Prelude.Read,
      Prelude.Show,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic
    )

pattern VideoDescriptionRespondToAfdNONE :: VideoDescriptionRespondToAfd
pattern VideoDescriptionRespondToAfdNONE = VideoDescriptionRespondToAfd' "NONE"

pattern VideoDescriptionRespondToAfdPASSTHROUGH :: VideoDescriptionRespondToAfd
pattern VideoDescriptionRespondToAfdPASSTHROUGH = VideoDescriptionRespondToAfd' "PASSTHROUGH"

pattern VideoDescriptionRespondToAfdRESPOND :: VideoDescriptionRespondToAfd
pattern VideoDescriptionRespondToAfdRESPOND = VideoDescriptionRespondToAfd' "RESPOND"

{-# COMPLETE
  VideoDescriptionRespondToAfdNONE,
  VideoDescriptionRespondToAfdPASSTHROUGH,
  VideoDescriptionRespondToAfdRESPOND,
  VideoDescriptionRespondToAfd'
  #-}

instance Prelude.FromText VideoDescriptionRespondToAfd where
  parser = VideoDescriptionRespondToAfd' Prelude.<$> Prelude.takeText

instance Prelude.ToText VideoDescriptionRespondToAfd where
  toText (VideoDescriptionRespondToAfd' x) = x

instance Prelude.Hashable VideoDescriptionRespondToAfd

instance Prelude.NFData VideoDescriptionRespondToAfd

instance Prelude.ToByteString VideoDescriptionRespondToAfd

instance Prelude.ToQuery VideoDescriptionRespondToAfd

instance Prelude.ToHeader VideoDescriptionRespondToAfd

instance Prelude.ToJSON VideoDescriptionRespondToAfd where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON VideoDescriptionRespondToAfd where
  parseJSON = Prelude.parseJSONText "VideoDescriptionRespondToAfd"
