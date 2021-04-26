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
-- Module      : Network.AWS.MediaConvert.Types.AlphaBehavior
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.AlphaBehavior
  ( AlphaBehavior
      ( ..,
        AlphaBehaviorDISCARD,
        AlphaBehaviorREMAPTOLUMA
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Ignore this setting unless this input is a QuickTime animation with an
-- alpha channel. Use this setting to create separate Key and Fill outputs.
-- In each output, specify which part of the input MediaConvert uses. Leave
-- this setting at the default value DISCARD to delete the alpha channel
-- and preserve the video. Set it to REMAP_TO_LUMA to delete the video and
-- map the alpha channel to the luma channel of your outputs.
newtype AlphaBehavior = AlphaBehavior'
  { fromAlphaBehavior ::
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

pattern AlphaBehaviorDISCARD :: AlphaBehavior
pattern AlphaBehaviorDISCARD = AlphaBehavior' "DISCARD"

pattern AlphaBehaviorREMAPTOLUMA :: AlphaBehavior
pattern AlphaBehaviorREMAPTOLUMA = AlphaBehavior' "REMAP_TO_LUMA"

{-# COMPLETE
  AlphaBehaviorDISCARD,
  AlphaBehaviorREMAPTOLUMA,
  AlphaBehavior'
  #-}

instance Prelude.FromText AlphaBehavior where
  parser = AlphaBehavior' Prelude.<$> Prelude.takeText

instance Prelude.ToText AlphaBehavior where
  toText (AlphaBehavior' x) = x

instance Prelude.Hashable AlphaBehavior

instance Prelude.NFData AlphaBehavior

instance Prelude.ToByteString AlphaBehavior

instance Prelude.ToQuery AlphaBehavior

instance Prelude.ToHeader AlphaBehavior

instance Prelude.ToJSON AlphaBehavior where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON AlphaBehavior where
  parseJSON = Prelude.parseJSONText "AlphaBehavior"
