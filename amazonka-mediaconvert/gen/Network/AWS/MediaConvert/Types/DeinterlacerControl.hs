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
-- Module      : Network.AWS.MediaConvert.Types.DeinterlacerControl
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.DeinterlacerControl
  ( DeinterlacerControl
      ( ..,
        DeinterlacerControlFORCEALLFRAMES,
        DeinterlacerControlNORMAL
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | - When set to NORMAL (default), the deinterlacer does not convert frames
-- that are tagged in metadata as progressive. It will only convert those
-- that are tagged as some other type. - When set to FORCE_ALL_FRAMES, the
-- deinterlacer converts every frame to progressive - even those that are
-- already tagged as progressive. Turn Force mode on only if there is a
-- good chance that the metadata has tagged frames as progressive when they
-- are not progressive. Do not turn on otherwise; processing frames that
-- are already progressive into progressive will probably result in lower
-- quality video.
newtype DeinterlacerControl = DeinterlacerControl'
  { fromDeinterlacerControl ::
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

pattern DeinterlacerControlFORCEALLFRAMES :: DeinterlacerControl
pattern DeinterlacerControlFORCEALLFRAMES = DeinterlacerControl' "FORCE_ALL_FRAMES"

pattern DeinterlacerControlNORMAL :: DeinterlacerControl
pattern DeinterlacerControlNORMAL = DeinterlacerControl' "NORMAL"

{-# COMPLETE
  DeinterlacerControlFORCEALLFRAMES,
  DeinterlacerControlNORMAL,
  DeinterlacerControl'
  #-}

instance Prelude.FromText DeinterlacerControl where
  parser = DeinterlacerControl' Prelude.<$> Prelude.takeText

instance Prelude.ToText DeinterlacerControl where
  toText (DeinterlacerControl' x) = x

instance Prelude.Hashable DeinterlacerControl

instance Prelude.NFData DeinterlacerControl

instance Prelude.ToByteString DeinterlacerControl

instance Prelude.ToQuery DeinterlacerControl

instance Prelude.ToHeader DeinterlacerControl

instance Prelude.ToJSON DeinterlacerControl where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON DeinterlacerControl where
  parseJSON = Prelude.parseJSONText "DeinterlacerControl"
