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
-- Module      : Network.AWS.MediaConvert.Types.RespondToAfd
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.RespondToAfd
  ( RespondToAfd
      ( ..,
        RespondToAfdNONE,
        RespondToAfdPASSTHROUGH,
        RespondToAfdRESPOND
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Use Respond to AFD (RespondToAfd) to specify how the service changes the
-- video itself in response to AFD values in the input. * Choose Respond to
-- clip the input video frame according to the AFD value, input display
-- aspect ratio, and output display aspect ratio. * Choose Passthrough to
-- include the input AFD values. Do not choose this when AfdSignaling is
-- set to (NONE). A preferred implementation of this workflow is to set
-- RespondToAfd to (NONE) and set AfdSignaling to (AUTO). * Choose None to
-- remove all input AFD values from this output.
newtype RespondToAfd = RespondToAfd'
  { fromRespondToAfd ::
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

pattern RespondToAfdNONE :: RespondToAfd
pattern RespondToAfdNONE = RespondToAfd' "NONE"

pattern RespondToAfdPASSTHROUGH :: RespondToAfd
pattern RespondToAfdPASSTHROUGH = RespondToAfd' "PASSTHROUGH"

pattern RespondToAfdRESPOND :: RespondToAfd
pattern RespondToAfdRESPOND = RespondToAfd' "RESPOND"

{-# COMPLETE
  RespondToAfdNONE,
  RespondToAfdPASSTHROUGH,
  RespondToAfdRESPOND,
  RespondToAfd'
  #-}

instance Prelude.FromText RespondToAfd where
  parser = RespondToAfd' Prelude.<$> Prelude.takeText

instance Prelude.ToText RespondToAfd where
  toText (RespondToAfd' x) = x

instance Prelude.Hashable RespondToAfd

instance Prelude.NFData RespondToAfd

instance Prelude.ToByteString RespondToAfd

instance Prelude.ToQuery RespondToAfd

instance Prelude.ToHeader RespondToAfd

instance Prelude.ToJSON RespondToAfd where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON RespondToAfd where
  parseJSON = Prelude.parseJSONText "RespondToAfd"
