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
-- Module      : Network.AWS.MediaConvert.Types.DashIsoSegmentControl
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.DashIsoSegmentControl
  ( DashIsoSegmentControl
      ( ..,
        DashIsoSegmentControlSEGMENTEDFILES,
        DashIsoSegmentControlSINGLEFILE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | When set to SINGLE_FILE, a single output file is generated, which is
-- internally segmented using the Fragment Length and Segment Length. When
-- set to SEGMENTED_FILES, separate segment files will be created.
newtype DashIsoSegmentControl = DashIsoSegmentControl'
  { fromDashIsoSegmentControl ::
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

pattern DashIsoSegmentControlSEGMENTEDFILES :: DashIsoSegmentControl
pattern DashIsoSegmentControlSEGMENTEDFILES = DashIsoSegmentControl' "SEGMENTED_FILES"

pattern DashIsoSegmentControlSINGLEFILE :: DashIsoSegmentControl
pattern DashIsoSegmentControlSINGLEFILE = DashIsoSegmentControl' "SINGLE_FILE"

{-# COMPLETE
  DashIsoSegmentControlSEGMENTEDFILES,
  DashIsoSegmentControlSINGLEFILE,
  DashIsoSegmentControl'
  #-}

instance Prelude.FromText DashIsoSegmentControl where
  parser = DashIsoSegmentControl' Prelude.<$> Prelude.takeText

instance Prelude.ToText DashIsoSegmentControl where
  toText (DashIsoSegmentControl' x) = x

instance Prelude.Hashable DashIsoSegmentControl

instance Prelude.NFData DashIsoSegmentControl

instance Prelude.ToByteString DashIsoSegmentControl

instance Prelude.ToQuery DashIsoSegmentControl

instance Prelude.ToHeader DashIsoSegmentControl

instance Prelude.ToJSON DashIsoSegmentControl where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON DashIsoSegmentControl where
  parseJSON = Prelude.parseJSONText "DashIsoSegmentControl"
